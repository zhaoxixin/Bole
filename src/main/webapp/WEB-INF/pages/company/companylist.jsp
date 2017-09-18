<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html xmlns:wb="http://open.weibo.com/wb">
<head>
<script id="allmobilize" charset="utf-8" src="style/js/allmobilize.min.js"></script>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script type="text/javascript" src="${ctx}/style/js/jquery.1.4.4.min.js"></script>
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="alternate" media="handheld"  />
<!-- end 云适配1 -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>全国-公司列表-拉勾网-最专业的互联网招聘平台</title>
<meta property="qc:admins" content="23635710066417756375" />
<meta content="全国condition-condition-公司列表-拉勾网-最专业的互联网招聘平台" name="description">
<meta content="全国condition-公司列表-拉勾网-最专业的互联网招聘平台" name="keywords">
<meta name="baidu-site-verification" content="QIQ6KC1oZ6" />

<!-- <div class="web_root"  style="display:none">h</div> -->
<script type="text/javascript">
var ctx = "h";
</script>
<link rel="Shortcut Icon" href="h/images/favicon.ico">
<link rel="stylesheet" type="text/css" href="style/css/style.css"/>
<link rel="stylesheet" type="text/css" href="style/css/external.min.css"/>
<link rel="stylesheet" type="text/css" href="style/css/popup.css"/>
<script src="style/js/jquery.1.10.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="style/js/jquery.lib.min.js"></script>
<script src="style/js/ajaxfileupload.js" type="text/javascript"></script>
<script type="text/javascript" src="style/js/additional-methods.js"></script>
<!--[if lte IE 8]>
    <script type="text/javascript" src="style/js/excanvas.js"></script>
<![endif]-->
<script type="text/javascript">
var youdao_conv_id = 271546; 
</script> 
<script type="text/javascript" src="style/js/conv.js"></script>
</head>
<body>
<div>

