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

<title>My JSP 'control_center_book.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" media="screen"
	href="http://tarruda.github.com/bootstrap-datetimepicker/assets/css/bootstrap-datetimepicker.min.css">
<!--
<script type="text/javascript"
     src="http://tarruda.github.com/bootstrap-datetimepicker/assets/js/bootstrap-datetimepicker.min.js">
    </script>

	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<script type="text/javascript"
	src="http://tarruda.github.com/bootstrap-datetimepicker/assets/js/bootstrap-datetimepicker.min.js">
	
</script>
<script type="text/javascript">
	$('#datetimepicker').datetimepicker({
		format : 'MM/dd/yyyy hh:mm',
		language : 'en',
		pickDate : true,
		pickTime : true,
		hourStep : 1,
		minuteStep : 15,
		secondStep : 30,
		inputMask : true
	});
</script>


</head>

<body>
	<div class="well">
		<form class="form-horizontal " action="">

			<div id="datetimepicker" class="input-append date">
				<input type="text"></input> <span class="add-on"> <i
					data-time-icon="icon-time" data-date-icon="icon-calendar"></i> </span>
			</div>


			<div class="control-group">
				<label class="control-label" for="inputName">姓名</label>
				<div class="controls">
					<input type="text" id="inputName" placeholder="Name">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="inputEmail">邮箱地址</label>
				<div class="controls">
					<input type="text" id="inputEmail" placeholder="Email">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="inputPassword0">原密码</label>
				<div class="controls">
					<input type="password" id="inputPassword0" placeholder="Password">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="inputPassword1">新密码</label>
				<div class="controls">
					<input type="password" id="inputPassword1" placeholder="Password">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="inputPassword2">确认密码</label>
				<div class="controls">
					<input type="password" id="inputPassword2" placeholder="Password">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="inputUrl">头像连接</label>
				<div class="controls">
					<input type="password" id="inputUrl" placeholder="Avatar">
				</div>
			</div>
			<div class="control-group">
				<div class="controls">
					<button type="submit" class="btn btn-info">确定</button>
					<button type="reset" class="btn btn-info">取消</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>
