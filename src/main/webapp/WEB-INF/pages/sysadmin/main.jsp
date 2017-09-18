<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../base.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>模块介绍</title>
  	<link rel="stylesheet" rev="stylesheet" type="text/css" href="${ctx}/staticfile/skin/default/css/main.css" media="all"/>
</head>

<body>
<form>
<div class="textbox"></div>

	<div class="modelDiv">

        <table class="modelTable" cellspacing="1">
        	<tr>
        		<td colspan="2" class="modelTitle">系统管理模块介绍</td>
        	</tr>
        	<tr>
        		<td colspan="2" class="subModelTitle">伯乐管理</td>
        	</tr>
        	<tr>
				<td class="model_intro_left">公司管理：</td>
				<td class="model_intro_right">查看注册公司信息
<!-- 				<p>＝严密的数据访问控制,充分保障数据的安全性。</p> -->
				</td>
        	</tr>        	
			<tr>
				<td class="model_intro_left">用户管理：</td>
				<td class="model_intro_right">查看应聘者信息</td>
        	</tr>        	
			<tr>
				<td class="model_intro_left" width="169">职位管理：</td>
				<td class="model_intro_right" width="81%">对职位进行维护和管理。</td>
			</tr>
			<tr>
				<td class="model_intro_left" width="169">数据分析：</td>
				<td class="model_intro_right" width="81%">分析职位位置分布
				</td>
			</tr>  
			
			<tfoot>
				<tr>
					<td colspan="2" class="tableFooter"></td>
				</tr>
			</tfoot>
        </table>
 
	</div>
</form>
</body>

</html>