$(document).ready(function() {
	$('#submit').click(function() {
		var username = $('#username').val().trim();
		var pwd = $('#pwd').val();
		$.ajax({
			url : base_url + '/operatorAction!login?operator.userName='+username+'&operator.pwd='+pwd,
			type : 'post',
			success : function(data) {
				if (data == 'success'){
					location.href = base_url + '/control_center.jsp';
					}
				if(data=='fail'){
					alert('用户名或密码不对');
				}
			},
			error : function() {
				alert('失败');
			}
		});
	});
});
// 服务器根路径
var base_url = location.href.substring(0, location.href
		.indexOf(location.pathname));
// 项目名
var current_url = location.pathname.split('/')[1];
base_url += '/' + current_url;