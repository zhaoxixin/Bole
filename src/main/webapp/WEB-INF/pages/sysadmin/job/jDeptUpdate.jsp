<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../baselist.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>部门新增</title>
</head>

<body>
<form name="icform" method="post">

<div id="menubar">
<div id="middleMenubar">
<div id="innerMenubar">
  <div id="navMenubar">
<ul>
	<li id="update"><a href="#" onclick="formSubmit('update','_self');this.blur();">更新</a></li>
	<li id="back"><a href="#" onclick="window.history.go(-1)">返回</a></li>
</ul>
  </div>
</div>
</div>
</div>
   
  <div class="textbox-title">
	<img src="../../staticfile/skin/default/images/icon/currency_yen.png"/>
部门新增
  </div> 
  
<div>


<div class="eXtremeTable" >
<table id="ec_table" class="tableRegion" width="98%" >
	<tbody class="tableBody" >
	<tr>
		<td>部门id:</td>
		<td ><input type="text" name="deptId" value="${dept.deptId }" readonly="readonly"/>
	</tr>
	<tr>
		<td>上级部门:</td>
		<td>
		<select name="parentDept.deptId" style="width:122px">
				<option value="0">请选择/一级部门</option>
				<c:forEach items="${parentList }" var="p">
					<option  <c:if test="${p.deptId ==dept.parentDept.deptId }">
					selected="selected"</c:if> value="${p.deptId }">${p.deptName }</option>
				</c:forEach>
			</select>
		</td>
		
	</tr>
	<tr>
		<td>部门名称:</td>
		<td><input type="text" name="deptName" value="${dept.deptName }"/></td>
	</tr>
	<tr>
		<td>部门状态:</td>
		<td>
			
			<input type="radio" name="state" value="1" <c:if test="${dept.state ==1}">checked="checked"</c:if>/>启用
			<input type="radio" name="state" value="0" <c:if test="${dept.state ==0}">checked="checked"</c:if>/>停用
		</td>
	</tr>
	
	</tbody>
</table>
</div>
 
</div>
 
 
</form>
</body>
</html>

