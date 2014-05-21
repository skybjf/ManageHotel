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
<base href="<%=basePath%>">

<title>My JSP 'control_center_adminsuper.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

</head>

<body>
	<div class="well adminsuper">
		<div class="row-fluid form-search">
			<div class="input-append span5 offset2">
				<input type="text" class="span10 search-query" id="queryName">
				<button type="submit" class="btn btn-info" onclick=queryOperator()>查询</button>
			</div>
			<button id="addadmin" type="submit" class="btn btn-info offset1">添加</button>
		</div>
		<iframe id="iframe" hidden="true"></iframe>
		<!-- 该处是用来添加管理员的 -->
		<form id="adminsuperadd" class="hide form-horizontal marT20"
			action="operatorAction!uploadOperatiorImage" method="post"
			enctype="multipart/form-data" target="iframe">
			<div class="control-group">
				<label class="control-label" for="inputName">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名</label>
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
				<label class="control-label" for="inputPassword0">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码</label>
				<div class="controls">
					<input type="password" id="inputPassword0" placeholder="Password"
						name="operator.pwd">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="inputGender">性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别</label>
				<div class="controls">
					<select id=selectGender>
						<option value="male">男</option>
						<option value="female">女</option>
					</select>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="userType">管理等级</label>
				<div class="controls">
					<select id="userType">
						<option value="0">初级管理员</option>
						<option value="1">超级管理员</option>
					</select>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="inputUrl">头像连接</label>
				<div class="controls">
					<input type="file" id="inputUrl" placeholder="Avatar" name="image">
				</div>
			</div>
			<div class="control-group">
				<div class="controls">
					<button type="button" class="btn btn-info" id="superqueding">确定</button>
					<button id="adminsuperreset" type="reset" class="btn btn-info">取消</button>
				</div>
			</div>
		</form>
		<div id="showsdmin">
			<table class="table table-condensed table-striped table-hover marT20"
				id="showSuper">

			</table>
			<div class="pagination pagination-centered " id="showPage"></div>
		</div>
	</div>

	<script type="text/javascript">
		$(window).ready(
				function() {
					showToggle($("#addadmin"), $("#adminsuperadd"),
							$("#showsdmin"), true);
					showToggle($("#adminsuperreset"), $("#adminsuperadd"),
							$("#showsdmin"), false);
				});
	</script>
	<script type="text/javascript" src="js/operator_super.js"></script>
</body>
</html>
