$(document).ready(function() {
	$('#inputUrl').change(function(){
		$('#adminsuperadd').submit();
	});
	// 判断用户名是否存在
	$('#inputName').blur(function(){
		var username = $('#inputName').val().trim();
		
		if(username == ""){
			alert('用户名不能为空');
			return ;
			}
		$.ajax({
			url : base_url + '/operatorAction!beforAddOperator?operator.userName='+username,
			type : 'post',
			success : function(data) {
				if (data == 'success'){
					// 密码一致
					alert(keyong );
					}
				if(data=='fail'){
					alert('户名不可用');
				}
			},
			error : function() {
				alert('失败');
			}
		});
	});
	
	$('#superqueding').click(function(){
		var username = $('#inputName').val();
		var email = $('#inputEmail').val();
		var pwd = $('#inputPassword0').val();
		var gender = $('#selectGender').val();
		var userType = $('#userType').val();
		var url = $('#iframe').contents().find('pre').html();
		$.ajax({
			url : base_url + '/operatorAction!addOperator?operator.userName='+username+'&operator.gender='+gender+'&operator.mail='+email+'&operator.userType='+userType+'&operator.pwd='+pwd+'&operator.url='+url,
			type : 'post',
			success : function(data) {
				if (data == 'success'){
					// 密码一致
					alert("修改完成");
					}
				if(data=='fail'){
					alert('修改失败');
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