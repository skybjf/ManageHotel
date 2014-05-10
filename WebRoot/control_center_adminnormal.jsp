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

<title>管理员中心</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script type="text/javascript">
$(window).ready(function(){
	showForm($("#showForm"),$(".hide"));
});
</script>
</head>

<body>
	<div class="well normal">
		<div class="row-fluid">
			<div class="span4">
				<img class="img-polaroid" alt="" src="img/admin/head.jpg"
					style="height:200px;width: 200px;">
			</div>

			<div class="span8">
				<h4 class="control-group" style="padding-left:80px;">
					<b>Name</b> 欢迎来到管理中心
				</h4>
				<div class="clearfix right_top">
					<span class="f_l">上次登录时间</span>
					<span class="f_l" style="color:red;">1997-01-05 23:32</span>
					<a id="showForm" class="btn">修改信息</a>
				</div>
				<form class="hide form-horizontal " action="" >
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
		</div>
	</div>
</body>
</html>
