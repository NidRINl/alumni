<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  session.setAttribute("lang","zh-cn");
%>
<!DOCTYPE html>

<html lang="en">
<head>
  <title>物联网管理平台</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet"   href="plug-in/login/css/login.css" />
</head>
<body >

<div id="loginPlat">
<form id="loinForm"   check="loginController.do?checkuser"  role="form" action="loginController.do?login1"  method="post">
	<div id="register">
		<div id="register1">
			<p style="margin-left:36px;font-size:30px;margin-top: 0px;margin-bottom:10px;">物联服务管理平台</p>
		</div>
		<div id="registContent">
			<div id="Accountname">
					<div  role="alert" id="errMsgContiner">
					  <div id="showErrMsg"></div>
					</div>
				<input type="text" placeholder="请输入账户名称" id="userName" name="userName" tabindex="1" value=""><span></span>
			</div>
			<div id="Accountpassword">
				<input  type="password" placeholder="请输入账户密码" name="password" id="password" value="" tabindex="2"><span></span>
			</div>
			<div id="passwordonoff">
			
			<span id="on_off" name="remember"  class="cbox" onclick="this.className=/checked/ig.test(this.className)?this.className.replace('checked',''):(this.className+' checked')" iscookie="true" ></span>
				<em>记住用户名</em>
				<a href="javascript:void(0);"  onclick="getPassword()">忘记密码？</a>
			</div>
			<div id="codema">
				<input type="text" placeholder="请输入验证码" id="randCode" name="randCode" tabindex="3">
				<img id="randCodeImage" src="randCodeImage"  /></span>
			</div>
			<button type="button" id="logbtn"   onclick="checkUser()">登录</button>
			<p id="linePoint"><i></i><span></span><i></i></p>
			<p id="zhushi">&copy;&nbsp;尚通科技（北京）版权所有</p>
		</div>
	</div>
</form>
</div>



<script type="text/javascript" src="plug-in/jquery/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="plug-in/jquery/jquery.cookie.js"></script>
<script type="text/javascript" src="plug-in/mutiLang/en.js"></script>
<script type="text/javascript" src="plug-in/mutiLang/zh-cn.js"></script>
<script type="text/javascript" src="plug-in/login/js/jquery.tipsy.js"></script>
<script type="text/javascript" src="plug-in/login/js/iphone.check.js"></script>
<script type="text/javascript">
	$(function(){
		optErrMsg();
		getCookie();
	});
	$("#errMsgContiner").hide();
	function optErrMsg(){
		$("#showErrMsg").html('');
		$("#errMsgContiner").hide();
	}

   //输入验证码，回车登录
  $(document).keydown(function(e){
  	if(e.keyCode == 13) {
  		$("#logbtn").click();
  	}
  });

  //验证用户信息
  function checkUser(){
    if(!validForm()){
      return false;
    }
    newLogin();
  }
  //表单验证
  function validForm(){
    if($.trim($("#userName").val()).length==0){
      showErrorMsg("请输入用户名");
      return false;
    }

    if($.trim($("#password").val()).length==0){
      showErrorMsg("请输入密码");
      return false;
    }

    if($.trim($("#randCode").val()).length==0){
      showErrorMsg("请输入验证码");
      return false;
    }
    return true;
  }
  
  function getPassword()
  {
  
  	window.open("loginController.do?getPassword")
  }

  //登录处理函数
  function newLogin(orgId) {
	  setCookie()
	  var a=document.getElementById("on_off");
	  a.className = a.className.replace(' checked','');
    var actionurl=$('form').attr('action');//提交路径
    var checkurl=$('form').attr('check');//验证路径
    var formData = new Object();
    var data=$(":input").each(function() {
      formData[this.name] =$("#"+this.name ).val();
    });
    formData['orgId'] = orgId ? orgId : "";
    //语言
    formData['langCode']=$("#langCode").val();
    formData['langCode'] = $("#langCode option:selected").val();
    $.ajax({
      async : false,
      cache : false,
      type : 'POST',
      url : checkurl,// 请求的action路径
      data : formData,
      error : function() {// 请求失败处理函数
      },
      success : function(data) {
        var d = $.parseJSON(data);
        if (d.success) {
          if (d.attributes.orgNum > 1) {
          	  //用户拥有多个部门，需选择部门进行登录
        	  var title, okButton;
              if($("#langCode").val() == 'en') {
                title = "Please select Org";
                okButton = "Ok";
              } else {
                title = "请选择组织机构";
                okButton = "确定";
              }
            $.dialog({
              id: 'LHG1976D',
              title: title,
              max: false,
              min: false,
              drag: false,
              resize: false,
              content: 'url:userController.do?userOrgSelect&userId=' + d.attributes.user.id,
              lock:true,
              button : [ {
                name : okButton,
                focus : true,
                callback : function() {
                  iframe = this.iframe.contentWindow;
                  var orgId = $('#orgId', iframe.document).val();
                  formData['orgId'] = orgId ? orgId : "";
                  $.ajax({
              		async : false,
              		cache : false,
              		type : 'POST',
              		url : 'loginController.do?changeDefaultOrg',// 请求的action路径
              		data : formData,
              		error : function() {// 请求失败处理函数
              		},
              		success : function(data) {
              			window.location.href = actionurl;
              		}
                  });
                  this.close();
                  return false;
                }
              }],
              close: function(){
                setTimeout("window.location.href='"+actionurl+"'", 10);
              }
            });
          } else {
            window.location.href = actionurl;
          }
       } else {
			showErrorMsg(d.msg);
        }
      }
    });
  }
  //登录提示消息显示
  function showErrorMsg(msg){
    $("#errMsgContiner").show();
    $("#showErrMsg").html(msg);
    window.setTimeout(optErrMsg,3000); 
  }
  /**
   * 刷新验证码
   */
$('#randCodeImage').click(function(){
    reloadRandCodeImage();
});
function reloadRandCodeImage() {
    var date = new Date();
    var img = document.getElementById("randCodeImage");
    img.src='randCodeImage?a=' + date.getTime();
}
//设置cookie
function setCookie(){
	var a=document.getElementById("on_off");
	if(a.className=='cbox checked'){
		a.className = a.className.replace(' checked','')
		$("span[iscookie='true']").each(function() {
			$.cookie("COOKIE_NAME",$("#userName").val(), "/",24);
		});
		
	}else{
		
		a.className = a.className + ' checked';
		$("span[iscookie='true']").each(function() {
			$.cookie("COOKIE_NAME",null);
			
		});
	}
}
//读取cookie
function getCookie()
{
	var a=document.getElementById("on_off");
	var COOKIE_NAME=$.cookie("COOKIE_NAME");
	if (COOKIE_NAME !=null) {
	$("span[iscookie='true']").each(function() {
			
			$($("#userName").val( $.cookie("COOKIE_NAME")));
            if("admin" == $.cookie(this.userName)) {
                $("#randCode").focus();
            } else {
            	
                
            }
        });
		$("#password").val("");
        $("#password").focus();
		a.className = a.className + ' checked';
	} 
	else
	{
	  a.className = a.className.replace(' checked','')
      $("#userName").focus();
	}
}

</script>
</body>
</html>