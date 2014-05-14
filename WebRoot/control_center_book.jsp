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
	href="css/bootstrap-datetimepicker.min.css">

<script type="text/javascript" src="js/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" src="js/bootstrap-datetimepicker.zh-CN.js"></script>
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->


</head>

<body>
	<div class="well">
		<form class="form-horizontal " action="">

			<div class="control-group">
				<label class="control-label" for="inputName">姓名</label>
				<div class="controls">
					<input type="text" id="inputName" placeholder="Name">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="inputEmail">手机号</label>
				<div class="controls">
					<input type="text" id="inputEmail" placeholder="Email">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="checkindate">入住日期</label>
				<div id="checkindate" class="marL20 input-append date">
					<input id="checkindatevalue" readonly type="text" style="width:180px;"/> <span
						class="add-on"> <i data-time-icon="icon-time"
						data-date-icon="icon-calendar"></i> </span>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="checkoutdate">离店日期</label>
				<div id="checkoutdate" class="marL20 input-append date">
					<input id="checkoutdatevalue" readonly type="text" style="width:180px;" />
					<span class="add-on"> <i data-time-icon="icon-time"
						data-date-icon="icon-calendar"></i> </span>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="inputPassword2">总价</label>
				<div class="controls">
					<input type="password" id="inputPassword2" placeholder="">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="inputUrl">头像连接</label>
				<div class="controls">
					<input type="file" id="inputUrl" placeholder="Avatar">
				</div>
			</div>
			<div class="control-group">
				<div class="controls">
					<button id="confirmbook" type="submit" class="btn btn-info">确定</button>
					<button type="reset" class="btn btn-info">取消</button>
				</div>
			</div>
		</form>
	</div>

	<script type="text/javascript">
		$('#checkindate').datetimepicker({
			format : 'yyyy-MM-dd',
			language : 'zh-CN',
			pickDate : true,
			pickTime : false,
			hourStep : 1,
			minuteStep : 15,
			secondStep : 30,
			inputMask : false
		});
		$('#checkoutdate').datetimepicker({
			format : 'yyyy-MM-dd', /*  hh:mm */
			language : 'zh-CN',
			pickDate : true,
			pickTime : false,
			hourStep : 1,
			minuteStep : 15,
			secondStep : 30,
			inputMask : false
		});
		
		$('#confirmbook').click(function(){
			alert("1");
			dateFormateMinus($('#checkindatevalue').val(),$('#checkoutdatevalue').val()); 
		});

		function dateFormateMinus(early, late) {
			var result =(new Date(late)-new Date(early))/(24*60*60*1000);
			alert(result);
		}
	</script>
</body>
</html>
