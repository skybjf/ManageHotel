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
			<button type="submit" class="btn btn-info">添加</button>
		</div>
		<table class="table table-condensed table-striped table-hover marT20">
			<tr class="warning">
				<td>id</td>
				<td>姓名</td>
				<td>邮箱</td>
				<td>权限级别</td>
				<td>操作</td>
			</tr>
			<tr class="success">
				<td>1</td>
				<td>superman</td>
				<td>111111111111@126.com</td>
				<td>一级</td>
				<td><a class="btn btn-mini">修改</a> <a class="btn btn-mini">删除</a>
				</td>
			</tr>
			<tr class="info">
				<td>1</td>
				<td>superman</td>
				<td>111111111111@126.com</td>
				<td>一级</td>
				<td><a class="btn btn-mini">修改</a> <a class="btn btn-mini">删除</a>
				</td>
			</tr>
			<tr class="success">
				<td>1</td>
				<td>superman</td>
				<td>111111111111@126.com</td>
				<td>一级</td>
				<td><a class="btn btn-mini">修改</a> <a class="btn btn-mini">删除</a>
				</td>
			</tr>
			<tr class="info">
				<td>1</td>
				<td>superman</td>
				<td>111111111111@126.com</td>
				<td>一级</td>
				<td><a class="btn btn-mini">修改</a> <a class="btn btn-mini">删除</a>
				</td>
			</tr>
		</table>
		<div class="pagination pagination-centered ">
			<ul>
				<li><a>首页</a>
				</li>
				<li class="active"><a>1</a>
				</li>
				<li><a>2</a>
				</li>
				<li><a>3</a>
				</li>
				<li><a>4</a>
				</li>
				<li><a>···</a>
				</li>
				<li><a>6</a>
				</li>
				<li><a>7</a>
				</li>
				<li><a>8</a>
				</li>
				<li><a>9</a>
				</li>
				<li><a>尾页</a>
				</li>
			</ul>
		</div>
	</div>
</body>
</html>
