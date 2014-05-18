<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
	$(window).ready(function() {
		showForm($("#showForm"), $("#adminnormalchange"));
		showForm($("#adminnormalreset"), $("#adminnormalchange"));
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
					<b>${userName}</b> 欢迎来到管理中心
				</h4>
				<div class="clearfix right_top">
					<span class="f_l">上次登录时间</span> <span class="f_l"
						style="color:red;">${loginTime}</span> <a id="showForm"
						class="btn">修改信息</a>
				</div>
				<form id="adminnormalchange" class="hide form-horizontal "
					action="operatorAction!updateOperator" method="post"
					enctype="multipart/form-data">
					<div class="control-group">
						<label class="control-label" for="inputEmail">邮箱地址</label>
						<div class="controls">
							<input type="text" id="inputEmail" placeholder="Email"
								name="operator.mail">
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
						<label class="control-label" for="inputEmail">管理等级</label>
						<div class="controls">
							<s:if test="#session.userType==0">
								<input type="text" id="inputEmail" placeholder="Email"
									disabled="disabled" value="初级管理员">
							</s:if>
							<s:else>
								<input type="text" id="inputEmail" placeholder="Email"
									disabled="disabled" value="超级管理员">
							</s:else>
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
							<input type="password" id="inputPassword1" placeholder="Password"
								name="newPwd">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="inputPassword2">确认密码</label>
						<div class="controls">
							<input type="password" id="inputPassword2" placeholder="Password"
								name="newPwdSure">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="inputUrl">头像连接</label>
						<div class="controls">
							<input type="file" id="inputUrl" placeholder="Avatar"
								name="image">
						</div>
					</div>
					<div class="control-group">
						<div class="controls">
							<button type="submit" class="btn btn-info">确定</button>
							<button id="adminnormalreset" type="reset" class="btn btn-info">取消</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
