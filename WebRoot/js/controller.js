$(window).ready(function(){
	addBlue();
	
});
function addBlue(){
	var item=$("#left li");
	item.each(function(i){
		$(this).click(function() {
			item.each(function(){$(this).removeClass("active");});
			$(this).addClass('active');
		});
	});
}

//点击显示隐藏
function showForm(btn,showdiv){
	btn.click(function(){
		showdiv.fadeToggle();
	});
}