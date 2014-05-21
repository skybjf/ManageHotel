<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<script charset="utf-8" type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
<script charset="utf-8" type="text/javascript" src="js/bootstrap.min.js"></script>
<script charset="utf-8" type="text/javascript" src="js/controller.js"></script>
<script charset="utf-8" type="text/javascript" src="js/highcharts.js"></script>
<script charset="utf-8" type="text/javascript" src="js/exporting.js"></script>
<script charset="utf-8" type="text/javascript" src="js/export-excel.js"></script>
<script charset="utf-8" type="text/javascript" src="js/chart.js"></script>
<title>酒店管理</title>
<link type="text/css" charset="utf-8" rel="stylesheet"	href="css/public.css">
<link type="text/css" charset="utf-8" rel="stylesheet"	href="css/bootstrap.min.css">
<link type="text/css" charset="utf-8" rel="stylesheet"	href="css/bootstrap-responsive.min.css">
<link href="http://netdna.bootstrapcdn.com/font-awesome/3.0.2/css/font-awesome.css" rel="stylesheet">
<link type="text/css" charset="utf-8" rel="stylesheet"	href="css/index.css">
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
					<!-- 				<li><a href="food.jsp"><span class="icon-glass icon-vertical icon-white"></span> 美食展示</a>
									</li> -->
									<li><a href="infomation_center.jsp"><span class="icon-envelope icon-vertical icon-white"></span> 信息中心</a>
									</li>
									<li><a href="control_center.jsp"><span class="icon-briefcase icon-vertical icon-white"></span> 管理中心</a>
									</li>
									<li class="active"><a href="hotel_control.jsp"><span class="icon-list-alt icon-vertical icon-white"></span> 酒店管理</a>
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
									<li class="nav-header"><span class="icon-list-alt icon-vertical"></span> 酒店管理</li>
									<li><a>客流量</a>
									</li>
									<li><a>客房使用量</a>
									</li>
									<li><a>酒店收益</a>
									</li>
									<li><a>温度提示</a>
									</li>
								</ul>
							</div>
							<!--/.well -->
						</div>
						<!--/span-->
						<!--right-->
						<div id="hotelcenter" class="span9 row-fluid ">
							<div class="clearfix each_hotel_control showhide">
								<div class="row-fluid">
									<div id="traffic" class="span6 well onechart">
										
									</div>
									<div id="roomuse" class="span6 well onechart">
									
									</div>
								</div>	
								<div class="row-fluid">
									<div id="craft" class="span6 well onechart">
									
									</div>
									<div id="temperature" class="span6 well onechart">
									
									</div>
								</div>		
							</div>
							
							<div class="showhide hide"><jsp:include page="hotel_control_traffic.jsp"></jsp:include>  </div>
							<div class="showhide hide"><jsp:include page="hotel_control_roomuse.jsp"></jsp:include>  </div>
							<div class="showhide hide"><jsp:include page="hotel_control_craft.jsp"></jsp:include>  </div>
							<div class="showhide hide"><jsp:include page="hotel_control_temperature.jsp"></jsp:include>  </div>
						</div>
						<!--/span-->
					</div>
				</div>
			</form>
		</div>
	</div>
	<script type="text/javascript">
		$(window).ready(function() {
			addStatus($("#left li"), $("#hotelcenter .showhide"));
		});
	</script>
</body>
</html>
