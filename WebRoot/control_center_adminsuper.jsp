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
				<input type="text" class="span10 search-query">
				<button type="submit" class="btn btn-info">查询</button>
			</div>
			<button id="addadmin" type="submit" class="btn btn-info offset1">添加</button>
		</div>
		<!-- 该处是用来添加管理员的 -->
		<form id="adminsuperadd" class="hide form-horizontal marT20"
			action="operatorAction!addOperator" method="post"
			enctype="multipart/form-data">
			<div class="control-group">
				<label class="control-label" for="inputName">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名</label>
				<div class="controls">
					<input type="text" id="inputName" placeholder="Name"
						name="operator.userName">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="inputEmail">邮箱地址</label>
				<div class="controls">
					<input type="text" id="inputEmail" placeholder="Email"
						name="operator.mail">
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
					<select name="operator.gender">
						<option value="male">男</option>
						<option value="female">女</option>
					</select>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="inputGender">管理等级</label>
				<div class="controls">
					<select name="operator.userType">
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
					<button type="submit" class="btn btn-info">确定</button>
					<button id="adminsuperreset" type="reset" class="btn btn-info">取消</button>
				</div>
			</div>
		</form>
		<div id="showsdmin">
			<table class="table table-condensed table-striped table-hover marT20">
				<tr class="warning">
					<td>id</td>
					<td>姓名</td>
					<td>性别</td>
					<td>邮箱</td>
					<td>权限级别</td>
					<td>操作</td>
				</tr>
				<tr class="success">
					<td>1</td>
					<td>superman</td>
					<td>男</td>
					<td>111111111111@126.com</td>
					<td>一级</td>
					<td><a class="btn btn-mini">修改</a> <a class="btn btn-mini">删除</a>
					</td>
				</tr>
				<tr class="info">
					<td>1</td>
					<td>superman</td>
					<td>女</td>
					<td>111111111111@126.com</td>
					<td>一级</td>
					<td><a class="btn btn-mini">修改</a> <a class="btn btn-mini">删除</a>
					</td>
				</tr>
				<tr class="success">
					<td>1</td>
					<td>superman</td>
					<td>男</td>
					<td>111111111111@126.com</td>
					<td>一级</td>
					<td><a class="btn btn-mini">修改</a> <a class="btn btn-mini">删除</a>
					</td>
				</tr>
				<tr class="info">
					<td>1</td>
					<td>superman</td>
					<td>女</td>
					<td>111111111111@126.com</td>
					<td>一级</td>
					<td><a class="btn btn-mini">修改</a> <a class="btn btn-mini">删除</a>
					</td>
				</tr>
			</table>
			<div class="pagination pagination-centered ">
				<ul>
					<li><a>首页</a></li>
					<li class="active"><a>1</a></li>
					<li><a>2</a></li>
					<li><a>3</a></li>
					<li><a>4</a></li>
					<li><a>···</a></li>
					<li><a>6</a></li>
					<li><a>7</a></li>
					<li><a>8</a></li>
					<li><a>9</a></li>
					<li><a>尾页</a></li>
				</ul>
			</div>
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
</body>
</html>
