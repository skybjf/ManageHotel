<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">

<title>客房设施</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link type="text/css" charset="utf-8" rel="stylesheet"	href="css/public.css">
<link type="text/css" charset="utf-8" rel="stylesheet"	href="css/bootstrap.min.css">
<link type="text/css" charset="utf-8" rel="stylesheet"	href="css/bootstrap-responsive.min.css">
<link href="http://netdna.bootstrapcdn.com/font-awesome/3.0.2/css/font-awesome.css" rel="stylesheet">
<link type="text/css" charset="utf-8" rel="stylesheet"	href="css/index.css">

<script charset="utf-8" type="text/javascript"src="js/jquery-1.10.2.min.js"></script>
<script charset="utf-8" type="text/javascript" src="js/bootstrap.min.js"></script>
<script charset="utf-8" type="text/javascript" src="js/controller.js"></script>

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
									<span class="navbar-link "><span
										class="icon-user icon-vertical icon-white"></span>Username</span> <a
										href="#" class="navbar-link"><span
										class="icon-remove icon-vertical icon-white"></span>退出</a>
								</p>
								<ul class="nav font-16">
									<li><a href="index.jsp"><span class="icon-home icon-vertical icon-white"></span> 主页</a></li>
									<li class="active"><a href="facility.jsp"><span class="icon-th-large icon-vertical icon-white"></span> 客房设施</a></li>
							<!-- 		<li><a href="food.jsp"><span class="icon-glass icon-vertical icon-white"></span> 美食展示</a></li> -->
									<li><a href="infomation_center.jsp"><span class="icon-envelope icon-vertical icon-white"></span> 信息中心</a></li>
									<li><a href="control_center.jsp"><span class="icon-briefcase icon-vertical icon-white"></span> 管理中心</a>
									</li>
									<li><a href="hotel_control.jsp"><span class="icon-list-alt icon-vertical icon-white"></span> 酒店管理</a></li>
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
									<li class="nav-header"><span class="icon-th-large icon-vertical"></span> 客房设施</li>
									<li><a>豪华商务套房</a></li>
									<li><a>高级商务套房</a></li>
									<li><a>豪华双人房</a></li>
									<li><a>豪华大床房</a></li>
									<li><a>单人房</a></li>
								</ul>
							</div>
							<!--/.well -->
						</div>
						<!--/span-->
						<!--right-->
						<div class="span9 row-fluid ">
							<ul class="well clearfix">
								<li class="row-fluid each_room marT20">
									<div class="span12">
										<div class="img span3">
											<img class="img-polaroid" src="img/room/room_hh_big.jpg" />
										</div>
										<div class="text span9">
											<h4>name</h4>
											<div class="clearfix roomDetail">
												<input class="f_l" readonly type="text" value="床 "/> 
												<input class="f_l" readonly type="text" value="床 "/> 
												<input class="f_l" readonly type="text" value="床 "/> 
												<input class="f_l" readonly type="text" value="床 "/> 
												<input class="f_l" readonly type="text" value="床 "/> 
												<input class="f_l" readonly type="text" value="床 "/>
											</div>
											<div class="marT10 clearfix">
												<button type="button" class="btn btn-mini btn-primary addInput offset4 ">添加</button>
												<button type="button" class="btn btn-mini btn-primary btnChange">修改</button>
												<button type="button" class="btn btn-mini btn-primary btnConfir">完成</button>
											</div>
										</div>
									</div>
								</li>
								
								<li class="row-fluid each_room marT20">
									<div class="span12">
										<div class="img span3">
											<img class="img-polaroid" src="img/room/room_hh_big.jpg" />
										</div>
										<div class="text span9">
											<h4>name</h4>
											<div class="clearfix roomDetail">
												<input class="f_l" readonly type="text" value="1 "/> 
												<input class="f_l" readonly type="text" value="床 "/> 
												<input class="f_l" readonly type="text" value="1"/> 
												<input class="f_l" readonly type="text" value="1 "/> 
												<input class="f_l" readonly type="text" value="床 "/> 
												<input class="f_l" readonly type="text" value="床 "/>
											</div>
											<div class="marT10 clearfix">
												<button type="button" class="btn btn-mini btn-primary addInput offset4 ">添加</button>
												<button type="button" class="btn btn-mini btn-primary btnChange">修改</button>
												<button type="button" class="btn btn-mini btn-primary btnConfir">完成</button>
											</div>
										</div>
									</div>
								</li>
								
								<li class="row-fluid each_room marT20">
									<div class="span12">
										<div class="img span3">
											<img class="img-polaroid" src="img/room/room_hh_big.jpg" />
										</div>
										<div class="text span9">
											<h4>name</h4>
											<div class="clearfix roomDetail">
												<input class="f_l" readonly type="text" value="2 "/> 
												<input class="f_l" readonly type="text" value="2 "/> 
												<input class="f_l" readonly type="text" value="2 "/> 
												<input class="f_l" readonly type="text" value="2 "/> 
												<input class="f_l" readonly type="text" value="床 "/> 
												<input class="f_l" readonly type="text" value="床 "/>
											</div>
											<div class="marT10 clearfix">
												<button type="button" class="btn btn-mini btn-primary addInput offset4 ">添加</button>
												<button type="button" class="btn btn-mini btn-primary btnChange">修改</button>
												<button type="button" class="btn btn-mini btn-primary btnConfir">完成</button>
											</div>
										</div>
									</div>
								</li>
								
								<li class="row-fluid each_room marT20">
									<div class="span12">
										<div class="img span3">
											<img class="img-polaroid" src="img/room/room_hh_big.jpg" />
										</div>
										<div class="text span9">
											<h4>name</h4>
											<div class="clearfix roomDetail">
												<input class="f_l" readonly="readonly" type="text" value="3 "/> 
												<input class="f_l" readonly type="text" value="3 "/> 
												<input class="f_l" readonly type="text" value="3 "/> 
												<input class="f_l" readonly type="text" value="3 "/> 
												<input class="f_l" readonly type="text" value="床 "/> 
												<input class="f_l" readonly type="text" value="床 "/>
											</div>
											<div class="marT10 clearfix">
												<button type="button" class="btn btn-mini btn-primary addInput offset4 ">添加</button>
												<button type="button" class="btn btn-mini btn-primary btnChange">修改</button>
												<button type="button" class="btn btn-mini btn-primary btnConfir">完成</button>
											</div>
										</div>
									</div>
								</li>
							</ul>
						</div>
						<!--/span-->
					</div>
				</div>
			</form>
		</div>
	</div>
<script type="text/javascript">
/*   	$("#test").click(function(){
		$("#kkkkk").children('input').attr("readonly","readonly");
	});   */
 	changeInput(true,$(".btnChange"),$(".roomDetail"));
  	changeInput(false,$(".btnConfir"),$(".roomDetail"));
  	addInput($(".addInput"),$(".roomDetail"));
</script>
</body>
</html>
