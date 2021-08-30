<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <base href="<%=basePath %>">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>System main menu</title>
    <link href="<%=basePath %>/static/css/style.css" rel="stylesheet" type="text/css"/>
    <script language="JavaScript" src="<%=basePath %>/static/js/jquery-2.1.4.min.js"></script>
    <script type="text/javascript">
        $(function () {
            //导航切换
            $(".menuson .header").click(function () {
                var $parent = $(this).parent();
                $(".menuson>li.active").not($parent).removeClass("active open").find('.sub-menus').hide();

                $parent.addClass("active");
                if (!!$(this).next('.sub-menus').size()) {
                    if ($parent.hasClass("open")) {
                        $parent.removeClass("open").find('.sub-menus').hide();
                    } else {
                        $parent.addClass("open").find('.sub-menus').show();
                    }

                }
            });

            // 三级菜单点击
            $('.sub-menus li').click(function (e) {
                $(".sub-menus li.active").removeClass("active")
                $(this).addClass("active");
            });

            $('.title').click(function () {
                var $ul = $(this).next('ul');
                $('dd').find('.menuson').slideUp();
                if ($ul.is(':visible')) {
                    $(this).next('.menuson').slideUp();
                } else {
                    $(this).next('.menuson').slideDown();
                }
            });
        })
    </script>
</head>

<body style="background:#fff3e1;">
<div class="lefttop"><span></span>Main Menu</div>
<dl class="leftmenu">
    <dd>
        <c:forEach items="${sessionScope.firstClassMenus}" var="firstClassMenus">
            <div class="title"><span><img src="<%=basePath %>/static/images/leftico03.png"/></span>${firstClassMenus.name}</div>
            <ul class="menuson">
                <c:forEach items="${firstClassMenus.secondClassMenuList}" var="secondClassMenu">
                <li>
                    <div class="header"><cite></cite> <a href="${secondClassMenu.url}" target="rightFrame">${secondClassMenu.name}</a>
                        <i></i></div>
                </li>
                </c:forEach>
            </ul>
        </c:forEach>

    </dd>
</dl>
</body>
</html>
