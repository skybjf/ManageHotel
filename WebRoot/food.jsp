<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<script charset="utf-8" type="text/javascript"
	src="js/jquery-1.10.2.min.js"></script>
<script charset="utf-8" type="text/javascript" src="js/bootstrap.min.js"></script>
<script charset="utf-8" type="text/javascript" src="js/controller.js"></script>

<title>美食管理</title>
<link type="text/css" charset="utf-8" rel="stylesheet"
	href="css/public.css">
<link type="text/css" charset="utf-8" rel="stylesheet"
	href="css/bootstrap.min.css">
<link type="text/css" charset="utf-8" rel="stylesheet"
	href="css/bootstrap-responsive.min.css">
<link type="text/css" charset="utf-8" rel="stylesheet"
	href="css/index.css">
</head>
<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<form class="form-horizontal">
				<div class="navbar navbar-inverse navbar-fixed-top">
					<div class="navbar-inner">
						<div class="container-fluid">
							<a class="brand" href="index.jsp"></a>
							<div class="nav-collapse collapse">
								<p class="navbar-text pull-right" style="line-height: 50px;">
                                	<span class="navbar-link "><span class="icon-user icon-vertical icon-white"></span>Username</span>
                                    <a href="#" class="navbar-link"><span class="icon-remove icon-vertical icon-white"></span>退出</a>
                                </p>
								<ul class="nav font-16">
									<li><a href="index.jsp"><span class="icon-home icon-vertical icon-white"></span> 主页</a>
									</li>
									<li><a href="facility.jsp"><span class="icon-th-large icon-vertical icon-white"></span> 客房设施</a>
									</li>
									<li class="active"><a href="food.jsp"><span class="icon-glass icon-vertical icon-white"></span> 美食展示</a>
									</li>
									<li><a href="infomation_center.jsp"><span class="icon-envelope icon-vertical icon-white"></span> 信息中心</a>
									</li>
									<li><a href="control_center.jsp"><span class="icon-briefcase icon-vertical icon-white"></span> 管理中心</a>
									</li>
									<li><a href="hotel_control.jsp"><span class="icon-list-alt icon-vertical icon-white"></span> 酒店管理</a>
									</li>
								</ul>
							</div>
							<!--/.nav-collapse -->
						</div>
					</div>
				</div>
				<div class="container-fluid">
					<div class="row-fluid mar-top">
						<!--left-->
						<div class="span3">
							<div class="well sidebar-nav">
								<ul id="left" class="nav nav-list">
									<li class="nav-header"><span class="icon-glass icon-vertical"></span>美食展示</li>
									<li><a href="#">春</a>
									</li>
									<li><a href="#">夏</a>
									</li>
									<li><a href="#">秋</a>
									</li>
									<li><a href="#">冬</a>
									</li>
									<!--<li class="active"><a href="#">单人房</a></li>-->
								</ul>
							</div>
							<!--/.well -->
						</div>
						<!--/span-->
						<!--right-->
						<div class="span9 row-fluid ">
							<ul class="well clearfix each_food">
								<li class=""><img src="img" class="img-polaroid" />
									<div>
										<strong>name</strong>
									</div>
									<div>
										<b>price</b>
									</div></li>
								<li class=""><img src="img" class="img-polaroid" />
									<div>
										<strong>name</strong>
									</div>
									<div>
										<b>price</b>
									</div></li>
								<li class=""><img src="img" class="img-polaroid" />
									<div>
										<strong>name</strong>
									</div>
									<div>
										<b>price</b>
									</div></li>
								<li class=""><img src="img" class="img-polaroid" />
									<div>
										<strong>name</strong>
									</div>
									<div>
										<b>price</b>
									</div></li>
								<li class=""><img src="img" class="img-polaroid" />
									<div>
										<strong>name</strong>
									</div>
									<div>
										<b>price</b>
									</div></li>
								<li class=""><img src="img" class="img-polaroid" />
									<div>
										<strong>name</strong>
									</div>
									<div>
										<b>price</b>
									</div></li>
								<li class=""><img src="img" class="img-polaroid" />
									<div>
										<strong>name</strong>
									</div>
									<div>
										<b>price</b>
									</div></li>
							</ul>
						</div>
						<!--/span-->
					</div>
					<!--/row-->
					<hr>
				</div>
			</form>
		</div>
	</div>
</body>
</html>
