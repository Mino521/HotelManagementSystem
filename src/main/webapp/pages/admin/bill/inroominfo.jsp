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
    <title>无标题文档</title>
    <link href="<%=basePath %>/static/css/style.css" rel="stylesheet" type="text/css"/>
    <!-- 引入bootstrap分页 -->
    <link rel="stylesheet" href="<%=basePath%>/static/js/bootstrap/bootstrap.css" />
    <script src="<%=basePath%>/static/js/bootstrap/jquery.min.js"></script>
    <script src="<%=basePath%>/static/js/bootstrap/bootstrap.min.js"></script>
    <script src="<%=basePath%>/static/js/bootstrap/bootstrap-paginator.js"></script>
    <script>
        $(function() {
            $('#pagination').bootstrapPaginator({
                bootstrapMajorVersion: 3,
                currentPage: ${requestScope.pageInfo.pageNum },
                totalPages: ${requestScope.pageInfo.pages },
                pageUrl: function(type, page, current) {
                    return '/getCheckInInfo.do?pageNum=' + page;
                },
                itemTexts: function(type, page, current) {
                    switch(type) {
                        case "first":
                            return "first";
                        case "prev":
                            return "last";
                        case "next":
                            return "next";
                        case "last":
                            return "last";
                        case "page":
                            return page;
                    }
                }
            });
        });
    </script>
<%--    <script type="text/javascript" src="<%=basePath %>/static/js/jquery.js"></script>--%>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".click").click(function () {
                $(".tip").fadeIn(200);
            });

            $(".tiptop a").click(function () {
                $(".tip").fadeOut(200);
            });

            $(".sure").click(function () {
                $(".tip").fadeOut(100);
            });

            $(".cancel").click(function () {
                $(".tip").fadeOut(100);
            });

        });
    </script>
</head>

<body>
<div class="place"><span>Location：</span>
    <ul class="placeul">
        <li><a href="main.html">Main</a></li>
        <li><a href="#">Check in management</a></li>
        <li><a href="#">Check in info query</a></li>
    </ul>
</div>
<div class="rightinfo">
    <div class="tools">
        <ul class="toolbar">
            <li class="click"><span><img src="<%=basePath %>/static/images/t01.png"/></span>Add</li>
            <li class="click"><span><img src="<%=basePath %>/static/images/t02.png"/></span>Alter</li>
            <li><span><img src="images/t03.png"/></span>Delete</li>
        </ul>

        <div class="toolbar1">
            <table>
                <form method="post" name="serch" action="<%=basePath%>/getCheckInInfoByFilter.do">
                    <tr>
                        <td class="zi"><span>Choose class：</span></td>
                        <td><select name="type">
                            <option value="0">Room Num</option>
                            <option value="1">Customer Name</option>
                            <option value="2">Phone number</option>
                            <option value="3">ID number</option>
                        </select></td>
                        <td class="zi"><span>Keyword：</span></td>
                        <td><input name="keyword" type="text" placeholder="connect with classification"/></td>
                        <td><input type="submit" value="QUERY" class="button"/></td>
                    </tr>
                </form>
            </table>
        </div>

    </div>
    <table class="tablelist">
        <thead>
        <tr>
            <th><input name="" type="checkbox" value="" checked="checked"/></th>
            <th>No</th>
            <th>room number</th>
            <th>room type</th>
            <th>Customer name</th>
            <th>Gender</th>
            <th>ID number</th>
            <th>Phone number</th>
            <th>bond</th>
            <th>Check-in time</th>
            <th>Operation</th>
        </tr>
        </thead>
        <c:forEach items="${requestScope.pageInfo.list}" var="map" varStatus="num">
        <tr>
            <td><input name="" type="checkbox" value=""/></td>
            <td>${num.count}</td>
            <td>${map.room_num}</td>
            <td>${map.type_name}</td>
            <td>${map.customer_name}</td>
            <td>${map.gender}</td>
            <td>${map.licence_id}</td>
            <td>${map.phone_num}</td>
            <td>${map.bond}</td>
            <td>${map.check_in_time}</td>
            <td><a href="out.jsp" class="tablelink">Check out </a><a href="<%=basePath%>/deleteInfoById.do?id=${map.id}" class="tablelink"> Delete</a></td>
        </tr>
        </c:forEach>
        </tbody>
    </table>

    <ul id="pagination"></ul>

    <div class="tip">
        <div class="tiptop"><span>Information</span><a></a></div>
        <div class="tipinfo"><span><img src="<%=basePath %>/static/images/ticon.png"/></span>
            <div class="tipright">
                <p>Please confirm the modification</p>
                <cite>If all information is correct, please click YES.</cite></div>
        </div>
        <div class="tipbtn">
            <input name="" type="button" class="sure" value="YES"/>
            &nbsp;
            <input name="" type="button" class="cancel" value="Cancel"/>
        </div>
    </div>
</div>
<script type="text/javascript">
    $('.tablelist tbody tr:odd').addClass('odd');
</script>
</body>
</html>
