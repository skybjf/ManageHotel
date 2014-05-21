function getJsonData() {
	$.ajax({
		url : base_url + '/baseAction!infoCenter',
		type : 'post',
		success : function(data) {
			$('#zhaopinzhaopin').html('<dt>	<h4>招聘信息</h4>	</dt>');
			$('#zhaopinCenter').html();
			
			for ( var i = 0; i < data.zhaopin.length; i++) {
				var text = '<h5>'+data.zhaopin[i].title+'</h5>'+data.zhaopin[i].content;
				var center='<h5>'+data.zhaopin[i].title+'</h5>'+data.zhaopin[i].content+'<div class="clearfix marT10"><button id="recruitmentChange" class="btn btn-primary btn-mini " type="button">修改</button>'+
				'&nbsp;<button id="" class="btn btn-primary btn-mini " type="button" onclick=delzhaopin('+data.zhaopin[i].id+')>删除</button></div>';
				$('#zhaopinzhaopin').append(text);
				$('#zhaopinCenter').append(center);
			}
			$('#newsnews').html('<dt>	<h4>酒店新闻</h4>	</dt>');
			$('#newCenter').html();
			for ( var i = 0; i < data.news.length; i++) {
				var text = '<dd><b>'+data.news[i].title+'</b>&nbsp;&nbsp;&nbsp;&nbsp;发布时间：'+data.news[i].time+'</dd><dd>'+data.news[i].content+'</dd>';
				var center = '<li class="marT20"><h4>'+data.news[i].title+'</h4><p>'+data.news[i].content+'</p><div class="clearfix marT10"><button id="gobcaktorecruitment" class="btn btn-primary btn-mini " type="button">删除</button></div>';
				$('#newsnews').append(text);
				$('#newCenter').append(center);
			}
			$('#meetinging').html('<dt>	<h4>会议安排</h4>	</dt>');
			$('#meetingCenter').html();
			for ( var i = 0; i < data.news.length; i++) {
				var text = '<dd><b>'+data.meeting[i].title+'</b>&nbsp;&nbsp;&nbsp;&nbsp;发布时间：'+data.meeting[i].time+'</dd><dd>'+data.meeting[i].content+'</dd>';
				var center='<li class="marT20"><h4>'+data.meeting[i].title+'</h4><div>data.meeting[i].time</div><p>'+data.meeting[i].content+'</p>'+
					'<div class="clearfix marT10"><button id="meetingReset" class="btn btn-primary btn-mini " type="button">修改</button>	<button id="meetingDel" class="btn btn-primary btn-mini " type="button">删除</button>	</div></li>'
				$('#meetinging').append(text);
				$('#meetingCenter').append(center);
			}
			$('#discount').html('<dt>	<h4>打折信息</h4>	</dt>');
			for ( var i = 0; i < data.news.length; i++) {
				var text = '<dd><b>'+data.discount[i].title+'</b>&nbsp;&nbsp;&nbsp;&nbsp;发布时间：'+data.discount[i].time+'</dd><dd>'+data.discount[i].content+'</dd>';
				$('#discount').append(text);
			}
			
		},
		error : function() {
			alert('失败');
		}
	});
}
function delzhaopin(id){
	$.ajax({
		url : base_url + '/recruitmentAction!delRecruitment?recruitment.id='+id,
		type : 'post',
		success : function(data) {
			alert(data);
			location.href=base_url+'/infomation_center.jsp';
		},
		error : function() {
		alert('失败');
		}
	});
}

// 服务器根路径
var base_url = location.href.substring(0, location.href
		.indexOf(location.pathname));
// 项目名
var current_url = location.pathname.split('/')[1];
base_url += '/' + current_url;