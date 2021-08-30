<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() +request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath %>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Top Bar</title>
<link href="<%=basePath %>/static/css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="<%=basePath %>/static/js/jquery-2.1.4.min.js"></script>
<script type="text/javascript">
$(function(){	
	//顶部导航切换
	$(".nav li a").click(function(){
		$(".nav li a.selected").removeClass("selected")
		$(this).addClass("selected");
	})	
})

function current(){ 
    var d=new Date(),str=''; 
    str +=d.getFullYear()+'-';
    str +=d.getMonth()+1+'-';
    str +=d.getDate()+' ';
    str +=d.getHours()+':';
    str +=d.getMinutes()+':';
    str +=d.getSeconds()+;
    return str;
} 
setInterval(function(){
    $("#systime").html(current)
},100);	
</script>
</head>

<body style="background:url(<%=basePath %>/static/images/topbg.gif) repeat-x;">
<div class="topleft"> <a href="#"><img src="<%=basePath %>/static/images/logo1.png" title="Main page" /></a> </div>
<ul class="nav">
  <li><a href="bill/checkin.jsp" target="rightFrame"><img src="<%=basePath %>/static/images/icon09.png" title="Check in" />
    <h2>Check in</h2>
    </a></li>
    <li><a href="order/addorder.html"  target="rightFrame"><img src="<%=basePath %>/static/images/icon02.png" title="Add order" />
    <h2>Add order</h2>
    </a></li>
    <li><a href="vip/vipinfo.html"  target="rightFrame"><img src="<%=basePath %>/static/images/icon13.png" title="VIP info" style="width:45px; height:45px;"/>
    <h2>VIP info</h2>
    </a></li>
    <li><a href="room/roominfo.html"  target="rightFrame"><img src="<%=basePath %>/static/images/ICO-066.png" title="Room info"/>
    <h2>Room info</h2>
    </a></li>
    <li><a href="user/usermanage.html"  target="rightFrame"><img src="<%=basePath %>/static/images/icon06.png" title="User Manage" />
    <h2>UserManage</h2>
    </a></li>
</ul>
<div class="systime">
  <span id="systime"></span>
</div>
<div class="topright">
  <ul>
    <li><a href="#">Logout</a></li>
    <li><a href="login.html" target="_parent">Exit</a></li>
  </ul>
  <div class="user"> <span>Current user: ${sessionScope.username}</span> </div>
</div>
</body>
</html>
