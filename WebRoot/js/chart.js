$(function() {
	/* traffic 客流量 */
	$('#traffic').highcharts({
		chart : {
			plotBackgroundColor : null,
			plotBorderWidth : null,
			plotShadow : false
		},
		exporting : {
			enabled : false
		},
		title : {text : '客流量百分比'},
		tooltip : {pointFormat : '{series.name}: <b>{point.percentage:.1f}%</b>'},
		plotOptions : {
			pie : {
				allowPointSelect : true,
				cursor : 'pointer',
				dataLabels : {
					enabled : true,
					color : '#000000',
					connectorColor : '#000000',
					format : '<b>{point.name}</b>: {point.percentage:.1f} %'
						}
			}
		},
		credits : {	enabled : false	},
		series : [ {
			type : 'pie',
			name : '客流量百分比',
			data : [ [ '1~3月', 45.0 ], [ '4~6月', 26.8 ],[ '7~9月', 8.5 ], [ '10~12月', 6.2 ], ]}]});

	/* roomuse 客房使用量 */
	$('#roomuse').highcharts({
		chart : {
			type : 'column'
		},
		title : {
			text : '客房使用量'
		},
		subtitle : {
			text : ''
		},
		xAxis : {
			categories : [ '豪华商务', '高级商务', '豪华双人', '豪华大床', '单人房' ]
		},
		yAxis : {
			min : 0,
			title : {
				text : '房间数'
			}
		},
		tooltip : {
			headerFormat : '<span style="font-size:10px">{point.key}：</span>',
			pointFormat : '<b>{point.y:.1f} 间</b>',
			footerFormat : '',
			shared : true,
			useHTML : true
		},
		plotOptions : {
			column : {
				pointPadding : 0.2,
				borderWidth : 0
			}
		},
		legend : {
			enabled : false
		},
		credits : {
			enabled : false
		},
		exporting : {
			enabled : false
		},
		series : [ {
			name : "",
			data : [ 49.9, 71.5, 106.4, 129.2, 144.0 ]
		} ]
	});

	/* craft 收益 */
	$('#craft').highcharts(
			{
				chart : {
					type : "spline"
				},
				title : {
					text : '酒店收益',
					x : -20
				// center
				},
				subtitle : {
					text : '',
					x : -20
				},
				xAxis : {
					categories : [ 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
							'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec' ]
				},
				yAxis : {
					title : {
						text : '收益金额(￥)'
					},
					plotLines : [ {
						value : 0,
						width : 1,
						color : '#808080'
					} ]
				},
				tooltip : {
					valueSuffix : '￥'
				},
				legend : {
					enabled : false
				},
				credits : {
					enabled : false
				},
				exporting : {
					enabled : false
				},
				series : [ {
					name : '收益',
					data : [ 7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3,
							18.3, 13.9, 9.6 ]
				} ]
			});

	/* temperature 温度检测 */
	$('#temperature').highcharts({
		chart : {type : "line"},
		title : {
			text : '十天温度',
			x : -20
			// center
		},
		subtitle : {
			text : '',
			x : -20
		},
		xAxis : {
			categories : ['Sun.', 'Mon.', 'Tue.', 'Wed.', 'Thur.', 'Fri.','Sat.']
		},
		yAxis : {
			title : {text : '摄氏度(℃)'},
			plotLines : [ {
				value : 0,
				width : 1,
				color : '#808080'
			} ]
		},
		tooltip : {	valueSuffix : '￥'},
		legend : {enabled : false},
		credits : {	enabled : false},
		exporting : {enabled : false},
		series : [ {
			name : '收益',
			data : [25, 27, 24.5, 25.2, 26.5, 27.8,28]
		} ]
	});
	
	
	
});