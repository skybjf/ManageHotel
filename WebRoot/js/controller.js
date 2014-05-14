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