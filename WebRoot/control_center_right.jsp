<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'control_center_right.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<div class="row-fluid">
		<div class="span6 well right_div ">
			<h4>管理员管理</h4>
			<div class="row-fluid">
				<div class="span6">
					<img class="img-circle"
						style="width: 180px; height: 180px;margin-top:20px;" alt=""
						src="img/admin/head.jpg">
				</div>
				<div class="span6 admin">
					<div>
						您好管理员<b class="red">name</b>
					</div>
					<div>上次登录时间为：</div>
					<div>1990-01-03 15:30</div>
					<div>
						<a class="btn btn-info">进入管理员中心</a>
					</div>
				</div>
			</div>
		</div>
		<div class="span6 well right_div ">
			<h4>客房预定</h4>
			<ul class="book">
				<li>豪华商务套房 剩余 <b class="red">20</b>间</li>
				<li>高级商务套房 剩余 <b class="red">20</b>间</li>
				<li>豪华双人房 剩余 <b class="red">20</b>间</li>
				<li>豪华大床房 剩余 <b class="red">20</b>间</li>
				<li>单人房 剩余 <b class="red">20</b>间</li>
			</ul>
		</div>
	</div>
	<div class="row-fluid">
		<div class="span6 well right_div">
			<h4>客房登记</h4>
			<ul class="book">
				<li>豪华商务套房 已入住 <b class="red">20</b>间</li>
				<li>高级商务套房 已入住 <b class="red">20</b>间</li>
				<li>豪华双人房 已入住 <b class="red">20</b>间</li>
				<li>豪华大床房 已入住 <b class="red">20</b>间</li>
				<li>单人房 已入住 <b class="red">20</b>间</li>
			</ul>
		</div>
		<div class="span6 well right_div">
			<h4>客房结账</h4>
			<ul class="book">
				<li>豪华商务套房 空闲 <b class="red">20</b>间</li>
				<li>高级商务套房 空闲 <b class="red">20</b>间</li>
				<li>豪华双人房 空闲 <b class="red">20</b>间</li>
				<li>豪华大床房 空闲 <b class="red">20</b>间</li>
				<li>单人房 空闲 <b class="red">20</b>间</li>
			</ul>
		</div>
	</div>
</body>
</html>
