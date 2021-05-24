<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    session.setAttribute("lang", "zh-cn");
%>
<!DOCTYPE html>
<html lang="zh_cn">
<head>
    <meta charset="UTF-8">
    <title>投诉建议</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/slt.css">
</head>
<body>

<jsp:include page="header.jsp"/>

<div class="news-banner">
    <img src="img/news_banner.png">
</div>
<div class="container">
    <div class="news-left pull-left">
        <div class="this-news">联系我们 | CONTACT</div>
        <ul class="news-menu">
            <li><a href="statement.jsp"><span class="glyphicon glyphicon-play"></span>法律声明</a></li>
            <li class="active"><a href="complain.jsp"><span class="glyphicon glyphicon-play"></span>投诉建议</a></li>
            <li><a href="contact.jsp"><span class="glyphicon glyphicon-play"></span>联系方式</a></li>
        </ul>
    </div>
    <div class="news-right pull-right">
        <div class="guild">
            <div class="guild-main pull-left">投诉建议</div>
            <div class="guild-sub pull-right text-right">
                <span class="glyphicon glyphicon-play"></span>
                <a href="index.jsp">首页</a>
                <span class="glyphicon glyphicon-play"></span>
                <a href="statement.jsp">联系我们</a>
                <span class="glyphicon glyphicon-play"></span>
                <a href="complain.jsp">投诉建议</a>
            </div>
        </div>
        <div class="news-content-title">
            <h3>投诉建议</h3>
        </div>
        <div class="complain-main">
            <p>感谢您留下宝贵建议，我们将努力改进变得更好！</p>
            <form class="form-horizontal" role="form">
                <div class="form-group">
                    <label class="col-sm-2 text-right">问题类别：</label>
                    <div class="col-sm-4">
                        <select class="form-control">
                            <option>建议</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 text-right">所在省份：</label>
                    <div class="col-sm-3">
                        <select class="form-control">
                            <option>请选择</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                        </select>
                    </div>
                    <div class="col-sm-3">
                        <select class="form-control">
                            <option>请选择</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="tel" class="col-sm-2 control-label">电话：</label>
                    <div class="col-sm-5">
                        <input type="text" class="form-control" name="tel" id="tel" placeholder="请填写有效的手机或电话号码">
                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-sm-2 control-label">Email：</label>
                    <div class="col-sm-6">
                        <input type="email" class="form-control" name="email" id="email" placeholder="请填写真实邮箱，以便我们及时联系到您">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">内容：</label>
                    <div class="col-sm-8">
                        <textarea class="form-control" rows="6" placeholder="请输入您的意见或建议"></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-warning">提交</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

</div>

<div class="footer">
    <div class="container">
        <div class="foot-left pull-left">
            <div class="company">
                <a href="#">联系我们</a>|
                <a href="#">网站地图</a>|
                <a href="#">RSS订阅</a>|
                <a href="#">常见问题</a>|
                <a href="#">互动交流</a>|
                <a href="#">隐私说明</a>|
                <a href="#">法律声明</a>
            </div>
            <div class="company">公司名称公司名称公司名称 版权所有 陕备案-0213456号</div>
            <div class="company">公司地址：公司地址公司地址公司地址公司地址 联系电话：034-34564598</div>
        </div>
        <div class="foot-right pull-left">
            公司名称公司名称公司名称
        </div>
        <div class="clearfix"></div>
    </div>
</div>

<script src="js/jquery-1.11.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript">
    $('.nav-list li').hover(function() {
        $(this).children('.subnav').css('display', 'block');
    }, function() {
        $(this).children('.subnav').css('display', 'none');
    });
</script>
</body>
</html>