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
            <li><a href="complain.jsp"><span class="glyphicon glyphicon-play"></span>投诉建议</a></li>
            <li class="active"><a href="contact.jsp"><span class="glyphicon glyphicon-play"></span>联系方式</a></li>
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
        <div class="complain-main">

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