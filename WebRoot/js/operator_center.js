function ready() {

	$.ajax({
		url : base_url + '/operatorAction!listOperator?page=1',
		type : 'post',
		success : function(data) {
			
			$('#showSuper').html('<tr class="warning">	<td>id</td>	<td>姓名</td>	<td>性别</td>	<td>邮箱</td>	<td>权限级别</td><td>操作</td>	</tr>');
			var text ;
			for(var i=0;i<data.operator.length;i++){
				var tmp;
				if(i%2==0){
					tmp='<tr class="success"> <td>';
				}else{
					tmp='<tr class="info"> <td>';
				}
				text=tmp+ data.operator[i].id + '</td> <td>' + data.operator[i].userName + '</td> <td>' + data.operator[i].gender + '</td> <td>' +data.operator[i].mail
				+'</td> <td>'+data.operator[i].userType+'</td><td><a class="btn btn-mini">修改</a> <a class="btn btn-mini" onclick=delOperator('+data.operator[i].id+')>删除</a></td></tr>';
				$('#showSuper').append(text);
			}
			for(var j=0;j<10-data.operator.length;j++){
				if((data.operator.length+j)%2==0){
					$('#showSuper').append('<tr class="success" height="32px" ><td>&nbsp;</td><td></td><td></td><td></td><td></td><td></td></tr>');
				}else{
					
					$('#showSuper').append('<tr class="info"  height="32px" ><td>&nbsp</td><td></td><td></td><td></td><td></td><td></td></tr>');
				}
			}
			
			$('#showPage').html('');
			$('#showPage').append(
					'<ul><li><a onclick=tiaoye(1)>首页</a></li><li ><a onclick=tiaoye('+data.prePage+')>前一页</a></li><li><a onclick=tiaoye('+data.nextPage+')>后一页</a></li><li><a onclick=tiaoye('+data.lastPage+')>尾页</a></li><li class="active"><a>当前第'+data.nowPage+'页</a></li><li class="active"><a>共'+data.lastPage+'页</a></li></ul>')
					;
		},
	});
	// 服务器根路径
};

function tiaoye(page) {

	$.ajax({
		url : base_url + '/operatorAction!listOperator?page='+page,
		type : 'post',
		success : function(data) {
			
			$('#showSuper').html('');
			$('#showSuper').append('<tr class="warning">	<td>id</td>	<td>姓名</td>	<td>性别</td>	<td>邮箱</td>	<td>权限级别</td><td>操作</td>	</tr>');
			var text ;
			for(var i=0;i<data.operator.length;i++){
				var tmp;
				if(i%2==0){
					tmp='<tr class="success"> <td>';
				}else{
					tmp='<tr class="info"> <td>';
				}
				text=tmp+ data.operator[i].id + '</td> <td>' + data.operator[i].userName + '</td> <td>' + data.operator[i].gender + '</td> <td>' +data.operator[i].mail
				+'</td> <td>'+data.operator[i].userType+'</td><td><a class="btn btn-mini">修改</a> <a class="btn btn-mini" onclick=delOperator('+data.operator[i].id+')>删除</a></td></tr>';
				$('#showSuper').append(text);
			}
			for(var j=0;j<10-data.operator.length;j++){
				if((data.operator.length+j)%2==0){
					$('#showSuper').append('<tr class="success" height="32px" ><td>&nbsp;</td><td></td><td></td><td></td><td></td><td></td></tr>');
				}else{
					
					$('#showSuper').append('<tr class="info"  height="32px" ><td>&nbsp</td><td></td><td></td><td></td><td></td><td></td></tr>');
				}
			}
			$('#showPage').html('');
			$('#showPage').append(
					'<ul><li><a onclick=tiaoye(1)>首页</a></li><li ><a onclick=tiaoye('+data.prePage+')>前一页</a></li><li><a onclick=tiaoye('+data.nextPage+')>后一页</a></li><li><a onclick=tiaoye('+data.lastPage+')>尾页</a></li><li class="active"><a>当前第'+data.nowPage+'页</a></li><li class="active"><a>共'+data.lastPage+'页</a></li></ul>')
					;
		},
	});
	// 服务器根路径
};