<div id="body">
	<div id="header">
    	<div class="wrapper">
    		<a href="index.html" class="logo">
    			<img src="style/images/logo.png" width="229" height="43" alt="拉勾招聘-专注互联网招聘" />
    		</a>
    		<ul class="reset" id="navheader">
    			<li><a href="javascript:void(0)" onclick="location.href='/.action'">首页</a></li>
	    		    		</ul>
        	            <ul class="loginTop">
            	<!-- <li><a href="login.html" rel="nofollow">登录</a></li>  -->
            	<li>欢迎 [ ${company.companyName} ]回来</li>
            	<li><a href="javascript:void(0)" onclick="location.href='logout.action'">退出</a></li>
            </ul>
                                </div>
    </div><!-- end #header -->
    <div id="container">
        
        <div class="clearfix">
            <div class="content_l">
            	<form id="companyListForm" style="width: 750px" name="companyListForm" method="get" action="h/c/companylist.html">
	                <input type="hidden" id="city" name="city" value="全国" />
	                <input type="hidden" id="fs" name="fs" value="" />
	                <input type="hidden" id="ifs" name="ifs" value="" />
	                <input type="hidden" id="ol" name="ol" value="" />
	                <!-- <dl class="hc_tag">
	                    <dt>
	                        <h2 class="fl">热门公司</h2>
	                        <ul class="workplace reset fr" id="workplaceSelect">
	                        	                                <li >
                                	<a href="javascript:void(0)"  class="current" >热门城市</a> 
                                	                                	|
                                	                                </li>
	                                                            <li >
                                	<a href="javascript:void(0)" >北京</a> 
                                	                                	|
                                	                                </li>
	                                                            <li >
                                	<a href="javascript:void(0)" >上海</a> 
                                	                                	|
                                	                                </li>
	                                                            <li >
                                	<a href="javascript:void(0)" >广州</a> 
                                	                                	|
                                	                                </li>
	                                                            <li >
                                	<a href="javascript:void(0)" >深圳</a> 
                                	                                	|
                                	                                </li>
	                                                            <li >
                                	<a href="javascript:void(0)" >成都</a> 
                                	                                	|
                                	                                </li>
	                                                            <li >
                                	<a href="javascript:void(0)" >杭州</a> 
                                	                                	|
                                	                                </li>
	                                                            <li >
                                	<a href="javascript:void(0)" >武汉</a> 
                                	                                	|
                                	                                </li>
	                                                            <li >
                                	<a href="javascript:void(0)" >南京</a> 
                                	                                	|
                                	                                </li>
	                                                            <li  class="more" >

							    	  	
                                	<a href="javascript:void(0)" >其他</a> 
                                	                                	<div class="triangle citymore_arrow"></div>
                                	                                </li>
	                            	                            <li id="box_expectCity" class="searchlist_expectCity dn">
					            	<span class="bot"></span>
					            	<span class="top"></span>
						    								    										    							    										    		<dl>
							    			<dt>ABCDEF</dt>
							    			<dd>
							     										     				<span>北京</span>
							     										     				<span>长春</span>
							     										     				<span>成都</span>
							     										     				<span>重庆</span>
							     										     				<span>长沙</span>
							     										     				<span>常州</span>
							     										     				<span>东莞</span>
							     										     				<span>大连</span>
							     										     				<span>佛山</span>
							     										     				<span>福州</span>
							     										    			</dd>
							    	  	</dl>
							    	  								    							    										    		<dl>
							    			<dt>GHIJ</dt>
							    			<dd>
							     										     				<span>贵阳</span>
							     										     				<span>广州</span>
							     										     				<span>哈尔滨</span>
							     										     				<span>合肥</span>
							     										     				<span>海口</span>
							     										     				<span>杭州</span>
							     										     				<span>惠州</span>
							     										     				<span>金华</span>
							     										     				<span>济南</span>
							     										     				<span>嘉兴</span>
							     										    			</dd>
							    	  	</dl>
							    	  								    							    										    		<dl>
							    			<dt>KLMN</dt>
							    			<dd>
							     										     				<span>昆明</span>
							     										     				<span>廊坊</span>
							     										     				<span>宁波</span>
							     										     				<span>南昌</span>
							     										     				<span>南京</span>
							     										     				<span>南宁</span>
							     										     				<span>南通</span>
							     										    			</dd>
							    	  	</dl>
							    	  								    							    										    		<dl>
							    			<dt>OPQR</dt>
							    			<dd>
							     										     				<span>青岛</span>
							     										     				<span>泉州</span>
							     										    			</dd>
							    	  	</dl>
							    	  								    							    										    		<dl>
							    			<dt>STUV</dt>
							    			<dd>
							     										     				<span>上海</span>
							     										     				<span>石家庄</span>
							     										     				<span>绍兴</span>
							     										     				<span>沈阳</span>
							     										     				<span>深圳</span>
							     										     				<span>苏州</span>
							     										     				<span>天津</span>
							     										     				<span>太原</span>
							     										     				<span>台州</span>
							     										    			</dd>
							    	  	</dl>
							    	  								    							    										    		<dl>
							    			<dt>WXYZ</dt>
							    			<dd>
							     										     				<span>武汉</span>
							     										     				<span>无锡</span>
							     										     				<span>温州</span>
							     										     				<span>西安</span>
							     										     				<span>厦门</span>
							     										     				<span>烟台</span>
							     										     				<span>珠海</span>
							     										     				<span>中山</span>
							     										     				<span>郑州</span>
							     										    			</dd>
							    	  	</dl>
							    	  								    								    </li>
	                        </ul>
	                    </dt>
	                    <dd>
	                        <dl>
	                            <dt>发展阶段：</dt>
	                            <dd>
	                            <a href="javascript:void(0)">企业性质</a>
		                        <a href="javascript:void(0)">民营企业</a>
		                        <a href="javascript:void(0)">国有企业</a>
		                        <a href="javascript:void(0)">外资企业</a>
		                       <a href="javascript:void(0)">上市企业</a>
		                      </dd>
	                        </dl>
	                        <dl>
	                            <dt>行业领域：</dt>
	                            <dd>
	                             <a href="javascript:void(0)">移动互联网</a>
		                          <a href="javascript:void(0)">电子商务</a>
		                         <a href="javascript:void(0)">社交</a>
		                         <a href="javascript:void(0)">企业服务</a>
		                         <a href="javascript:void(0)">O2O</a>
		                         <a href="javascript:void(0)">教育</a>
		                        <a href="javascript:void(0)">文化艺术</a>
		                          <a href="javascript:void(0)">游戏</a>
		                          <a href="javascript:void(0)">在线旅游</a>
		                          <a href="javascript:void(0)">金融互联网</a>
		                          <a href="javascript:void(0)">健康医疗</a>
		                        <a href="javascript:void(0)">硬件</a>
		                        <a href="javascript:void(0)">搜索</a>
		                         <a href="javascript:void(0)">安全</a>
		                          <a href="javascript:void(0)">运动体育</a>
		                          <a href="javascript:void(0)">云计算\大数据</a>
		                             <a href="javascript:void(0)">移动广告</a>
		                            <a href="javascript:void(0)">社会化营销</a>
		                          <a href="javascript:void(0)">视频多媒体</a>
		                         <a href="javascript:void(0)">媒体</a>
		                         <a href="javascript:void(0)">智能家居</a>
 </dd>
	                        </dl>
		                                                       			                                
  -->
  
  <div id="myCarousel" class="carousel slide" style="height: 300px;width:750px ">
    <!-- 轮播（Carousel）指标 -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <c:forEach items="${companyList}" var="c">
        	<li data-target="#myCarousel" data-slide-to="0"></li>
        </c:forEach>
       
    </ol>   
    <!-- 轮播（Carousel）项目 -->
    <div class="carousel-inner" style="margin:0 auto">
    
        <div class="item active">
            <img style="width:750px;height: 300px" src="${ctx }/style/images/renrenche.jpg" alt="First slide">
        </div>
        <c:forEach items="${companyList}" var="c">
        <div class="item">
          <a href="${ctx}/myhome?companyId=${c.companyId}"><img style="width:750px;height: 300px" src="${ctx }/${c.logo}" alt="Second slide"></a>
        </div>
        </c:forEach>
        
    </div>
    <!-- 轮播（Carousel）导航 -->
    <a class="carousel-control left" href="#myCarousel" 
        data-slide="prev">&lsaquo;
    </a>
    <a class="carousel-control right" href="#myCarousel" 
        data-slide="next">&rsaquo;
    </a>
