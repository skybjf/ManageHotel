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
    <title>首页</title>
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
                            <a class="brand" href="index.jsp"></a>
                            <div class="nav-collapse collapse">
                                <p class="navbar-text pull-right">
                                    Logged in as <a href="#" class="navbar-link">Username</a>
                                </p>
                                <ul class="nav font-16">
                                    <li class="active"><a href="#">主页</a></li>
                                    <li><a href="facility.jsp">客房设施</a></li>
                                    <li><a href="food.jsp">美食展示</a></li>
                                    <li><a href="infomation_center.jsp">信息中心</a></li>
                                    <li><a href="control_center.jsp">管理中心</a></li>
                                    <li><a href="hotel_control.jsp">酒店管理</a></li>
                                    <li><a href="customer_reviews.jsp">客户评价</a></li>
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
                                    <li>
                                        <div  class="nav-header accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">
                                            客房设施
                                        </div>
                                        <div id="collapseOne" class="accordion-body collapse">
                                            <ul class="accordion-inner nav nav-list">
                                                <li><a href="#">豪华商务套房</a></li>
                                                <li><a href="#">高级商务套房</a></li>
                                                <li class="active"><a href="#">豪华双人房</a></li>
                                                <li><a href="#">豪华大床房</a></li>
                                                <li><a href="#">单人房</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li>
                                        <div  class="nav-header accordion-toggle " data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">
                                            美食展示
                                        </div>
                                        <div id="collapseTwo" class="accordion-body collapse">
                                            <ul class="accordion-inner nav nav-list">
                                                <li><a href="#">豪华商务套房</a></li>
                                                <li><a href="#">高级商务套房</a></li>
                                                <li class="active"><a href="#">豪华双人房</a></li>
                                                <li><a href="#">豪华大床房</a></li>
                                                <li><a href="#">单人房</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li>
                                        <div  class="nav-header accordion-toggle " data-toggle="collapse" data-parent="#accordion2" href="#collapseThree">
                                            信息中心
                                        </div>
                                        <div id="collapseThree" class="accordion-body collapse">
                                            <ul class="accordion-inner nav nav-list">
                                                <li><a href="#">豪华商务套房</a></li>
                                                <li><a href="#">高级商务套房</a></li>
                                                <li class="active"><a href="#">豪华双人房</a></li>
                                                <li><a href="#">豪华大床房</a></li>
                                                <li><a href="#">单人房</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li>
                                        <div  class="nav-header accordion-toggle " data-toggle="collapse" data-parent="#accordion2" href="#collapseFour">
                                            管理中心
                                        </div>
                                        <div id="collapseFour" class="accordion-body collapse">
                                            <ul class="accordion-inner nav nav-list">
                                                <li><a href="#">豪华商务套房</a></li>
                                                <li><a href="#">高级商务套房</a></li>
                                                <li class="active"><a href="#">豪华双人房</a></li>
                                                <li><a href="#">豪华大床房</a></li>
                                                <li><a href="#">单人房</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li>
                                        <div  class="nav-header accordion-toggle " data-toggle="collapse" data-parent="#accordion2" href="#collapseFive">
                                            酒店管理
                                        </div>
                                        <div id="collapseFive" class="accordion-body collapse">
                                            <ul class="accordion-inner nav nav-list">
                                                <li><a href="#">豪华商务套房</a></li>
                                                <li><a href="#">高级商务套房</a></li>
                                                <li class="active"><a href="#">豪华双人房</a></li>
                                                <li><a href="#">豪华大床房</a></li>
                                                <li><a href="#">单人房</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li>
                                        <div  class="nav-header accordion-toggle " data-toggle="collapse" data-parent="#accordion2" href="#collapseSix">
                                            客户评价
                                        </div>
                                        <div id="collapseSix" class="accordion-body collapse">
                                            <ul class="accordion-inner nav nav-list">
                                                <li><a href="#">豪华商务套房</a></li>
                                                <li><a href="#">高级商务套房</a></li>
                                                <li class="active"><a href="#">豪华双人房</a></li>
                                                <li><a href="#">豪华大床房</a></li>
                                                <li><a href="#">单人房</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="nav-header">Sidebar</li>
                                    <li><a href="#">Link</a></li>
                                    <li><a href="#">Link</a></li>
                                    <li><a href="#">Link</a></li>
                                </ul>
                            </div><!--/.well -->
                        </div><!--/span-->
                        <!--right-->
                        <div class="span9">
                            <div class="hero-unit">
                                <h1>highcharts</h1>
                                <p>This is a template for a simple marketing or informational website. It includes a large callout called the hero unit and three supporting pieces of content. Use it as a starting point to create something more unique.</p>
                                <p><a href="#" class="btn btn-primary btn-large">Learn more &raquo;</a></p>
                            </div>
                            <div class="row-fluid">
                                <div class="span4">
                                    <h2>Heading</h2>
                                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
                                    <p><a class="btn" href="#">View details &raquo;</a></p>
                                </div><!--/span-->
                                <div class="span4">
                                    <h2>Heading</h2>
                                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
                                    <p><a class="btn" href="#">View details &raquo;</a></p>
                                </div><!--/span-->
                                <div class="span4">
                                    <h2>Heading</h2>
                                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
                                    <p><a class="btn" href="#">View details &raquo;</a></p>
                                </div><!--/span-->
                            </div><!--/row-->
                            <div class="row-fluid">
                                <div class="span4">
                                    <h2>Heading</h2>
                                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
                                    <p><a class="btn" href="#">View details &raquo;</a></p>
                                </div><!--/span-->
                                <div class="span4">
                                    <h2>Heading</h2>
                                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
                                    <p><a class="btn" href="#">View details &raquo;</a></p>
                                </div><!--/span-->
                                <div class="span4">
                                    <h2>Heading</h2>
                                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
                                    <p><a class="btn" href="#">View details &raquo;</a></p>
                                </div><!--/span-->
                            </div><!--/row-->
                        </div><!--/span-->
                    </div><!--/row-->
                    <hr>
                </div>
            </form>
        </div>
    </div>
</body>
</html>