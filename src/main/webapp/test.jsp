<%@ page contentType="text/html; charset=utf-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="js/jquery-1.4.2.js"></script>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>test zhxn</title>
<div id="ab">北京</div> 
<script type="text/javascript">

    // 开始写 jQuery 代码...
		function getName() {
			
			alert(1);
			var name = $("#ab").value();
			alert(2);
			location.href="${ctx}/about.html?vv=name";
			
		}

</script>
</head>
<body>
	
	<div id="aa">全国</div> 
	<a href="javascript:0" onclick="getName()">请求</a>
	<a href="javascript:0" onclick="getName()">请求</a>
</body>
</html>