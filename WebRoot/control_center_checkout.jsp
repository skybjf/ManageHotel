<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'control_center_checkout.jsp' starting page</title>
    
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
    <div class="well">
		<div class="row-fluid form-search">
			<div class="input-append span5 offset2">
				<input type="text" class="span10 search-query">
				<button type="submit" class="btn btn-info">查询</button>
			</div>
		</div>
		<form class="form-horizontal marT20" action="">

			<div class="control-group">
				<label class="control-label" >姓名</label>
				<div class="controls">
					<input type="text" readonly placeholder="Name" />
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" >手机号</label>
				<div class="controls">
					<input type="text" readonly placeholder="Tel." />
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" >身份证号</label>
				<div class="controls">
					<input type="text" readonly placeholder="ID number" />
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" >入住日期</label>
				<div class="controls">
					<input id="" readonly type="text"/> 
				</div>
			</div>

			<div class="control-group">
				<label class="control-label" >离店日期</label>
				<div class="controls">
					<input id="" readonly type="text"/>
				</div>
			</div>
			<div class="addform">
				<div class="control-group">
					<label class="control-label" for="inputType">房间类型</label>
					<div class="controls" >
						<input type="text" readonly placeholder="Number" />
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="inputNumber">房间数量</label>
					<div class="controls">
						<input type="text" readonly placeholder="Number" />
					</div>
				</div>
			</div>

			<div class="control-group">
				<div class="controls">
					<button type="button" id="" class="btn btn-info">确定</button>
				</div>
			</div>
		</form>
	</div>
  </body>
</html>
