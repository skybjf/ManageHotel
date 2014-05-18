<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html>
<head>

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
				<label class="control-label" for="checkindate">登记日期</label>
				<div id="checkindate" class="marL20 input-append date">
					<input id="checkindatevalue" readonly type="text"
						style="width:180px;" /> <span class="add-on"> <i
						data-time-icon="icon-time" data-date-icon="icon-calendar"></i> </span>
				</div>
			</div>

			<div class="control-group">
				<label class="control-label" for="checkoutdate">离店日期</label>
				<div id="checkoutdate" class="marL20 input-append date">
					<input id="checkoutdatevalue" readonly type="text"
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
		$(window).load(function(){
			var now = new Date();
			var year = now.getFullYear(); //今年
			var month = now.getMonth() + 1; //今月
			var day = now.getDate(); //今天
			$('#checkindatevalue').val(year+'-'+month+'-'+day);
		});
	</script>
</body>
</html>