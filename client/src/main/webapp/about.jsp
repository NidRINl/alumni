<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    session.setAttribute("lang", "zh-cn");
%>
<!DOCTYPE html>
<html lang="zh_cn">
<head>
    <meta charset="UTF-8">
    <title>企业简介</title>
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
        <div class="this-news">关于我们 | NEWS</div>
        <ul class="news-menu">
            <li class="active"><a href="about.jsp"><span class="glyphicon glyphicon-play"></span>企业简介</a></li>
            <li><a href="history.jsp"><span class="glyphicon glyphicon-play"></span>发展历程</a></li>
            <li><a href="glory.jsp"><span class="glyphicon glyphicon-play"></span>获得荣誉</a></li>
            <li><a href="branch.jsp"><span class="glyphicon glyphicon-play"></span>下属公司</a></li>
        </ul>
    </div>
    <div class="news-right pull-right">
        <div class="guild">
            <div class="guild-main pull-left">企业简介</div>
            <div class="guild-sub pull-right text-right">
                <span class="glyphicon glyphicon-play"></span>
                <a href="index.jsp">首页</a>
                <span class="glyphicon glyphicon-play"></span>
                <a href="about.jsp">关于我们</a>
                <span class="glyphicon glyphicon-play"></span>
                <a href="about.jsp">企业简介</a>
            </div>
        </div>
        <div class="main">
            开源移动分析应用发布了。引入了性能，用户体验和可扩展性的功能增强开源移动分析应用发布了。引入了性能，用户
            体验和可扩展性的功能增强开源移动分析应用发布了。引入了性能，用户体验和可扩展性的功能增强，园内设施，院内设施
            开源移动分析应用发布了。引入了性能，用户体验和可扩展性的功能增强开源移动分析应用发布了。引入了性能，用户
            体验和可扩展性的功能增强开源移动分析应用发布了。引入了性能，用户体验和可扩展性的功能增强，园内设施，院内设施
            开源移动分析应用发布了。引入了性能，用户体验和可扩展性的功能增强开源移动分析应用发布了。引入了性能，用户
            体验和可扩展性的功能增强开源移动分析应用发布了。引入了性能，用户体验和可扩展性的功能增强，园内设施，院内设施
            开源移动分析应用发布了。引入了性能，用户体验和可扩展性的功能增强开源移动分析应用发布了。引入了性能，用户
            体验和可扩展性的功能增强开源移动分析应用发布了。引入了性能，用户体验和可扩展性的功能增强，园内设施，院内设施
            开源移动分析应用发布了。引入了性能，用户体验和可扩展性的功能增强开源移动分析应用发布了。引入了性能，用户
            体验和可扩展性的功能增强开源移动分析应用发布了。引入了性能，用户体验和可扩展性的功能增强，园内设施，院内设施
            开源移动分析应用发布了。引入了性能，用户体验和可扩展性的功能增强开源移动分析应用发布了。引入了性能，用户
            体验和可扩展性的功能增强开源移动分析应用发布了。引入了性能，用户体验和可扩展性的功能增强，园内设施，院内设施
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