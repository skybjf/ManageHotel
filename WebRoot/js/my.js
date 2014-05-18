function onload(uid) {
	if (uid == "") {
		location.href = "Login.jsp";
	}

}

function login(userName, pwd) {
	if (uid != "" && pwd != "") {
		// 局部刷新页面的ajax语法定义
		$.ajax({
			cache : false,
			// action的位置
			url : 'operatorAction!login?userName=' + userName + '&pwd=' + pwd,
			// 发送的方式
			method : "post",
			async : true,
			dataType : "text",
			timeout : 3000,
			error : function() {
				alert("用户名或密码错误");
			},
			success : location.href = "control_center.jsp",
		// 请求发送成功之后调用此函数处理返回的数据
		});

	} else {
		test;
	}
}
function test() {
	alert("用户名或密码错误");
}

function login2(userName, pwd) {
	$.post('operatorAction!login?userName=' + userName + '&pwd=' + pwd,
			function(data) {
				if (data == "success") {
					location.href = "";
				} else {

					location.href = "";
				}
			});
}