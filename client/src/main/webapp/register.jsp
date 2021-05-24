<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    session.setAttribute("lang", "zh-cn");
%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="UTF-8">
    <title>表单验证</title>
    <style>
        .container {
            width: 1200px;
            margin: 200px auto;
        }

        .container > div {
            margin-bottom: 6px;
        }

        input {
            display: inline-block;
            border: 0;
            padding: 0;
            margin: 0;
        }

        #userName, #psd, #psd1 {
            width: 260px;
            height: 34px;
            border: 1px solid #ccc;
            padding: 0 10px;
            font-size: 18px;
            color: #ccc;
            outline: none
        }

        .count {
            height: 16px;
            line-height: 16px;
            font-size: 14px;
            color: #ccc;
            visibility: hidden;
            padding-left: 160px;
        }

        label {

            display: inline-block;
            width: 150px;
            text-align: right
        }

        .btn {
            display: inline-block;
            width: 160px;
            height: 40px;
            text-align: center;
            font-size: 16px;
            line-height: 40px;
            background: #e4393c;
            color: #fff;
            margin-left: 160px;
        }

        .strong p {
            margin-left: 158px;
            font-size: 0;
        }

        .strong p span {
            display: inline-block;
            font-weight: normal;
            font-style: normal;
            padding: 0;
            margin: 0;
            width: 94px;
            height: 20px;
            background: #f9d194;
            font-size: 13px;
            color: #fff;
            text-align: center;
            line-height: 20px;
        }

        .strong p span.hover {
            background: #f97101;
        }

        .strong p.active span:nth-child(2) {
            background: #f97101;
        }

        .strong p.active1 span {
            background: #f97101;
        }

        .unmInfo {
            display: none;
            font-size: 14px;
            color: #888;
        }

        .warn {
            display: inline-block;
            width: 22px;
            height: 22px;
            background: url("img/warn.png") no-repeat;
            background-size: 22px 22px;
            vertical-align: top;
        }

        .right {
            display: inline-block;
            width: 33px;
            height: 32px;
            background: url("img/right.png") no-repeat;
            background-size: 22px 22px;
            vertical-align: top;
        }

        .wrong {
            display: inline-block;
            width: 33px;
            height: 32px;
            background: url("img/wrong.png") no-repeat;
            background-size: 22px 22px;
            vertical-align: top;
        }

        .psdInfo {
            display: none;
            font-size: 14px;
            color: #888;
        }

        .psd1Info {
            display: none;
            font-size: 14px;
            color: #888;
        }

        .btn-wrapper {
            margin-top: 15px;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="userName-wrapper">
        <label for="userName">会员名:</label>
        <input type="text" id="userName">
        <span class="unmInfo"><i class="warn"></i></span>
    </div>
    <div class="count"></div>

    <div class="passWord-wrapper">
        <label for="psd">登录密码:</label>
        <input type="password" id="psd">
        <span class="psdInfo"></span>
    </div>
    <div class="strong">
        <p class="fl">
            <span class="hover">弱</span>
            <span class="">中</span>
            <span class="">强</span>
        </p>
    </div>
    <div class="passWord1-wrapper">
        <label for="psd1">确认密码:</label>
        <input type="password" id="psd1" disabled="">
        <span class="psd1Info"></span>
    </div>
    <div class="btn-wrapper">
        <input type="button" class="btn" value="同意协议并注册">
    </div>
</div>
<script>
    function findStr(str, n) {
        var temp = 0;
        for (var i = 0; i < str.length; i++) {
            if (str.charAt(i) == n) {
                temp++;
            }
        }
        return temp;
    }
    window.onload = function () {
        var userName = document.getElementById("userName");
        var psd = document.getElementById("psd");
        var psd1 = document.getElementById("psd1");
        var unmInfo = document.getElementsByClassName('unmInfo')[0];
        var count = document.getElementsByClassName('count')[0];
        var psdInfo = document.getElementsByClassName('psdInfo')[0];
        var psd1Info = document.getElementsByClassName('psd1Info')[0];
        var fl = document.getElementsByClassName("fl")[0];
        var name_length = 0;
        var reg = /[^\w\u4e00-\u9fa5]/g;
        var re_n = /[^\d]/g;
        var re_t = /[^a-zA-Z]/g;
        userName.onfocus = function () {
            unmInfo.style.display = "inline-block";
            unmInfo.innerHTML = '<i class="warn"></i> 5-25个字符，一个汉字两个字符，推荐使用中文会员名。'
        };
        userName.onkeyup = function () {
            count.style.visibility = "visible";
            name_length = getLength(this.value);
            count.innerHTML = name_length + "个字符";
            if (name_length == 0) {
                count.style.visibility = "hidden";
            }
        };
        userName.onblur = function () {
            if (reg.test(this.value)) {
                unmInfo.innerHTML = '<i class="wrong"></i>含有非法字符';
            } else if (this.value == "") {
                unmInfo.innerHTML = '<i class="wrong"></i>不能为空';
            } else if (name_length > 25) {
                unmInfo.innerHTML = '<i class="wrong"></i>长度超过25个字符';
            } else if (name_length < 6) {
                unmInfo.innerHTML = '<i class="wrong"></i>长度少于6个字符';
            } else {
                unmInfo.innerHTML = '<i class="right"></i>OK!';
            }
        };

        psd.onfocus = function () {
            psdInfo.style.display = "inline-block";
            psdInfo.innerHTML = '<i class="warn"></i> 6-16个字符，请使用字母加数字或者符号，不能单独使用字母 数字或者字符。';
        };
        psd.onkeyup = function () {
            if (this.value.length > 5) {
                fl.className = "active";
                psd1.removeAttribute("disabled");
                psd1Info.style.display = "inline-block";
                psd1Info.innerHTML = '<i class="warn"></i> 再输入一次';
            } else {
                fl.className = "";
                psd1.setAttribute("disabled", "disabled");
                psd1Info.style.display = "none";
                psd1.value = "";
            }
            if (this.value.length > 10) {
                fl.className = "active1";
            } else {
                fl.className = "";
                psd1.value = "";
            }

        };
        psd.onblur = function () {
            var m = findStr(this.value, this.value[0]);
            if (this.value == "") {
                psdInfo.innerHTML = '<i class="wrong"></i> 不能为空';
            } else if (m == this.value.length) {
                console.log(1);
                psdInfo.innerHTML = '<i class="wrong"></i> 不能有相同字符';
            } else if (this.value.length < 6 || this.value.length > 16) {
                psdInfo.innerHTML = '<i class="wrong"></i> 长度应为6-16个字符';
            } else if (!re_n.test(this.value)) {
                psdInfo.innerHTML = '<i class="wrong"></i> 不能全为数字';
            } else if (!re_t.test(this.value)) {
                psdInfo.innerHTML = '<i class="wrong"></i> 不能全为字母';
            } else {
                psdInfo.innerHTML = '<i class="right"></i> OK';
            }
        };

        psd1.onblur = function () {
            if (this.value != psd.value) {
                psd1Info.innerHTML = '<i class="wrong"></i> 两次输入的密码不一致';
            } else {
                psd1Info.innerHTML = '<i class="right"></i> OK';
            }
        }
    };
    function getLength(str) {
        return str.replace(/[^\x00-xff]/g, "xx").length;
    }
</script>
</body>
</html>