function delOperator(id) {

	$.ajax({
		url : base_url + '/operatorAction!delOperator?operator.id='+id,
		type : 'post',
		success : function(data) {
			
			$('#showSuper').html('<tr class="warning">	<td>id</td>	<td>姓名</td>	<td>性别</td>	<td>邮箱</td>	<td>权限级别</td><td>操作</td>	</tr>');
			var text ;
			for(var i=0;i<data.operator.length;i++){
				var tmp;
				if(i%2==0){
					tmp='<tr class="success"> <td>';
				}else{
					tmp='<tr class="info"> <td>';
				}
				text=tmp+ data.operator[i].id + '</td> <td>' + data.operator[i].userName + '</td> <td>' + data.operator[i].gender + '</td> <td>' +data.operator[i].mail
				+'</td> <td>'+data.operator[i].userType+'</td><td><a class="btn btn-mini">修改</a> <a class="btn btn-mini" onclick=delOperator('+data.operator[i].id+')>删除</a></td></tr>';
				$('#showSuper').append(text);
			}
			for(var j=0;j<10-data.operator.length;j++){
				if((data.operator.length+j)%2==0){
					$('#showSuper').append('<tr class="success" height="32px" ><td>&nbsp;</td><td></td><td></td><td></td><td></td><td></td></tr>');
				}else{
					
					$('#showSuper').append('<tr class="info"  height="32px" ><td>&nbsp</td><td></td><td></td><td></td><td></td><td></td></tr>');
				}
			}
			$('#showPage').html('');
			$('#showPage').append(
					'<ul><li><a onclick=tiaoye(1)>首页</a></li><li ><a onclick=tiaoye('+data.prePage+')>前一页</a></li><li><a onclick=tiaoye('+data.nextPage+')>后一页</a></li><li><a onclick=tiaoye('+data.lastPage+')>尾页</a></li><li class="active"><a>当前第'+data.nowPage+'页</a></li><li class="active"><a>共'+data.lastPage+'页</a></li></ul>')
					;
		},
	});
	// 服务器根路径
};

function queryOperator() {
	var queryName =$('#queryName').val().trim();
	$.ajax({
		url : base_url + '/operatorAction!listOperator?queryName='+queryName,
		type : 'post',
		success : function(data) {
			
			$('#showSuper').html('<tr class="warning">	<td>id</td>	<td>姓名</td>	<td>性别</td>	<td>邮箱</td>	<td>权限级别</td><td>操作</td>	</tr>');
			var text ;
			for(var i=0;i<data.operator.length;i++){
				var tmp;
				if(i%2==0){
					tmp='<tr class="success"> <td>';
				}else{
					tmp='<tr class="info"> <td>';
				}
				text=tmp+ data.operator[i].id + '</td> <td>' + data.operator[i].userName + '</td> <td>' + data.operator[i].gender + '</td> <td>' +data.operator[i].mail
				+'</td> <td>'+data.operator[i].userType+'</td><td><a class="btn btn-mini">修改</a> <a class="btn btn-mini" onclick=delOperator('+data.operator[i].id+')>删除</a></td></tr>';
				$('#showSuper').append(text);
			}
			for(var j=0;j<10-data.operator.length;j++){
				if((data.operator.length+j)%2==0){
					$('#showSuper').append('<tr class="success" height="32px" ><td>&nbsp;</td><td></td><td></td><td></td><td></td><td></td></tr>');
				}else{
					
					$('#showSuper').append('<tr class="info"  height="32px" ><td>&nbsp</td><td></td><td></td><td></td><td></td><td></td></tr>');
				}
			}
			$('#showPage').html('');
			$('#showPage').append(
					'<ul><li><a onclick=tiaoye(1)>首页</a></li><li ><a onclick=tiaoye('+data.prePage+')>前一页</a></li><li><a onclick=tiaoye('+data.nextPage+')>后一页</a></li><li><a onclick=tiaoye('+data.lastPage+')>尾页</a></li><li class="active"><a>当前第'+data.nowPage+'页</a></li><li class="active"><a>共'+data.lastPage+'页</a></li></ul>')
					;
		},
	});
	// 服务器根路径
};
var base_url = location.href.substring(0, location.href
		.indexOf(location.pathname));
// 项目名
var current_url = location.pathname.split('/')[1];
base_url += '/' + current_url;