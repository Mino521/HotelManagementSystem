<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath();
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <base href="<%=basePath %>">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Welcome to management system</title>
    <link href="<%=basePath %>/static/css/style.css" rel="stylesheet" type="text/css"/>
    <script language="JavaScript" src="<%=basePath %>/static/js/jquery-2.1.4.min.js"></script>
    <script src="<%=basePath %>/static/js/cloud.js" type="text/javascript"></script>

    <script language="javascript">
        $(function () {
            $('.loginbox').css({'position': 'absolute', 'left': ($(window).width() - 692) / 2});
            $(window).resize(function () {
                $('.loginbox').css({'position': 'absolute', 'left': ($(window).width() - 692) / 2});
            })
        });
    </script>

</head>

<body style="background-color:#df7611; background-image:url(<%=basePath %>/static/images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">

<div id="mainBody">
    <div id="cloud1" class="cloud"></div>
    <div id="cloud2" class="cloud"></div>
</div>

<div class="logintop">
    <span>Welcome</span>
</div>

<div class="loginbody">
    <span class="systemlogo"></span>
    <div class="loginbox">
        <form action="<%=basePath%>/login.do" method="post">
            <ul>
                <li><input name="username" type="text" class="loginuser" value="admin"
                           onclick="JavaScript:this.value=''"
                           pattern="\w{3,12}" required="required"
                           placeholder="A combination of 3-12 digit number, letter or underline"/>
                </li>
                <li><input name="password" type="password" class="loginpwd" value=""
                           onclick="JavaScript:this.value=''" pattern="\w{4,20}"
                           placeholder="A combination of 4-20 digit number, letter or underline"/></li>
                <li><input type="submit" class="loginbtn" value="Log in"/>
                    <label><input name="" type="checkbox" value="" checked="checked"/>Remember pwd</label>
                    <label><a href="#">forget pwd？</a></label></li>
            </ul>
        </form>
    </div>
</div>

</body

</html>
