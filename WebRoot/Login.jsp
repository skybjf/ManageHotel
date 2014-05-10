<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script charset="utf-8" type="text/javascript"
	src="js/jquery-1.10.2.min.js"></script>
<script charset="utf-8" type="text/javascript" src="js/bootstrap.min.js"></script>
<title>登录</title>
<link type="text/css" charset="utf-8" rel="stylesheet"
	href="css/bootstrap.min.css">
<link type="text/css" charset="utf-8" rel="stylesheet"
	href="css/bootstrap-responsive.min.css">
<link type="text/css" charset="utf-8" rel="stylesheet"
	href="css/index.css">
</head>
<body>
	<div class="navbar-wrapper">
		<div class="container">
			<div class="navbar navbar-inverse">
				<div class="navbar-inner">
					<a class="brand" href="#"></a>
					<div class="nav-collapse collapse">
						<ul class="nav font-16">
							<li class="active"><a href="#">主页</a></li>
							<li><a href="#about">客房设施</a></li>
							<li><a href="#contact">美食展示</a></li>
							<li><a href="#contact">信息中心</a></li>
							<li><a href="#contact">管理中心</a></li>
							<li><a href="#contact">酒店管理</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">Dropdown <b class="caret"></b> </a>
								<ul class="dropdown-menu">
									<li><a href="#">Action</a></li>
									<li><a href="#">Another action</a></li>
									<li><a href="#">Something else here</a></li>
									<li class="divider"></li>
									<li class="nav-header">Nav header</li>
									<li><a href="#">Separated link</a></li>
									<li><a href="#">One more separated link</a></li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="myCarousel" class="carousel slide" style="margin-top: 80px;">
		<div class="carousel-inner">
			<div class="item active">
				<img src="img/slide-01.jpg" alt="">
				<div class="container">
					<div class="carousel-caption">
						<h1>Example headline.</h1>
						<p class="lead">Cras justo odio, dapibus ac facilisis in,
							egestas eget quam. Donec id elit non mi porta gravida at eget
							metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
						<a class="btn btn-large btn-primary" data-toggle="modal"
							href="#login">登录</a>
					</div>
				</div>
			</div>
			<div class="item">
				<img src="img/slide-02.jpg" alt="">
				<div class="container">
					<div class="carousel-caption">
						<h1>Another example headline.</h1>
						<p class="lead">Cras justo odio, dapibus ac facilisis in,
							egestas eget quam. Donec id elit non mi porta gravida at eget
							metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
						<a class="btn btn-large btn-primary" data-toggle="modal"
							href="#login">登录</a>
					</div>
				</div>
			</div>
			<div class="item">
				<img src="img/slide-03.jpg" alt="">
				<div class="container">
					<div class="carousel-caption">
						<h1>One more for good measure.</h1>
						<p class="lead">Cras justo odio, dapibus ac facilisis in,
							egestas eget quam. Donec id elit non mi porta gravida at eget
							metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
						<a class="btn btn-large btn-primary" href="#login" role="button"
							data-toggle="modal">登录</a>
					</div>
				</div>
			</div>
		</div>
		<a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
		<a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
	</div>
	<!--<div class="container logindiv">-->
	<!--</div>-->
	<div id="login" class="modal hide fade logindiv" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<form class="form-signin" action="operatorAction!login" method="post">
			<h2 class="form-signin-heading">请登录</h2>
			<input type="text" class="input-block-level" placeholder="用户名"
				name="operator.userName"> <input type="password"
				class="input-block-level" placeholder="密码" name="operator.pwd">
			<button class="btn btn-large btn-primary" type="submit">登录</button>
		</form>
	</div>
</body>
</html>