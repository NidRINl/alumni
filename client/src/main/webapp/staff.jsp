<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    session.setAttribute("lang", "zh-cn");
%>
<!DOCTYPE html>
<html lang="zh_cn">
<head>
    <meta charset="UTF-8">
    <title>员工风采</title>
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
        <div class="this-news">企业文化 | CULTURE</div>
        <ul class="news-menu">
            <li><a href="business.jsp"><span class="glyphicon glyphicon-play"></span>公司形象</a></li>
            <li><a href="business.jsp"><span class="glyphicon glyphicon-play"></span>集团理念</a></li>
            <li class="active"><a href="staff.jsp"><span class="glyphicon glyphicon-play"></span>员工风采</a></li>
        </ul>
    </div>
    <div class="news-right pull-right">
        <div class="guild">
            <div class="guild-main pull-left">员工风采</div>
            <div class="guild-sub pull-right text-right">
                <span class="glyphicon glyphicon-play"></span>
                <a href="index.jsp">首页</a>
                <span class="glyphicon glyphicon-play"></span>
                <a href="business.jsp">企业文化</a>
                <span class="glyphicon glyphicon-play"></span>
                <a href="staff.jsp">员工风采</a>
            </div>
        </div>
        <div class="main">
            <div class="branch-list">
                <a href="branchDetail.jsp">
                    <div class="branch-log pull-left"><img src="img/yg.png"> </div>
                    <div class="branch pull-left">
                        <div class="branch-name">姓名</div>
                        <div class="branch-attr">职务</div>
                        <div class="branch-con">开源移动分析应用 Countly v16.12 发布了。在 Countly 16.12 中，引入了性能，用户体验和可扩展性的功能增强……</div>
                    </div>
                    <div class="clearfix"></div>
                </a>
            </div>
            <div class="branch-list">
                <a href="branchDetail.jsp">
                    <div class="branch-log pull-left"><img src="img/yg.png"> </div>
                    <div class="branch pull-left">
                        <div class="branch-name">姓名</div>
                        <div class="branch-attr">职务</div>
                        <div class="branch-con">开源移动分析应用 Countly v16.12 发布了。在 Countly 16.12 中，引入了性能，用户体验和可扩展性的功能增强……</div>
                    </div>
                    <div class="clearfix"></div>
                </a>
            </div>
            <div class="branch-list">
                <a href="branchDetail.jsp">
                    <div class="branch-log pull-left"><img src="img/yg.png"> </div>
                    <div class="branch pull-left">
                        <div class="branch-name">姓名</div>
                        <div class="branch-attr">职务</div>
                        <div class="branch-con">开源移动分析应用 Countly v16.12 发布了。在 Countly 16.12 中，引入了性能，用户体验和可扩展性的功能增强……</div>
                    </div>
                    <div class="clearfix"></div>
                </a>
            </div>
            <div class="branch-list">
                <a href="branchDetail.jsp">
                    <div class="branch-log pull-left"><img src="img/yg.png"> </div>
                    <div class="branch pull-left">
                        <div class="branch-name">姓名</div>
                        <div class="branch-attr">职务</div>
                        <div class="branch-con">开源移动分析应用 Countly v16.12 发布了。在 Countly 16.12 中，引入了性能，用户体验和可扩展性的功能增强……</div>
                    </div>
                    <div class="clearfix"></div>
                </a>
            </div>
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