<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    session.setAttribute("lang", "zh-cn");
%>
<!DOCTYPE html>
<html lang="zh_cn">
<head>
    <meta charset="UTF-8">
    <title>首页client</title>

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/slt.css">
</head>
<body>

<jsp:include page="header.jsp"/>

<div>
    <div class="index-tit">
        <div class="index-tit-text">
            <h3>走进产业园</h3>
            <span>Our Portfolio</span>
        </div>
    </div>
    <div class="container">
        <div class="index-content">开源移动分析应用 Countly v16.12 发布了。在 Countly 16.12 中，引入了性能，用户体验和可扩展性的功能增强，使 Countly
            成为分析市场的最前沿，成为移动和 Web 应用程序事实上的开源分析标准。
        </div>
        <div class="hot-img">
            <div class="slt-banner">
                <ul>
                </ul>
                <ol>
                </ol>
                <i class="left"></i><i class="right"></i>
            </div>
        </div>
    </div>
</div>

<div>
    <div class="index-tit">
        <div class="index-tit-text">
            <h3>新闻聚焦</h3>
            <span>Focusing</span>
        </div>
    </div>
    <div class="container">
        <div class="index-content">
            <div class="content-left pull-left">
                <div class="content-title"><img src="img/content1.png"></div>
                <div class="content-left-list">
                    <div class="left-list">
                        <a href="newsDetail.jsp">
                            <div class="list-data pull-left">
                                <div class="data">27</div>
                                <span>AUG</span>
                                <span>2016</span>
                            </div>
                            <div class="list-text pull-right">开源移动分析应用 Countly v16.12 发布了。引入了性能，用户体验和可扩展性的功能增强……</div>
                        </a>
                        <div class="clearfix"></div>
                    </div>
                    <div class="left-list">
                        <a href="newsDetail.jsp">
                            <div class="list-data pull-left">
                                <div class="data">27</div>
                                <span>AUG</span>
                                <span>2016</span>
                            </div>
                            <div class="list-text pull-right">使 Countly 成为分析市场的最前沿，成为移动和 Web 应用程序事实上的开源分析标准……</div>
                        </a>
                        <div class="clearfix"></div>
                    </div>
                    <div class="left-list">
                        <a href="newsDetail.jsp">
                            <div class="list-data pull-left">
                                <div class="data">27</div>
                                <span>AUG</span>
                                <span>2016</span>
                            </div>
                            <div class="list-text pull-right">开源移动分析应用 Countly v16.12 发布了。引入了性能，用户体验和可扩展性的功能增强……</div>
                        </a>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <div class="content-right pull-right">
                <div class="content-title"><img src="img/content2.png"></div>
                <div class="content-right-hot">
                    <a href="newsDetail.jsp">
                        <div class="hot-left pull-left">
                            <div class="right-data">AUG,23,2016</div>
                            <div class="right-tit">开源移动分析应用发布了……</div>
                            <div class="right-con">开源移动分析应用 发布了。引入了性能，用户体验和可扩展性的功能增强……</div>
                        </div>
                        <div class="hot-right pull-right">
                            <img src="img/test.png">
                        </div>
                    </a>
                    <div class="clearfix"></div>
                </div>
                <div class="left-list">
                    <a href="newsDetail.jsp">
                        <div class="list-data pull-left">
                            <div class="data">27</div>
                            <span>AUG</span>
                            <span>2016</span>
                        </div>
                        <div class="right-list-text pull-right">开源移动分析应用发布了。引入了性能，用户体验和可扩展性的功能增强……</div>
                    </a>
                    <div class="clearfix"></div>
                </div>

            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>

<jsp:include page="footer.jsp"/>

