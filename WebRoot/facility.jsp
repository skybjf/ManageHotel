<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Facility.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link type="text/css" charset="utf-8" rel="stylesheet" href="css/public.css">
    <link type="text/css" charset="utf-8" rel="stylesheet" href="css/bootstrap.min.css">
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
                            <a class="brand" href="#"></a>
                            <div class="nav-collapse collapse">
                                <p class="navbar-text pull-right">
                                    Logged in as <a href="#" class="navbar-link">Username</a>
                                </p>
                                <ul class="nav font-16">
                                    <li class="active"><a href="#">主页</a></li>
                                    <li><a href="#about">客房设施</a></li>
                                    <li><a href="#contact">美食展示</a></li>
                                    <li><a href="#contact">信息中心</a></li>
                                    <li><a href="#contact">管理中心</a></li>
                                    <li><a href="#contact">酒店管理</a></li>
                                    <li><a href="#contact">客户评价</a></li>
                                </ul>
                            </div><!--/.nav-collapse -->
                        </div>
                    </div>
                </div>
                <div class="container-fluid">
                    <div class="row-fluid mar-top">
                        <!--left-->
                        <div class="span3">
                            <div class="well sidebar-nav">
                                <ul class="nav nav-list">
                                    <li class="nav-header">客房设施</li>
                                    <li><a href="#">豪华商务套房</a></li>
                                    <li><a href="#">高级商务套房</a></li>
                                    <li><a href="#">豪华双人房</a></li>
                                    <li><a href="#">豪华大床房</a></li>
                                    <li class="active"><a href="#">单人房</a></li>
                                </ul>
                            </div><!--/.well -->
                        </div><!--/span-->
                        <!--right-->
                        <div class="span9 row-fluid ">
                            <ul class="well clearfix">
                                <li class="span12 each_room">
                                    <div class="img span3">
                                        <img class="img-polaroid" src="img" />
                                    </div>
                                    <div class="text span9">
                                        <h4>name</h4>
                                        <div>
                                            <input class="f_l" value="床 ">
                                            <input class="f_l" value="床 ">
                                            <input class="f_l" value="床 ">
                                            <input class="f_l" value="床 ">
                                            <input class="f_l" value="床 ">
                                            <input class="f_l" value="床 ">
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div><!--/span-->
                    </div><!--/row-->
                    <hr>
                </div>
            </form>
        </div>
    </div>
 	
 	<script charset="utf-8" type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
    <script charset="utf-8" type="text/javascript" src="js/bootstrap.min.js"></script>
 </body>
</html>
