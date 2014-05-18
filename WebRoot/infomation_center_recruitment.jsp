<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'infomation_center_recruitment.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link href="http://netdna.bootstrapcdn.com/font-awesome/3.0.2/css/font-awesome.css" rel="stylesheet">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>

<body>
	<div class="well">
		<div id="showrecruitment">
			<h3 class="text-center">招聘信息</h3>
			<ul>
				<li class="marT20">
					<h4>在招聘的岗位</h4>
					<div><b>月薪</b>：3000元	<b>招聘</b>：10-30人</div>
					<p>打破撕破担惊受怕冬季阿婆鸡婆随风飘散的佛教的批发价的婆婆都将打破打破附近的赔付判决哦</p>
					<div class="clearfix marT10">
						<button id="recruitmentReset" class="btn btn-primary btn-mini " type="button">修改</button>
						<button id="gobcaktorecruitment" class="btn btn-primary btn-mini " type="button">删除</button>	
					</div>
				</li>
				<li class="marT20">
					<h4>在招聘的岗位</h4>
					<div><b>月薪</b>：3000元	<b>招聘</b>：10-30人</div>
					<p>打破撕破担惊受怕冬季阿婆鸡婆随风飘散的佛教的批发价的婆婆都将打破打破附近的赔付判决哦</p>
				</li>
				<li class="marT20">
					<h4>在招聘的岗位</h4>
					<div><b>月薪</b>：3000元	<b>招聘</b>：10-30人</div>
					<p>打破撕破担惊受怕冬季阿婆鸡婆随风飘散的佛教的批发价的婆婆都将打破打破附近的赔付判决哦</p>
				</li>
				<li class="marT20">
					<h4>在招聘的岗位</h4>
					<div><b>月薪</b>：3000元	<b>招聘</b>：10-30人</div>
					<p>打破撕破担惊受怕冬季阿婆鸡婆随风飘散的佛教的批发价的婆婆都将打破打破附近的赔付判决哦</p>
				</li>
			</ul>
			<div class="clearfix">
				<button id="releaserecruitinfo" class="btn btn-primary marT10 offset4 span4" type="button">发布新岗位</button>
			</div>
		</div>
		<!-- 	+++++++++++++++++++++++++ -->
		
		<div class="recruitinfodiv hide">
			<div class="row-fluid"><input class="span12" type="text" /></div>
			<div class="row-fluid marT10"><b>月薪</b>：<input class="span1" type="text" />	<b>招聘</b>：<input class="span1" type="text" /></div>
			<div class="btn-toolbar" data-role="editor-toolbar"	data-target="#editor1">
				<div class="btn-group">
					<a class="btn dropdown-toggle" data-toggle="dropdown" title="Font"><i
						class="icon-font"></i><b class="caret"></b>
					</a>
					<ul class="dropdown-menu">
					</ul>
				</div>
				<div class="btn-group">
					<a class="btn dropdown-toggle" data-toggle="dropdown"
						title="Font Size"><i class="icon-text-height"></i>&nbsp;<b
						class="caret"></b>
					</a>
					<ul class="dropdown-menu">
						<li><a data-edit="fontSize 5"><font size="5">Huge</font>
						</a>
						</li>
						<li><a data-edit="fontSize 3"><font size="3">Normal</font>
						</a>
						</li>
						<li><a data-edit="fontSize 1"><font size="1">Small</font>
						
						</a>
						</li>
					</ul>
				</div>
				<div class="btn-group">
					<a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i
						class="icon-bold"></i>
					</a> <a class="btn" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i
						class="icon-italic"></i>
					</a>
				</div>
				<div class="btn-group">
					<a class="btn" data-edit="justifyleft"
						title="Align Left (Ctrl/Cmd+L)"><i class="icon-align-left"></i>
					</a> <a class="btn" data-edit="justifycenter"
						title="Center (Ctrl/Cmd+E)"><i class="icon-align-center"></i>
					</a> <a class="btn" data-edit="justifyright"
						title="Align Right (Ctrl/Cmd+R)"><i class="icon-align-right"></i>
					</a> <a class="btn" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i
						class="icon-align-justify"></i>
					</a>
				</div>
				<div class="btn-group">
					<a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i
						class="icon-undo"></i>
					</a> <a class="btn" data-edit="redo" title="Redo (Ctrl/Cmd+Y)"><i
						class="icon-repeat"></i>
					</a>
				</div>
	
			</div>
			
			<div id="editor1">输入内容&hellip;</div>
			<div class="clearfix">
				<button id="comfirreleaserecruit" class="btn btn-primary marT10 offset3 span2" type="button">发布</button>
				<button id="recruitmentReset" class="btn btn-primary marT10  span2" type="button">清除</button>
				<button id="gobcaktorecruitment" class="btn btn-primary marT10  span2" type="button">返回</button>	
			</div>
		</div>
	</div>
	<script>
		/* 编辑器 */
		$(function() {
			function initToolbarBootstrapBindings() {
				var fonts = [ 'Serif', 'Sans', 'Arial', 'Arial Black',
						'Courier', 'Courier New', 'Comic Sans MS', 'Helvetica',
						'Impact', 'Lucida Grande', 'Lucida Sans', 'Tahoma',
						'Times', 'Times New Roman', 'Verdana' ], fontTarget = $(
						'[title=Font]').siblings('.dropdown-menu');
						$.each(fonts,function(idx, fontName) {
									fontTarget
											.append($('<li><a data-edit="fontName ' + fontName +'" style="font-family:\''+ fontName +'\'">'
													+ fontName + '</a></li>'));
								});
				$('a[title]').tooltip({
					container : 'body'
				});
				$('.dropdown-menu input').click(function() {
					return false;
				}).change(
						function() {
							$(this).parent('.dropdown-menu').siblings(
									'.dropdown-toggle').dropdown('toggle');
						}).keydown('esc', function() {
					this.value = '';
					$(this).change();
				});

				$('[data-role=magic-overlay]').each(
						function() {
							var overlay = $(this), target = $(overlay
									.data('target'));
							overlay.css('opacity', 0).css('position',
									'absolute').offset(target.offset()).width(
									target.outerWidth()).height(
									target.outerHeight());
						});
				if ("onwebkitspeechchange" in document.createElement("input")) {
					var editorOffset = $('#editor1').offset();
					$('#voiceBtn').css('position', 'absolute').offset({
						top : editorOffset.top,
						left : editorOffset.left+ $('#editor1').innerWidth() - 35
					});
				} else {
					$('#voiceBtn').hide();
				}
			}
			;
			function showErrorAlert(reason, detail) {
				var msg = '';
				if (reason === 'unsupported-file-type') {
					msg = "Unsupported format " + detail;
				} else {
					console.log("error uploading file", reason, detail);
				}
				$('<div class="alert"> <button type="button" class="close" data-dismiss="alert">&times;</button>'+ '<strong>File upload error</strong> '+ msg+ ' </div>').prependTo('#alerts');
			}
			;
			initToolbarBootstrapBindings();
			$('#editor1').wysiwyg({fileUploadError : showErrorAlert});
			/* 发不招聘信息 */
			showToggle($('#releaserecruitinfo'),$('.recruitinfodiv'),$('#showrecruitment'),true);		
			showToggle($('#gobcaktorecruitment'),$('.recruitinfodiv'),$('#showrecruitment'),false);	
			$('#comfirreleaserecruit').click(function(){
				var str=$('#editor1').html();
				alert(str);
			});
		});
		
		/* 重写按钮 */
		$('#recruitmentReset').click(function(){
			$('#editor1').empty();
		});
	</script>
</body>
</html>
