<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'hotel_control_roomuse.jsp' starting page</title>
    
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
    	<div id="hotel_control_roomuse" class="span12">
    		
    	</div>
    	
    	<button id="downloadRoomuse" class="btn btn-primary offset4 span4 marT20" type="button">导出Excel文件</button>
    </div>
    <script type="text/javascript">
    	/*	 hotel_control_roomuse*/
		var chart = new Highcharts.Chart({
			chart: {renderTo: 'hotel_control_roomuse',width:900},                                                                
	        title: {                                                          
	            text: '客流量'                                     
	        },                                                                
	        xAxis: {                                                          
	            categories: ['Apples', 'Oranges', 'Pears', 'Bananas', 'Plums']
	        },                                                                
	        tooltip: {                                                        
	            formatter: function() {                                       
	                var s;                                                    
	                if (this.point.name) { // the pie chart                   
	                    s = ''+                                               
	                        this.point.name +': '+ this.y +' fruits';         
	                } else {                                                  
	                    s = ''+                                               
	                        this.x  +': '+ this.y;                            
	                }                                                         
	                return s;                                                 
	            }                                                             
	        },                                                                                                                               
	        series: [{                                                        
	            type: 'column',                                               
	            name: 'Jane',                                                 
	            data: [3, 2, 1, 3, 4]                                         
	        }, {                                                              
	            type: 'column',                                               
	            name: 'John',                                                 
	            data: [2, 3, 5, 7, 6]                                         
	        }, {                                                              
	            type: 'column',                                               
	            name: 'Joe',                                    
	            data: [4, 3, 3, 9, 0]                                         
	        }, {                                                              
	            type: 'spline',                                               
	            name: 'Average',                                              
	            data: [3, 2.67, 3, 6.33, 3.33],                               
	            marker: {                                                     
	            	lineWidth: 2,                                               
	            	lineColor: Highcharts.getOptions().colors[3],               
	            	fillColor: 'white'                                          
	            }                                                             
	        }]          
		});
    	$("#downloadRoomuse").click(function(){
    		Highcharts.post('http://export.hcharts.cn/cvs.php', {
    			csv: chart.getCSV()
    		});
	    });
    </script>
  </body>
</html>
