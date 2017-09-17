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
	<button>开始</button>
	<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
	<div id="main" style="width: 600px; height: 400px;"></div>

	<script type="text/javascript">
		$(document).ready(function() {
			$("button").click(function() {
				/* var params = {};
				params.num = "num";  */
				$.ajax({
					async : false,
					url : "/sysadmin/job/show.action",
					type : "POST",
					dataType : "json",
					//data:params, 
					/* success : function(msg) {
						alert(1);
						alert(result);
						//drawBar(msg);
					},
					error : function(msg) {
						alert(msg + '1');
						//drawBar(msg);
					} */
				}).done(function(result) {
					alert(result.a);
					alert(result.b);
					
					drawBar(result.b);
				});
			});
		});

		function drawBar(data) {

			// 基于准备好的dom，初始化echarts实例
			var myChart = echarts.init(document.getElementById('main'));
			// 指定图表的配置项和数据
			var option = {
				title : {
					text : 'Java工作分布图'
				},
				tooltip : {},
				legend : {
					data : [ '地区' ]
				},
				xAxis : {
					data : [ "北京", "上海", "广州", "杭州", "深圳", "石家庄" ]
				},
				yAxis : {},
				series : [ {
					name : '地区',
					type : 'bar',
					data : [ 36, 36, 36, 25, 20, 15 ]
					//data : "["+result.b+"]"
				} ]
			};
			// 使用刚指定的配置项和数据显示图表。
			myChart.setOption(option);
		}
	</script>

</body>
</html>