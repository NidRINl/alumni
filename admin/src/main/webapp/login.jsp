<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    session.setAttribute("lang", "zh-cn");
%>
<script>
    function queryFun() {
        var userName = $("#userName").val();
        var password = $("#password").val();

        if (userName == null) {
            alert("登录账号不能为空");
        }
        if (password == null) {
            alert("登录密码不能为空");
        }
        document.getElementById("loinForm").action = "../user/adminLogin.do?username=" + userName + "&password=" + password;
        document.getElementById("queryForm").submit();
    }
</script>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>登录界面</title>

    <link rel="stylesheet" type="text/css" href="css/style.css"/>
    <link rel="stylesheet" type="text/css" href="css/animate.css"/>

    <script type="text/javascript" src="js/login.js"></script>
    <script type="text/javascript" src="js/jquery.min.js"></script>

</head>

<body>

<canvas id="christmasCanvas" style="top: 0px; left: 0px; z-index: 5000; position: fixed; pointer-events: none;"
        width="1285" height="100%"></canvas>

<script type="text/javascript">
    var snow = function () {
        if (1 == 1) {
            $("body").append('<canvas id="christmasCanvas" style="top: 0px; left: 0px; z-index: 5000; position: fixed; pointer-events: none;"></canvas>');
            var b = document.getElementById("christmasCanvas"), a = b.getContext("2d"), d = window.innerWidth, c = window.innerHeight;
            b.width = d;
            b.height = c;
            for (var e = [], b = 0; b < 70; b++) {
                e.push({x: Math.random() * d, y: Math.random() * c, r: Math.random() * 4 + 1, d: Math.random() * 70})
            }
            var h = 0;
            window.intervral4Christmas = setInterval(function () {
                a.clearRect(0, 0, d, c);
                a.fillStyle = "rgba(255, 255, 255, 0.6)";
                a.shadowBlur = 5;
                a.shadowColor = "rgba(255, 255, 255, 0.9)";
                a.beginPath();
                for (var b = 0; b < 70; b++) {
                    var f = e[b];
                    a.moveTo(f.x, f.y);
                    a.arc(f.x, f.y, f.r, 0, Math.PI * 2, !0)
                }
                a.fill();
                h += 0.01;
                for (b = 0; b < 70; b++) {
                    if (f = e[b], f.y += Math.cos(h + f.d) + 1 + f.r / 2, f.x += Math.sin(h) * 2, f.x > d + 5 || f.x < -5 || f.y > c) {
                        e[b] = b % 3 > 0 ? {x: Math.random() * d, y: -10, r: f.r, d: f.d} : Math.sin(h) > 0 ? {
                                    x: -5,
                                    y: Math.random() * c,
                                    r: f.r,
                                    d: f.d
                                } : {x: d + 5, y: Math.random() * c, r: f.r, d: f.d}
                    }
                }
            }, 70)
        }
    }
    snow();

</script>

<h2 align="center">登陆界面</h2>

<div class="login_frame"></div>

<div class="LoginWindow">
    <div>
        <div class="login">
            <form id="loginForm" check="userController.do?checkuser" role="form" action="/user/adminLogin.do?username="
                  +username+
            "&password="+password method="post">
            <p><input type="text" name="username" id="username" placeholder="用户名" value=""></p>
            <p><input type="password" name="password" id="password" placeholder="密码" value=""></p>
            <p class="login-submit">
                <button type="submit" class="login-button" id="submit">登录</button>
            </p>
            </form>
        </div>
        <p class="registration  btn" id="regiest"><a>快速注册</a></p>
    </div>
</div>


<div class="box">
    <div class="regiest">
        <p><input type="text" id="name" placeholder="用户名"></p>
        <p><input type="text" id="sex" placeholder="性别"></p>
        <p><input type="text" id="age" placeholder="年龄"></p>
        <p><input type="text" id="department" placeholder="学院"></p>
        <p><input type="text" id="classes" placeholder="班级"></p>
        <p><input type="text" id="studentId" placeholder="学号"></p>
        <p><input type="text" id="qq" placeholder="qq"></p>
        <p><input type="text" id="Email" placeholder="Email"></p>
        <p><input type="password" id="password2" placeholder="密码"></p>
        <p><input type="password" id="password1" placeholder="确认密码"></p>
        <div id="btn2">
            <ul>
                <li><input type="button" value="关闭" class="colse"/></li>
                <li><input type="button" value="提交" class="sumbmit"/></li>
            </ul>
        </div>
    </div>
</div>

<div id="timeArea">
    <script type="text/javascript">LoadBlogParts();</script>
</div>

<script type="text/javascript">
    $(function () {
        $(".btn").click(function () {
            var left = ($(window).width() * (1 - 0.35)) / 2;//box弹出框距离左边的额距离
            var height = ($(window).height() * (1 - 0.5)) / 2;

            $(".box").addClass("animated bounceIn").show().css({left: left, top: top});
            $(".opacity_bg").css("opacity", "0.3").show();
        });


        $(".colse").click(function () {

            var left = ($(window).width() * (1 - 0.35)) / 2;
            var top = ($(window).height() * (1 - 0.5)) / 2;
            $(".box").show().animate({
                width: "-$(window).width()*0.35",
                height: "-$(window).height()*0.5",
                left: "-" + left + "px",
                top: "-" + top + "px"
            }, 1000, function () {
                var width1 = $(window).width() * 0.35;
                var height1 = $(window).height() * 0.5;
                console.log(width1);
                $(this).css({width: width1, height: height1}).hide();
            });

        });
    });
</script>

</body>
</html>