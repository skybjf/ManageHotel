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
<script type="text/javascript"
	src="js/bootstrap-datetimepicker.zh-CN.js"></script>
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->


</head>

<body>
	<div class="well">
		<form class="form-horizontal " action="">
			<div class="control-group">
				<label class="control-label" for="userName">姓名</label>
				<div class="controls">
					<input type="text" id="userName" placeholder="Name" />
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="inputTel">手机号</label>
				<div class="controls">
					<input type="text" id="inputTel" placeholder="Tel." />
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="inputId">身份证号</label>
				<div class="controls">
					<input type="text" id="inputId" placeholder="ID number" />
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="bookindate">入住日期</label>
				<div id="bookindate" class="marL20 input-append date">
					<input id="bookindatevalue" readonly type="text"
						style="width:180px;" /> <span class="add-on"> <i
						data-time-icon="icon-time" data-date-icon="icon-calendar"></i> </span>
				</div>
			</div>

			<div class="control-group">
				<label class="control-label" for="bookoutdate">离店日期</label>
				<div id="bookoutdate" class="marL20 input-append date">
					<input id="bookoutdatevalue" readonly type="text"
						style="width:180px;" /> <span class="add-on"> <i
						data-time-icon="icon-time" data-date-icon="icon-calendar"></i> </span>
				</div>
			</div>
			<div class="addform">
				<div class="control-group">
					<label class="control-label" for="inputType">房间类型</label>
					<div class="controls" id="inputType">
						<select>
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
						</select>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="inputNumber">房间数量</label>
					<div class="controls">
						<input type="text" id="inputNumber" placeholder="Number" />
					</div>
				</div>
			</div>

			<div class="control-group">
				<div class="controls">
					<button type="button" id="addbook" class="btn btn-info">添加</button>
					<button type="button" id="confirmbook" class="btn btn-info">确定</button>
					<button type="reset" class="btn btn-info">取消</button>
				</div>
			</div>
		</form>
	</div>
	<div id="warning" class="mengban hide">
		<div id="timewaring" class="alert alert-block">
			<button type="button" class="close">&times;</button>
			<h4>警告!</h4>
			请检查您的时间是否正确！
		</div>
	</div>

	<div id="confirForm" class="mengban row hide">
		<form class="form-horizontal confirmForm" action="">
			<div class="control-group">
				<label class="control-label">姓名</label>
				<div class="controls">
					<input type="text" readonly />
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">手机号</label>
				<div class="controls">
					<input type="text" readonly />
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">身份证号</label>
				<div class="controls">
					<input type="text" readonly />
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">入住日期</label>
				<div class="controls">
					<input readonly type="text" />
				</div>
			</div>

			<div class="control-group">
				<label class="control-label">离店日期</label>
				<div id="bookoutdate" class="controls">
					<input readonly type="text" />
				</div>
			</div>
			<div class="addform">
				<div class="control-group">
					<label class="control-label">房间类型</label>
					<div class="controls">
						<input readonly type="text" />
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">房间数量</label>
					<div class="controls">
						<input type="text" readonly placeholder="dasa" />
					</div>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">总价</label>
				<div class="controls">
					<input type="text" readonly placeholder="dasa" />
				</div>
			</div>
			<div class="control-group">
				<div class="controls">
					<button type="button" id="confirmbook" class="btn btn-info">确定</button>
					<button id="reset" type="reset" class="btn btn-info">取消</button>
				</div>
			</div>

		</form>
	</div>
	<script type="text/javascript">
		$('#bookindate').datetimepicker({
			format : 'yyyy-MM-dd',
			language : 'zh-CN',
			pickDate : true,
			pickTime : false,
			hourStep : 1,
			minuteStep : 15,
			secondStep : 30,
			inputMask : false
		});
		$('#bookoutdate').datetimepicker({
			format : 'yyyy-MM-dd', /*  hh:mm */
			language : 'zh-CN',
			pickDate : true,
			pickTime : false,
			hourStep : 1,
			minuteStep : 15,
			secondStep : 30,
			inputMask : false
		});

		$('#addbook').click(function() {
			$(".addform").append("<div class='control-group'><label class='control-label' for='inputType'>房间类型</label><div class='controls' id='inputType'><select><option>1</option><option>2</option><option>3</option><option>4</option><option>5</option></select></div></div><div class='control-group'><label class='control-label' for='inputNumber'>房间数量</label><div class='controls'><input type='text' id='inputNumber' placeholder='Number' /></div></div>");
		});

		$('#confirmbook').click(function() {
			if($('#bookindatevalue').val()!=""&&$('#bookoutdatevalue').val()!=""){
				var a = dateFormateMinus($('#bookindatevalue').val(), $('#bookoutdatevalue').val());
				
			}
			else $("#warning").fadeIn();
		});

		$(".close").click(function() {
			$(".mengban").fadeOut();
		});
		$('#confirForm #reset').click(function() {
			$('#confirForm').hide();
		});

		function dateFormateMinus(early, late) {
			var now = new Date();
			var year = now.getFullYear(); //今年
			var month = now.getMonth() + 1; //今月
			var day = now.getDate(); //今天

			var yearEarly = new Date(early).getFullYear(); //年
			var monthEarly = new Date(early).getMonth() + 1; //月
			var dayEarly = new Date(early).getDate();

			var yearLate = new Date(late).getFullYear(); //年
			var monthLate = new Date(late).getMonth() + 1; //月
			var dayLate = new Date(late).getDate();
			if (yearEarly - year < 0 || monthEarly - month < 0 || dayEarly - day< 0 ) {
				$("#warning").fadeIn();
			} else {
				if(yearLate - yearEarly < 0	|| monthLate - monthEarly < 0 || dayLate - dayEarly < 0){
					$("#warning").fadeIn();
				}
				else{
					var result = (new Date(late) - new Date(early)) / (24 * 60 * 60 * 1000);
					$('#confirForm').fadeIn();
					return result;
				}
			}
		}
	</script>
</body>
</html>
