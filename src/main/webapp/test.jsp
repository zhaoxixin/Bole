<%@ page contentType="text/html; charset=utf-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>test zhxn</title>
<script type="text/javascript">
function getName() {
	
	var name = $("div").value();
	
	window.onload.href="/list.action?name"
	
}
</script>
</head>
<body>
	<div>全国</div> 
	<a href="javascript:0" onclick="getName()"
	<%-- <a href="/list.action?name=${user.userId }&city="全国""
	 --%>
	
	<c:set var="name" value=""</a>"></c:set>
	<a href="/list.html?${name}">test</a>
</body>
</html>