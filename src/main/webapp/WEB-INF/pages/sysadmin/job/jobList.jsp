<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../baselist.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>职位列表</title>
</head>

<body>
<form name="icform" method="post">

<div id="menubar">
<div id="middleMenubar">
<div id="innerMenubar">
  <div id="navMenubar">
<ul>
<!-- 	<li id="view"><a href="#" onclick="formSubmit('toview','_self');this.blur();">查看</a></li>
	<li id="new"><a href="#" onclick="formSubmit('tocreate','_self');this.blur();">新增</a></li>
	<li id="update"><a href="#" onclick="formSubmit('toupdate','_self');this.blur();">修改</a></li>
	<li id="delete"><a href="#" onclick="formSubmit('delete','_self');this.blur();">删除</a></li> -->
	<li id="new"><a href="#" onclick="formSubmit('pass','_self');this.blur();">通过</a></li>
	<li id="new"><a href="#" onclick="formSubmit('stop','_self');this.blur();">停用</a></li>
	<li id="new"><a href="#" onclick="formSubmit('area','_self');this.blur();">分布</a></li>
	<li id="new"><a href="#" onclick="formSubmit('download','_self');this.blur();">下载</a></li>
</ul>
  </div>
</div>
</div>
</div>
   
  <div class="textbox-title">
	<img src="../../staticfile/skin/default/images/icon/currency_yen.png"/>
    职位列表
  </div> 
  
<div>

<div class="eXtremeTable" >
<table id="ec_table" class="tableRegion" width="98%" >
	<thead>
	<tr>
		<td class="tableHeader"><input type="checkbox" name="selid" onclick="checkAll('jobId',this)"></td>
		<td class="tableHeader">序号</td>
		<td class="tableHeader">编号</td>
		<td class="tableHeader">职位名称</td>
		<td class="tableHeader">职位描述</td>
		<td class="tableHeader">所在城市</td>
		<td class="tableHeader">职位状态</td>
	</tr>
	</thead>
	<tbody class="tableBody" >
	
	<c:forEach items="${jobList}" var="j" varStatus="status">
	<tr class="odd" onmouseover="this.className='highlight'" onmouseout="this.className='odd'">
		<td><input type="checkbox" name="jobId" value="${j.jobId}"/></td>
		<td>${status.index+1}</td>
		<td>${j.jobId}</td>
		<td>${j.jobName}</td>
		<td>${j.jobInfo.discription}</td>
		<td>${j.jobInfo.city}</td> <!--通过job查jobinfo  -->
		<td>
			<c:if test="${j.state==0}"><a href="start?jobId=${j.jobId}"><font color="green">等待审核</font></a></c:if>
			<c:if test="${j.state==1}"><a href="stop?jobId=${j.jobId}"><font color="red">审核通过</font></a></c:if>
		</td>
	</tr>
	</c:forEach>
	
	</tbody>
</table>
</div>
 
</div>
 
 
</form>
</body>
</html>

