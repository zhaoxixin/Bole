<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../baselist.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<script type="text/javascript" src="/staticfile/js/jquery-1.6.2.js"></script>
<!--

//-->
</script>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>ECharts</title>
<!-- 引入 echarts.js -->
<script src="/staticfile/js/echarts.js"></script>
</head>
<body>
	<!-- <button>开始</button> -->
	<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
	<div id="main" style="width: 600px; height: 400px;"></div>

	<script type="text/javascript">
		var myChart = echarts.init(document.getElementById('main'));
		// 显示标题，图例和空的坐标轴
		myChart.setOption({
		    title: {
		        text: '异步数据加载示例'
		    },
		    tooltip: {},
		    legend: {
		        data:['销量']
		    },
		    xAxis: {
		        data: []
		    },
		    yAxis: {},
		    series: [{
		        name: '销量',
		        type: 'bar',
		        data: []
		    }]
		});
	
		
		
		$.get('data.json').done(function (data) {
		    // 填入数据
		    myChart.setOption({
		        xAxis: {
		            data: data.categories
		        },
		        series: [{
		            // 根据名字对应到相应的系列
		            name: '销量',
		            data: data.data
		        }]
		    });
		});
	</script>

</body>
</html>