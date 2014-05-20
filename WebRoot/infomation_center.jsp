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
<script charset="utf-8" type="text/javascript"	src="js/jquery-1.10.2.min.js"></script>
<script charset="utf-8" type="text/javascript" src="js/bootstrap.min.js"></script>
<script charset="utf-8" type="text/javascript" src="js/controller.js"></script>
<script type="text/javascript" src="js/bootstrap-wysiwyg.js"></script>
<script type="text/javascript" src="js/jquery.hotkeys.js"></script>


<title>信息中心</title>
<link type="text/css" charset="utf-8" rel="stylesheet" href="css/public.css">
<link type="text/css" charset="utf-8" rel="stylesheet" href="css/bootstrap.min.css">
<link href="http://netdna.bootstrapcdn.com/font-awesome/3.0.2/css/font-awesome.css" rel="stylesheet">
<link type="text/css" charset="utf-8" rel="stylesheet" href="css/bootstrap-responsive.min.css">
<link type="text/css" charset="utf-8" rel="stylesheet" href="css/index.css">
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
<!-- 									<li><a href="food.jsp"><span class="icon-glass icon-vertical icon-white"></span> 美食展示</a>
									</li> -->
									<li class="active"><a href="infomation_center.jsp"><span class="icon-envelope icon-vertical icon-white"></span> 信息中心</a>
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
									<li class="nav-header"><span class="icon-envelope icon-vertical"></span> 信息中心</li>
									<li><a>招聘信息</a></li>
									<li><a>酒店新闻</a></li>
									<li><a>会议安排</a></li>
									<li><a>打折信息</a></li>
									<!--<li class="active"><a href="#">单人房</a></li>-->
								</ul>
							</div>
							<!--/.well -->
						</div>
						<!--/span-->
						<!--right-->
						<div id="infocenter" class="span9 row-fluid ">
						
							<ul class="well span12 clearfix each_info showhide">
								<li>
									<dl>
										<dt>
											<h4>招聘信息</h4>
										</dt>
										<dd>1</dd>
										<dd>2</dd>
										<dd>3</dd>
										<dd>4</dd>
										<dd>5</dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt>
											<h4>酒店新闻</h4>
										</dt>
										<dd>1</dd>
										<dd>2</dd>
										<dd>3</dd>
										<dd>4</dd>
										<dd>5</dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt>
											<h4>会议安排</h4>
										</dt>
										<dd>1</dd>
										<dd>2</dd>
										<dd>3</dd>
										<dd>4</dd>
										<dd>5</dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt>
											<h4>打折信息</h4>
										</dt>
										<dd>1</dd>
										<dd>2</dd>
										<dd>3</dd>
										<dd>4</dd>
										<dd>5</dd>
									</dl>
								</li>
							</ul>
							<div class="hide showhide">
								<jsp:include page="infomation_center_recruitment.jsp"></jsp:include>
							</div>
							<div class="hide showhide">
								<jsp:include page="infomation_center_news.jsp"></jsp:include>
							</div>
							<div class="hide showhide">
								<jsp:include page="infomation_center_meeting.jsp"></jsp:include>
							</div>
							<div class="hide showhide">
								<jsp:include page="infomation_center_discount.jsp"></jsp:include>
							</div>
						</div>
						<!--/span-->
					</div>
					<!--/row-->
				</div>
			</form>
		</div>
	</div>
	<script type="text/javascript">
		$(window).ready(function() {
			addStatus($("#left li"), $("#infocenter .showhide"));
		});
	</script>
</body>
</html>