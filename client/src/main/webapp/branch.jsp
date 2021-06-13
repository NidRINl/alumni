<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    session.setAttribute("lang", "zh-cn");
%>
<!DOCTYPE html>
<html lang="zh_cn">
<head>
    <meta charset="UTF-8">
    <title>下属公司</title>
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
            <li><a href="history.jsp"><span class="glyphicon glyphicon-play"></span>发展历程</a></li>
            <li><a href="glory.jsp"><span class="glyphicon glyphicon-play"></span>获得荣誉</a></li>
            <li class="active"><a href="branch.jsp"><span class="glyphicon glyphicon-play"></span>下属公司</a></li>
        </ul>
    </div>
    <div class="news-right pull-right">
        <div class="guild">
            <div class="guild-main pull-left">下属公司</div>
            <div class="guild-sub pull-right text-right">
                <span class="glyphicon glyphicon-play"></span>
                <a href="index.jsp">首页</a>
                <span class="glyphicon glyphicon-play"></span>
                <a href="about.jsp">关于我们</a>
                <span class="glyphicon glyphicon-play"></span>
                <a href="branch.jsp">下属公司</a>
            </div>
        </div>
        <div class="main">
            <div class="branch-list">
                <a href="branchDetail.jsp">
                    <div class="branch-log pull-left"><img src="img/branch.png"> </div>
                    <div class="branch pull-left">
                        <div class="branch-name">公司名称</div>
                        <div class="branch-attr">投资类企业</div>
                        <div class="branch-con">17素材网专注于提供免费素材下载,其内容涵盖设计素材,PSD素材,矢量素材,图片素材,图标素材,设计字体等免费素材.下载免费素材尽在17素……</div>
                    </div>
                    <div class="clearfix"></div>
                </a>
            </div>
            <div class="branch-list">
                <a href="branchDetail.jsp">
                    <div class="branch-log pull-left"><img src="img/branch.png"> </div>
                    <div class="branch pull-left">
                        <div class="branch-name">公司名称</div>
                        <div class="branch-attr">投资类企业</div>
                        <div class="branch-con">17素材网专注于提供免费素材下载,其内容涵盖设计素材,PSD素材,矢量素材,图片素材,图标素材,设计字体等免费素材.下载免费素材尽在17素……</div>
                    </div>
                    <div class="clearfix"></div>
                </a>
            </div>
            <div class="branch-list">
                <a href="branchDetail.jsp">
                    <div class="branch-log pull-left"><img src="img/branch.png"> </div>
                    <div class="branch pull-left">
                        <div class="branch-name">公司名称</div>
                        <div class="branch-attr">投资类企业</div>
                        <div class="branch-con">17素材网专注于提供免费素材下载,其内容涵盖设计素材,PSD素材,矢量素材,图片素材,图标素材,设计字体等免费素材.下载免费素材尽在17素……</div>
                    </div>
                    <div class="clearfix"></div>
                </a>
            </div>
            <div class="branch-list">
                <a href="branchDetail.jsp">
                    <div class="branch-log pull-left"><img src="img/branch.png"> </div>
                    <div class="branch pull-left">
                        <div class="branch-name">公司名称</div>
                        <div class="branch-attr">投资类企业</div>
                        <div class="branch-con">17素材网专注于提供免费素材下载,其内容涵盖设计素材,PSD素材,矢量素材,图片素材,图标素材,设计字体等免费素材.下载免费素材尽在17素……</div>
                    </div>
                    <div class="clearfix"></div>
                </a>
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