<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../baselist.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<script type="text/javascript" src="/staticfile/js/jquery-1.6.2.js"></script>
</script>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>ECharts</title>
<!-- 引入 echarts.js -->
<script src="/staticfile/js/echarts/echarts.js"></script>
<script src="/staticfile/js/echarts/macarons.js"></script>
<script src="/staticfile/js/echarts/dark.js"></script>
<script src="/staticfile/js/echarts/infographic.js"></script>
<script src="/staticfile/js/echarts/roma.js"></script>
<script src="/staticfile/js/echarts/shine.js"></script>
<script src="/staticfile/js/echarts/vintage.js"></script>
</head>
<body>
	<!-- <button>开始</button> -->
	<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
	
	<div >
		<span  id="main" style="width: 600px; height: 400px; top:200px; display: inline-block" ></span >
		<span  id="main2" style="width: 600px; height: 400px;  top:200px; display: inline-block"></span >
	</div>
	
	<div>
	<span  id="main3" style="width: 600px; height: 400px;"></span >
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			$.ajax({
				async : false,
				url : "/sysadmin/job/show.action",
				type : "POST",
				dataType : "json",
			}).done(function(map) {
				drawBar(map.jobNum);
				drawBar2(map.salary);
				
			});
		});

		function drawBar(param) {

			// 基于准备好的dom，初始化echarts实例
			var myChart = echarts.init(document.getElementById('main'));
			// 指定图表的配置项和数据
			var option = {
				title : {
					text : '各城市职位数量'
				},
				tooltip : {},
				legend : {
					data : [ '地区' ]
				},
				xAxis : {
					data : [ "北京", "上海", "广州", "深圳", "杭州", "苏州" ]
				},
				yAxis : {},
				series : [ {
					name : '地区',
					type : 'bar',
					//data : [ 36, 36, 36, 25, 20, 15 ]
					data : param
				} ]
			};
			// 使用刚指定的配置项和数据显示图表。
			myChart.setOption(option);
		}
	</script>

	<!--  <script type="text/javascript">
	
		function drawBar2(data) {	
		var myChart = echarts.init(document.getElementById('main2'));
				// 显示标题，图例和空的坐标轴
				myChart.setOption({
					title : {
						text : '异步数据加载示例'
					},
					tooltip : {},
					legend : {
						data : [ '销量' ]
					},
					xAxis : {
						data : data.categories
					},
					yAxis : {},
					series : [ {
						name : '销量',
						type : 'bar',
						data : data.data
					} ]
				});
				
		}
	</script>  -->
	
	<script type="text/javascript">
	function drawBar2(data) {
	//app.title = '极坐标系下的堆叠柱状图';
	var myChart = echarts.init(document.getElementById('main2'));
/* 	var data = [
	    [5000, 10000, 6785.71],
	    [4000, 10000, 6825],
	    [3000, 6500, 4463.33],
	    [2500, 5600, 3793.83],
	    [2000, 4000, 3060],
	    [2000, 4000, 3222.33],
	    [2500, 4000, 3133.33],
	    [1800, 4000, 3100],
	    [2000, 3500, 2750],
	    [2000, 3000, 2500],
	    [1800, 3000, 2433.33],
	    [2000, 2700, 2375],
	    [1500, 2800, 2150],
	    [1500, 2300, 2100],
	    [1600, 3500, 2057.14],
	    [1500, 2600, 2037.5],
	    [1500, 2417.54, 1905.85],
	    [1500, 2000, 1775],
	    [1500, 1800, 1650]
	]; */
	var cities = ['北京', '上海',  '广州','深圳', '杭州','苏州'];//  '南京', '福州', '青岛', '济南', '长春', '大连', '温州', '郑州', '武汉', '成都', '东莞', '沈阳', '烟台'];
	var barHeight = 50;

	option = {
	    title: {
	        text: '各个城市的薪资水平',
	        subtext: ''
	    },
	    legend: {
	        show: true,
	        data: ['价格范围', '均值']
	    },
	    grid: {
	        top: 100
	    },
	    angleAxis: {
	        type: 'category',
	        data: cities
	    },
	    tooltip: {
	        show: true,
	        formatter: function (params) {
	            var id = params.dataIndex;
	            return cities[id] + '<br>最低：' + data[id][0] + '<br>最高：' + data[id][1] + '<br>平均：' + data[id][2];
	        }
	    },
	    radiusAxis: {
	    },
	    polar: {
	    },
	    series: [{
	        type: 'bar',
	        itemStyle: {
	            normal: {
	                color: 'transparent'
	            }
	        },
	        data: data.map(function (d) {
	            return d[0];
	        }),
	        coordinateSystem: 'polar',
	        stack: '最大最小值',
	        silent: true
	    }, {
	        type: 'bar',
	        data: data.map(function (d) {
	            return d[1] - d[0];
	        }),
	        coordinateSystem: 'polar',
	        name: '价格范围',
	        stack: '最大最小值'
	    }, {
	        type: 'bar',
	        itemStyle: {
	            normal: {
	                color: 'transparent'
	            }
	        },
	        data: data.map(function (d) {
	            return d[2] - barHeight;
	        }),
	        coordinateSystem: 'polar',
	        stack: '均值',
	        silent: true,
	        z: 10
	    }, {
	        type: 'bar',
	        data: data.map(function (d) {
	            return barHeight * 2
	        }),
	        coordinateSystem: 'polar',
	        name: '均值',
	        stack: '均值',
	        barGap: '-100%',
	        z: 10
	    }],
	    legend: {
	        show: true,
	        data: ['A', 'B', 'C']
	    }
	};
	// 使用刚指定的配置项和数据显示图表。
	myChart.setOption(option);
	}
	</script>
	
	
	<!--职位数量在城市中的分布  -->
	<script type="text/javascript">
	
	
	</script>
	
	
</body>
</html>