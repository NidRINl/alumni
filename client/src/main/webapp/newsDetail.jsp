<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    session.setAttribute("lang", "zh-cn");
%>
<!DOCTYPE html>
<html lang="zh_cn">
<head>
    <meta charset="UTF-8">
    <title>新闻详情</title>
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
        <div class="this-news">新闻聚焦 | NEWS</div>
        <ul class="news-menu">
            <li class="active"><a href="news.jsp"><span class="glyphicon glyphicon-play"></span>集团新闻</a></li>
            <li><a href="news.jsp"><span class="glyphicon glyphicon-play"></span>最新动态</a></li>
            <li><a href="news.jsp"><span class="glyphicon glyphicon-play"></span>媒体报道</a></li>
            <li><a href="news2.jsp"><span class="glyphicon glyphicon-play"></span>通知公告</a></li>
        </ul>
    </div>
    <div class="news-right pull-right">
        <div class="guild">
            <div class="guild-main pull-left">集团新闻</div>
            <div class="guild-sub pull-right text-right">
                <span class="glyphicon glyphicon-play"></span>
                <a href="index.jsp">首页</a>
                <span class="glyphicon glyphicon-play"></span>
                <a href="news.jsp">新闻聚焦</a>
                <span class="glyphicon glyphicon-play"></span>
                <a href="news.jsp">集团新闻</a>
            </div>
        </div>
        <div class="news-content-title">
            <h3>开源移动分析应用发布了</h3>
            <div class="push-time">发布时间：2016-12-12 阅读次数：63</div>
        </div>
        <div class="news-main">
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