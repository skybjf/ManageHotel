$(document).ready(function() {
	$('#inputUrl').change(function(){
		$('#adminnormalchange').submit();
		
	});
	// 原密码判断
	$('#inputPassword0').blur(function(){
		var username = $('#myUserName').html().trim();
		var pwd = $('#inputPassword0').val();
		$.ajax({
			url : base_url + '/operatorAction!beforModifyPwd?operator.userName='+username+'&operator.pwd='+pwd,
			type : 'post',
			success : function(data) {
				if (data == 'success'){
					//密码一致
//					location.href = base_url + '/control_center.jsp';
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
	// 原密码判断
	$('#inputPassword2').blur(function(){
		var pwd1 = $('#inputPassword1').val();
		var pwd2 = $('#inputPassword2').val();
		if(pwd1!=pwd2){
			alert('密码不一致');
		}
		else{
			
		}
	});
	
	$('#queding').click(function(){
		var username = $('#myUserName').html().trim();
		var email = $('#inputEmail').val();
		var gender = $('#gender').val();
		var userType = $('#inputLevel1').val();
		var newpwd = $('#inputPassword1').val();
		var newpwdSure = $('#inputPassword2').val();
		var url = $('#iframe').contents().find('pre').html();
		$.ajax({
			url : base_url + '/operatorAction!updateOperator?operator.userName='+username+'&operator.gender='+gender+'&operator.mail='+email+'&operator.userType='+userType+'&newPwd='+newpwd+'&newPwdSure='+newpwdSure+'&operator.url='+url,
			type : 'post',
			success : function(data) {
				if (data == 'success'){
					//密码一致
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
	})	;
	
	
});
// 服务器根路径
var base_url = location.href.substring(0, location.href
		.indexOf(location.pathname));
// 项目名
var current_url = location.pathname.split('/')[1];
base_url += '/' + current_url;