</div>

<div class="image" style="margin-top:30px">
	<img alt="阿里巴巴" style="width:365px;height: 250px" src="${ctx }/style/images/ali.jpg">
	<img alt="大数据" style="width:365px;padding-left:20px;height:250px" src="${ctx }/style/images/dashuju.jpg">
</div>
<div class="image" style="margin-top:30px">
	<img alt="京东" style="width:365px;height: 250px" src="${ctx }/style/images/jingdong.jpg">
	<img alt="去哪" style="width:365px;padding-left:20px;height:250px" src="${ctx }/style/images/quna.jpg">
</div>
<div class="image" style="margin-top:30px">
	<img alt="网易" style="width:365px;height: 250px" src="${ctx }/style/images/wangyi.jpg">
	<img alt="新浪" style="width:365px;padding-left:20px;height:250px"  src="${ctx }/style/images/xinlang.jpg">
	
</div>

<div id="menubar">
<div id="middleMenubar">
<div id="innerMenubar">
  <div id="navMenubar">
<!-- <ul>
	<li id="view" style="color:green"><a href="#" onclick="formSubmit('toview','_self');this.blur();">查看公司信息</a></li>
	<li id="new" style="color:green"><a href="#" onclick="formSubmit('tocreate','_self');this.blur();">投递信息</a></li>
</ul> -->
  </div>
</div>
</div>
</div>
<!-- <h1 style="margin: auto">企业列表</h1>  -->
<%-- <form>
<table id="ec_table" class="tableRegion" width="120%" border="1">
   <c:forEach items="${companyList}" var="c">
     <ul class="hc_list reset">
		                   <li  style="clear:both;" >
			                <a href="javascript:void(0)" onclick="location.href='myhome.action'"> 
			                <h3 title="公司名称"> 公司名称:${c.companyName}</h3>
			                <div class="comLogo" >
				             <img src="${c.logo}" width="160" height="100" alt="华为" />
			                 </div>
			                        </a>
			                  <a href="" target="_blank">公司性质: ${c.companyInfo.nature}</a>
			                  <a href="" target="_blank">公司地址:${c.companyInfo.address}</a>
			                   <a href="" target="_blank">公司简介:${c.companyInfo.introduction}</a>
			                   <ul class="reset ctags">
			                    <li>公司电话:${c.companyInfo.telphone}</li>																	                        				                        	<li>交通补助</li>
								</ul>
			                    </li> 
   <tr> 
   <td>      
         公司名称:${c.companyName}
   </td>
   </tr>
   <tr>
   <td>公司log: <img src="${c.logo}"  /></td>
   </tr>
   <tr>
   <td>公司性质:${c.companyInfo.nature}</td>
   </tr>
   <tr>
     <td> 公司地址:${c.companyInfo.address}</td>
   </tr>
   <tr>
   <td>公司简介:${c.companyInfo.introduction}</td>
   </tr>
   </c:forEach>
   </table>
</form>
 --%>

</body>
</html>