$(window).ready(function() {
	addBlue();
});
function addBlue() {
	var item = $("#left li");
	item.each(function(i) {
		$(this).click(function() {
			item.each(function() {
				$(this).removeClass("active");
			});
			$(this).addClass('active');
		});
	});
}

// 点击显示隐藏
function showForm(btn, showdiv) {
	btn.click(function() {
		showdiv.fadeToggle();
	});
}

// 点击显示，点击另一个按钮隐藏
function showToggle(btn, showdiv, hidediv, flag) {
	btn.click(function() {
		if (flag) {
			hidediv.hide();
			showdiv.fadeIn();
		} else {
			showdiv.hide();
			hidediv.fadeIn();
		}
	});
}

function addStatus(firstCycle, sencondCycle) {
	firstCycle.each(function(i) {
		$(this).click(function() {
			var index = i;
			sencondCycle.each(function(g,n) {
				$(this).hide();
				if (index === g) {
					$(n).fadeIn();
				}
			});
		});
	});
}

//检验非空
function checkNull(e){
    var x = e.value;
	if(x.length<=0||x===""){
        e.addClass("error");
    }
}
//修改input为可修改
function changeInput(flag,btnItem,divItem){
	btnItem.each(function(i){
		$(this).click(function(){
			var index = i;
			divItem.each(function(g,n) {
				if (index === g) {
					if(flag){
						$(n).children('input').removeAttr("readonly");
					}else{
						$(n).children('input').attr("readonly","readonly");
					}
				}
			});
		});
	});
}

//添加input框
function addInput(btnItem,divItem){
	btnItem.each(function(i){
		$(this).click(function(){
			var index = i;
			divItem.each(function(g,n) {
				if (index === g) {
					$(n).append("<input class='f_l' type='text' value=''/>");
				}
			});
		});
	});
}


