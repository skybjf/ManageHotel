<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'hotel_control_traffic.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <div class="well clearfix">
    	<div id="hotel_control_traffic" class="span12">
    		
    	</div>
    	<button id="downloadTraffic" class="btn btn-primary offset4 span4 marT20" type="button">导出Excel文件</button>
    </div>
    <script type="text/javascript">
    	/*hotel_control_traffic*/
	 var colors = Highcharts.getOptions().colors,
     categories = ['第一季度', '第二季度', '第三季度', '第四季度'],
     name = 'Browser brands',
     data = [{
             y: 55.11,
             color: colors[0],
             drilldown: {
                 name: '第一季度',
                 categories: ['1', '2', '3'],
                 data: [10.85, 7.35, 33.06],
                 color: colors[0]
             }
         }, {
             y: 21.63,
             color: colors[1],
             drilldown: {
                 name: '第二季度',
                 categories: ['4', '5', '6'],
                 data: [1.58, 13.12, 5.43],
                 color: colors[1]
             }
         	}, {
             y: 11.94,
             color: colors[2],
             drilldown: {
                 name: '第三季度',
                 categories: ['7', '8', '9'],
                 data: [0.12, 0.19, 0.12],
                 color: colors[2]
             }
         }, {
             y: 7.15,
             color: colors[3],
             drilldown: {
                 name: '第四季度',
                 categories: ['10', '11', '12'],
                 data: [4.55, 1.42, 0.23],
                 color: colors[3]
             }
         }];


		 // Build the data arrays
		 var browserData = [];
		 var versionsData = [];
		 for (var i = 0; i < data.length; i++) {
		     // add browser data
		     browserData.push({
		         name: categories[i],
		         y: data[i].y,
		         color: data[i].color
		     });
		     // add version data
		     for (var j = 0; j < data[i].drilldown.data.length; j++) {
		         var brightness = 0.2 - (j / data[i].drilldown.data.length) / 5 ;
		         versionsData.push({
		             name: data[i].drilldown.categories[j],
		             y: data[i].drilldown.data[j],
		             color: Highcharts.Color(data[i].color).brighten(brightness).get()
		         });
		     }
		 }
		
		 // Create the chart
		 var charttraffic = new Highcharts.Chart({
		     chart: {
				width:900,
		         type: 'pie',
		         renderTo: 'hotel_control_traffic'
		     },
		     title: {
		         text: '客流量（2014）'
		     },
		     yAxis: {
		         title: {
		             text: ''
		         }
		     },
		     plotOptions: {
		         pie: {
		             shadow: false,
		             center: ['50%', '50%']
		         }
		     },
		     tooltip: {
		 	    valueSuffix: '%'
		     },
		     series: [{
		         name: '季度',
		         data: browserData,
		         size: '60%',
		         dataLabels: {
		             formatter: function() {
		                 return this.y > 5 ? this.point.name : null;
		             },
		             color: 'white',
		             distance: -30
		         }
		     }, {
		         name: '月份',
		         data: versionsData,
		         size: '80%',
		         innerSize: '60%',
		         dataLabels: {
		             formatter: function() {
		                 // display only if larger than 1
		                 return this.y > 1 ? '<b>'+ this.point.name +':</b> '+ this.y +'%'  : null;
		             }
		         }
		     }]
		 });
		 
		 $("#downloadTraffic").click(function(){
    		Highcharts.post('http://export.hcharts.cn/cvs.php', {
    			csv: charttraffic.getCSV()
    		});
	    });
    </script>
  </body>
</html>
