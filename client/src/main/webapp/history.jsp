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
            <li><a href="about.jsp"><span class="glyphicon glyphicon-play"></span>企业简介</a></li>
            <li class="active"><a href="history.jsp"><span class="glyphicon glyphicon-play"></span>发展历程</a></li>
            <li><a href="glory.jsp"><span class="glyphicon glyphicon-play"></span>获得荣誉</a></li>
            <li><a href="branch.jsp"><span class="glyphicon glyphicon-play"></span>下属公司</a></li>
        </ul>
    </div>
    <div class="news-right pull-right">
        <div class="guild">
            <div class="guild-main pull-left">发展历程</div>
            <div class="guild-sub pull-right text-right">
                <span class="glyphicon glyphicon-play"></span>
                <a href="index.jsp">首页</a>
                <span class="glyphicon glyphicon-play"></span>
                <a href="about.jsp">关于我们</a>
                <span class="glyphicon glyphicon-play"></span>
                <a href="history.jsp">发展历程</a>
            </div>
        </div>
        <div class="main">
            <div id="timeline">
                <div class="timeline-item">
                    <div class="timeline-icon">
                        <img src="img/history.png" alt="">
                    </div>
                    <div class="timeline-content">
                        <h2>2016</h2>
                        <p>17素材网专注于提供免费素材下载,其内容涵盖设计素材,PSD素材,矢量素材,图片素材,图标素材,设计字体等免费素材.下载免费素材尽在17素材网免费素材网</p>
                    </div>
                </div>

                <div class="timeline-item">
                    <div class="timeline-icon">
                        <img src="img/history.png" alt="">
                    </div>
                    <div class="timeline-content right">
                        <div class="clearfix"></div>
                        <h2>2015</h2>
                        <p>17素材网专注于提供免费素材下载,其内容涵盖设计素材,PSD素材,矢量素材,图片素材,图标素材,设计字体等免费素材.下载免费素材尽在17素材网免费素材网</p>
                    </div>
                </div>

                <div class="timeline-item">
                    <div class="timeline-icon">
                        <img src="img/history.png" alt="">
                    </div>
                    <div class="timeline-content">
                        <h2>2014</h2>
                        <p>17素材网专注于提供免费素材下载,其内容涵盖设计素材,PSD素材,矢量素材,图片素材,图标素材,设计字体等免费素材.下载免费素材尽在17素材网免费素材网</p>
                    </div>
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