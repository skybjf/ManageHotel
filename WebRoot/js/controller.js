$(window).ready(function(){
	addBlue();
});
function addBlue(){
	var item=$("#left li");
	item.each(function(i){
		$(this).click(function() {
			item.each(function(){$(this).removeClass("active")});
			$(this).addClass('active');
		});
	});
}