<script src="js/jquery-1.11.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript">
    $('.nav-list li').hover(function () {
        $(this).children('.subnav').css('display', 'block');
    }, function () {
        $(this).children('.subnav').css('display', 'none');
    });


    $(function () { //页面加载完毕才执行

        //=========设置参数==========
        //图片统一高度：
        var images_height = '615px';
        //图片路径/链接(数组形式):
        var images_url = [
            'img/1.png',
            'img/1.png',
            'img/1.png'
        ];
        var images_count = images_url.length;
        console.log(images_count);

        //创建节点
        //图片列表节点
        for (var j = 0; j < images_count + 1; j++) {
            $('.slt-banner ul').append('<li></li>')
        }
        //轮播圆点按钮节点
        for (var j = 0; j < images_count; j++) {
            if (j == 0) {
                $('.slt-banner ol').append('<li class="current"></li>')
            } else {
                $('.slt-banner ol').append('<li></li>')
            }
        }
        //载入图片
        $('.slt-banner ul li').css('background-image', 'url(' + images_url[0] + ')');
        $.each(images_url, function (key, value) {
            $('.slt-banner ul li').eq(key).css('background-image', 'url(' + value + ')');
        });
        $('.slt-banner').css('height', images_height);
        $('.slt-banner ul').css('width', (images_count + 1) * 100 + '%');
        $('.slt-banner ol').css('margin-left', -images_count * 20 * 0.5 - 10 + 'px');

        //=========================

        var num = 0;
        //获取窗口宽度
        var window_width = 1200;
        $(window).resize(function () {
            window_width = 1200;
            $('.slt-banner ul li').css({width: window_width});
            clearInterval(timer);
            nextPlay();
            timer = setInterval(nextPlay, 2000);
        });
        //console.log(window_width);
        $('.slt-banner ul li').width(window_width);
        //轮播圆点
        $('.slt-banner ol li').mouseover(function () {//用hover的话会有两个事件(鼠标进入和离开)
            $(this).addClass('current').siblings().removeClass('current');
            //第一张图： 0 * window_width
            //第二张图： 1 * window_width
            //第三张图： 2 * window_width
            //获取当前编号
            var i = $(this).index();
            //console.log(i);
            $('.slt-banner ul').stop().animate({left: -i * window_width}, 500);
            num = i;
        });
        //自动播放
        var timer = null;

        function prevPlay() {
            num--;
            if (num < 0) {
                //悄悄把图片跳到最后一张图(复制页,与第一张图相同),然后做出图片播放动画，left参数是定位而不是移动的长度
                $('.slt-banner ul').css({left: -window_width * images_count}).stop().animate({left: -window_width * (images_count - 1)}, 500);
                num = images_count - 1;
            } else {
                //console.log(num);
                $('.slt-banner ul').stop().animate({left: -num * window_width}, 500);
            }
            if (num == images_count - 1) {
                $('.slt-banner ol li').eq(images_count - 1).addClass('current').siblings().removeClass('current');
            } else {
                $('.slt-banner ol li').eq(num).addClass('current').siblings().removeClass('current');

            }
        }

        function nextPlay() {
            num++;
            if (num > images_count) {
                //播放到最后一张(复制页)后,悄悄地把图片跳到第一张,因为和第一张相同,所以难以发觉,
                $('.slt-banner ul').css({left: 0}).stop().animate({left: -window_width}, 500);
                //css({left:0})是直接悄悄改变位置，animate({left:-window_width},500)是做出移动动画
                //随后要把指针指向第二张图片,表示已经播放至第二张了。
                num = 1;
            } else {
                //在最后面加入一张和第一张相同的图片，如果播放到最后一张，继续往下播，悄悄回到第一张(肉眼看不见)，从第一张播放到第二张
                //console.log(num);
                $('.slt-banner ul').stop().animate({left: -num * window_width}, 500);
            }
            if (num == images_count) {
                $('.slt-banner ol li').eq(0).addClass('current').siblings().removeClass('current');
            } else {
                $('.slt-banner ol li').eq(num).addClass('current').siblings().removeClass('current');

            }
        }

        timer = setInterval(nextPlay, 2000);
        //鼠标经过slt-banner，停止定时器,离开则继续播放
        $('.slt-banner').mouseenter(function () {
            clearInterval(timer);
            //左右箭头显示(淡入)
            $('.slt-banner i').fadeIn();
        }).mouseleave(function () {
            timer = setInterval(nextPlay, 2000);
            //左右箭头隐藏(淡出)
            $('.slt-banner i').fadeOut();
        });
        //播放下一张
        $('.slt-banner .right').click(function () {
            nextPlay();
        });
        //返回上一张
        $('.slt-banner .left').click(function () {
            prevPlay();
        });
    });
</script>
</body>
</html>