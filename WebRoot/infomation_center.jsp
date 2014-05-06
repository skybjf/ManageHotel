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
    <title>信息中心</title>
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
                                <li class="nav-header">信息中心</li>
                                <li><a href="#">招聘信息</a></li>
                                <li><a href="#">酒店新闻</a></li>
                                <li><a href="#">会议安排</a></li>
                                <li><a href="#">打折信息</a></li>
                                <!--<li class="active"><a href="#">单人房</a></li>-->
                            </ul>
                        </div><!--/.well -->
                    </div><!--/span-->
                    <!--right-->
                    <div class="span9 row-fluid ">
                        <ul class="well clearfix each_info">
                            <li >
                                <dl>
                                    <dt><h4>招聘信息</h4></dt>
                                    <dd>1</dd>
                                    <dd>2</dd>
                                    <dd>3</dd>
                                    <dd>4</dd>
                                    <dd>5</dd>
                                </dl>
                            </li>
                            <li >
                                <dl>
                                    <dt><h4>酒店新闻</h4></dt>
                                    <dd>1</dd>
                                    <dd>2</dd>
                                    <dd>3</dd>
                                    <dd>4</dd>
                                    <dd>5</dd>
                                </dl>
                            </li>
                            <li >
                                <dl>
                                    <dt><h4>会议安排</h4></dt>
                                    <dd>1</dd>
                                    <dd>2</dd>
                                    <dd>3</dd>
                                    <dd>4</dd>
                                    <dd>5</dd>
                                </dl>
                            </li>
                            <li >
                                <dl>
                                    <dt><h4>打折信息</h4></dt>
                                    <dd>1</dd>
                                    <dd>2</dd>
                                    <dd>3</dd>
                                    <dd>4</dd>
                                    <dd>5</dd>
                                </dl>
                            </li>
                        </ul>
                    </div><!--/span-->
                </div><!--/row-->
                <hr>
            </div>
        </form>
    </div>
</div>
</body>
</html>