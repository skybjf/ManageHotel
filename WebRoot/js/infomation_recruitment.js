function addRecruitment() {
	var zhaopin= $('#zhaopin').val();
	var mySalary= $('#mySalary').val();
	var number= $('#number').val();
	var str=$('#editor1').html();
	alert(zhaopin);
	alert(zhaopin+mySalary+number+editor1);
		$.ajax({
			url : base_url + '/operatorAction!addRecruitment?recruitment.name='+zhaopin+'&recruitment.salary='+mySalary+'&recruitment.peopleNumber='+number+'&recruitment.description='+str,
			type : 'post',
			success : function(data) {
				if (data == 'success'){
					// 密码一致
					alert(data);
					}
				if(data=='fail'){
					alert('户名不可用');
				}
			},
			error : function() {
				alert('失败');
			}
		});
};
// 服务器根路径
var base_url = location.href.substring(0, location.href
		.indexOf(location.pathname));
// 项目名
var current_url = location.pathname.split('/')[1];
base_url += '/' + current_url;