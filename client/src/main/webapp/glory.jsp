<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    session.setAttribute("lang", "zh-cn");
%>
<!DOCTYPE html>
<html lang="zh_cn">
<head>
    <meta charset="UTF-8">
    <title>获得荣誉</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/sjz.css">
</head>
<body>

<jsp:include page="header.jsp"/>

<div class="news-banner">
    <img src="img/news_banner.png">
</div>
<div class="container">
    <div class="news-left pull-left">
        <div class="this-news">关于我们 | ABOUT</div>
        <ul class="news-menu">
            <li><a href="about.html"><span class="glyphicon glyphicon-play"></span>企业简介</a></li>
            <li><a href="history.html"><span class="glyphicon glyphicon-play"></span>发展历程</a></li>
            <li class="active"><a href="glory.html"><span class="glyphicon glyphicon-play"></span>获得荣誉</a></li>
            <li><a href="branch.html"><span class="glyphicon glyphicon-play"></span>下属公司</a></li>
        </ul>
    </div>
    <div class="news-right pull-right">
        <div class="guild">
            <div class="guild-main pull-left">获得荣誉</div>
            <div class="guild-sub pull-right text-right">
                <span class="glyphicon glyphicon-play"></span>
                <a href="index.html">首页</a>
                <span class="glyphicon glyphicon-play"></span>
                <a href="about.html">关于我们</a>
                <span class="glyphicon glyphicon-play"></span>
                <a href="glory.html">获得荣誉</a>
            </div>
        </div>
        <div class="main">
            <div class="row">
                <div class="col-md-6">
                    <div class="glory-img text-center"><img src="img/glory.png"></div>
                    <div class="glory-tit">2015获得省级先进集体</div>
                </div>
                <div class="col-md-6">
                    <div class="glory-img text-center"><img src="img/glory.png"></div>
                    <div class="glory-tit">2015获得省级先进集体</div>
                </div>
                <div class="col-md-6">
                    <div class="glory-img text-center"><img src="img/glory.png"></div>
                    <div class="glory-tit">2015获得省级先进集体</div>
                </div>
                <div class="col-md-6">
                    <div class="glory-img text-center"><img src="img/glory.png"></div>
                    <div class="glory-tit">2015获得省级先进集体</div>
                </div>
            </div>
        </div>
    </div>

</div>

<jsp:include page="footer.jsp"/>

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