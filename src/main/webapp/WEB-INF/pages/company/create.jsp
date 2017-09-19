<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html xmlns:wb="http://open.weibo.com/wb"><head>
</script><script type="text/javascript" async="" src="style/js/conversion.js"></script><script src="style/js/allmobilize.min.js" charset="utf-8" id="allmobilize"></script><style type="text/css"></style>
<meta content="no-siteapp" http-equiv="Cache-Control">
<link  media="handheld" rel="alternate">
<!-- end 云适配 -->
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>发布新职位-招聘服务-伯乐网-最专业的互联网招聘平台</title>
<meta content="23635710066417756375" property="qc:admins">
<meta name="description" content="伯乐网是3W旗下的互联网领域垂直招聘网站,互联网职业机会尽在伯乐网">
<meta name="keywords" content="伯乐,伯乐网,伯乐招聘,拉钩, 拉钩网 ,互联网招聘,伯乐互联网招聘, 移动互联网招聘, 垂直互联网招聘, 微信招聘, 微博招聘, 伯乐官网, 伯乐百科,跳槽, 高薪职位, 互联网圈子, IT招聘, 职场招聘, 猎头招聘,O2O招聘, LBS招聘, 社交招聘, 校园招聘, 校招,社会招聘,社招">
<meta content="QIQ6KC1oZ6" name="baidu-site-verification">

<!-- <div class="web_root"  style="display:none">http://www.bole.com</div> -->
<script type="text/javascript">
var ctx = "http://www.bole.com";
console.log(1);
</script>
<link href="http://www.bole.com/images/favicon.ico" rel="Shortcut Icon">
<link href="style/css/style.css" type="text/css" rel="stylesheet">
<link href="style/css/external.min.css" type="text/css" rel="stylesheet">
<link href="style/css/popup.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="style/js/jquery.1.10.1.min.js"></script>
<script src="style/js/jquery.lib.min.js" type="text/javascript"></script>
<script type="text/javascript" src="style/js/ajaxfileupload.js"></script>
<script src="style/js/additional-methods.js" type="text/javascript"></script>
<!--[if lte IE 8]>
    <script type="text/javascript" src="style/js/excanvas.js"></script>
<![endif]-->
<script type="text/javascript">
var youdao_conv_id = 271546; 
</script> 
<script src="style/js/conv.js" type="text/javascript"></script>
<script src="style/js/ajaxCross.json" charset="UTF-8"></script>
<body>
<div id="body">
	<div id="header">
    	<div class="wrapper">
    		<a class="logo" href="index.html">
    			<img width="229" height="43" alt="伯乐招聘-专注互联网招聘" src="style/images/logo.png">
    		</a>
    		<ul id="navheader" class="reset">
    			<li><a href="javascript:void(0)" onclick="location.href='/.action'">首页</a></li>
    			<li><a href="javascript:void(0)" onclick="location.href='myhome.action'">公司信息管理</a></li>
    			<li><a href="javascript:void(0)" onclick="location.href='companyResumes.action'">公司简历管理</a></li>
    			<li><a href="javascript:void(0)" onclick="location.href='createcom.action'">公司职位管理</a></li>
	    			</ul>
        	        	<dl class="collapsible_menu">
            	<dt>
           			<span>欢迎 ${company.companyName}&nbsp;</span> 
            		<span class="red dn" id="noticeDot-0"></span>
            		<i></i>
            	</dt>
                <dd><a href="javascript:void(0)" onclick="location.href='myhome.action'">公司信息管理</a></dd>
                <dd><a href="javascript:void(0)" onclick="location.href='createcom.action'">我要招人</a></dd>
                <dd class="logout"><a href="javascript:void(0)" onclick="location.href='logout.action'">退出</a></dd>
            </dl>
                                    <div class="dn" id="noticeTip">
            	<span class="bot"></span>
				<span class="top"></span>
				<a target="_blank" href="delivery.html"><strong></strong>条简历数量</a>
				<a class="closeNT" href="javascript:;"></a>
            </div>
                    </div>
    </div><!-- end #header -->
    <div id="container">
        
        	<div class="sidebar">
            	<a class="btn_create" href="javascript:void(0)" onclick="location.href='fbzw.action'">发布新职位</a>
                <dl class="company_center_aside">
		<!-- <dt>我收到的简历</dt>
		<dd>
		<a href="">待处理简历</a> 
			</dd>
	<dd>
		<a href="canInterviewResumes.html">待定简历</a>
	</dd>
	<dd>
		<a href="haveNoticeResumes.html">已通知面试简历</a>
	</dd>
	<dd>
		<a href="haveRefuseResumes.html">不合适简历</a>
	</dd>
	<dd class="btm">
		<a href="autoFilterResumes.html">自动过滤简历</a> 
			</dd> -->
</dl>
<dl class="company_center_aside">
		<dt>我发布的职位</dt>
			<dd>
		<a href="positions.html">有效职位</a>
	</dd>
	<dd>
		<a href="positions.html">已下线职位</a>
	</dd>
	</dl>
                <div class="subscribe_side mt20">
   <div class="f14"></div>
   <div class="f18 mb10"> </div>
   <div>咨询：<a class="f16" href=""></a></div>
   <div class="f18 ti2em"></div>
</div>
<div class="subscribe_side mt20">
   <div class="f14"></div>
   <div class="f18 mb10"></div>
   <div class="f24"></div>
</div>            </div><!-- end .sidebar -->
            <div class="content">
            	<dl class="company_center_content">
                    <dt>
                        <h1>
                            <em></em>
                                    发布新职位
                           	                        </h1>
                    </dt>
                    <dd>
                    	<!-- <div class="ccc_tr">今日已发布 <span>0</span> 个职位   还可发布 <span>5</span> 个职位</div> -->
                    	<form  action="/savaJob" method="post" id="jobForm">
                           <input type="hidden" value="${company.companyId}" name="companyId"/> 
                            <input type="hidden" value="${job.jobId}" name="jobInfoId"/>              
                            <input type="hidden" value="1" name="industryId"/> 
                            <table class="btm">
                            	<tbody>
                          <!--   	<tr>
                                	<td width="25"><span class="redstar">*</span></td>
                                	 <td width="85">职位类别</td>
                                	<td>
                                    	<input type="hidden" id="positionType" value="" name="">
                                        <input type="button" value="请选择职位类别" id="select_category" class="selectr selectr_380">                                      
                                        <div class="dn" id="box_job" style="display: none;">
                                                                                            <dl>
                                                    <dt>技术</dt>
                                                    <dd>
                                                        <ul class="reset job_main">
                                                                     <li>
                                                                    <span>后端开发</span>
                                                                         <ul class="reset job_sub dn">
                                                                          <li>Java</li>
                                                                        <li>C++</li>
                                                                          <li>PHP</li>
                                                                          <li>数据挖掘</li>
                                                                           <li>C</li>
                                                                            <li>C#</li>
                                                                           <li>.NET</li>
                                                                         <li>Hadoop</li>
                                                                         <li>Python</li>
                                                                          <li>Delphi</li>
                                                                          <li>VB</li>
                                                                            <li>Perl</li>
                                                                           <li>Ruby</li>
                                                                             <li>Node.js</li>
                                                                                                                                            </ul>
                                                                                                                                    </li>
                                                                                                                            <li>
                                                                    <span>移动开发</span>
                                                                         <ul class="reset job_sub dn" style="margin-left: -160px;">
                                                                                                                                                    <li>HTML5</li>
                                                                                                                                                    <li>Android</li>
                                                                                                                                                    <li>iOS</li>
                                                                                                                                                    <li>WP</li>
                                                                                                                                            </ul>
                                                                                                                                    </li>
                                                                                                                            <li>
                                                                    <span>前端开发</span>
                                                                                                                                        <ul class="reset job_sub dn" style="margin-left: -310px;">
                                                                                                                                                    <li>web前端</li>
                                                                                                                                                    <li>Flash</li>
                                                                                                                                                    <li>html5</li>
                                                                                                                                                    <li>JavaScript</li>
                                                                                                                                                    <li>U3D</li>
                                                                                                                                                    <li>COCOS2D-X</li>
                                                                                                                                            </ul>
                                                                                                                                    </li>
                                                                                                                            <li>
                                                                    <span>测试</span>
                                                                                                                                        <ul class="reset job_sub dn">
                                                                                                                                                    <li>测试工程师</li>
                                                                                                                                                    <li>自动化测试</li>
                                                                                                                                                    <li>功能测试</li>
                                                                                                                                                    <li>性能测试</li>
                                                                                                                                                    <li>测试开发</li>
                                                                                                                                            </ul>
                                                                                                                                    </li>
                                                                                                                            <li>
                                                                    <span>运维</span>
                                                                                                                                        <ul class="reset job_sub dn" style="margin-left: -160px;">
                                                                                                                                                    <li>运维工程师</li>
                                                                                                                                                    <li>运维开发工程师</li>
                                                                                                                                                    <li>网络工程师</li>
                                                                                                                                                    <li>系统工程师</li>
                                                                                                                                                    <li>IT支持</li>
                                                                                                                                            </ul>
                                                                                                                                    </li>
                                                                                                                            <li>
                                                                    <span>DBA</span>
                                                                                                                                        <ul class="reset job_sub dn" style="margin-left: -310px;">
                                                                                                                                                    <li>MySQL</li>
                                                                                                                                                    <li>SQLServer</li>
                                                                                                                                                    <li>Oracle</li>
                                                                                                                                                    <li>DB2</li>
                                                                                                                                                    <li>MongoDB</li>
                                                                                                                                            </ul>
                                                                                                                                    </li>
                                                                                                                            <li>
                                                                    <span>项目管理</span>
                                                                                                                                        <ul class="reset job_sub dn">
                                                                                                                                                    <li>项目经理</li>
                                                                                                                                            </ul>
                                                                                                                                    </li>
                                                                                                                            <li>
                                                                    <span>高端技术职位</span>
                                                                                                                                        <ul class="reset job_sub dn" style="margin-left: -160px;">
                                                                                                                                                    <li>技术经理</li>
                                                                                                                                                    <li>技术总监</li>
                                                                                                                                                    <li>测试经理</li>
                                                                                                                                                    <li>架构师</li>
                                                                                                                                                    <li>CTO</li>
                                                                                                                                                    <li>运维总监</li>
                                                                                                                                            </ul>
                                                                                                                                    </li>
                                                                                                                    </ul>
                                                    </dd>
                                                </dl>
                                                                                            <dl>
                                                    <dt>产品</dt>
                                                    <dd>
                                                        <ul class="reset job_main">
                                                                                                                            <li>
                                                                    <span></span>
                                                                                                                                        <ul class="reset job_sub dn">
                                                                                                                                                    <li>产品经理</li>
                                                                                                                                                    <li>网页产品经理</li>
                                                                                                                                                    <li>移动产品经理</li>
                                                                                                                                                    <li>产品助理</li>
                                                                                                                                                    <li>数据产品经理</li>
                                                                                                                                                    <li>电商产品经理</li>
                                                                                                                                                    <li>游戏策划</li>
                                                                                                                                            </ul>
                                                                                                                                    </li>
                                                                                                                            <li>
                                                                    <span>产品设计师</span>
                                                                                                                                        <ul class="reset job_sub dn" style="margin-left: -160px;">
                                                                                                                                                    <li>网页产品设计师</li>
                                                                                                                                                    <li>无线产品设计师</li>
                                                                                                                                            </ul>
                                                                                                                                    </li>
                                                                                                                            <li>
                                                                    <span>高端产品职位</span>
                                                                                                                                        <ul class="reset job_sub dn" style="margin-left: -310px;">
                                                                                                                                                    <li>产品部经理</li>
                                                                                                                                                    <li>产品总监</li>
                                                                                                                                            </ul>
                                                                                                                                    </li>
                                                                                                                    </ul>
                                                    </dd>
                                                </dl>
                                                                                            <dl>
                                                    <dt>设计</dt>
                                                    <dd>
                                                        <ul class="reset job_main">
                                                                                                                            <li>
                                                                    <span>视觉设计</span>
                                                                                                                                        <ul class="reset job_sub dn">
                                                                                                                                                    <li>视觉设计师</li>
                                                                                                                                                    <li>网页设计师</li>
                                                                                                                                                    <li>Flash设计师</li>
                                                                                                                                                    <li>APP设计师</li>
                                                                                                                                                    <li>UI设计师</li>
                                                                                                                                                    <li>平面设计师</li>
                                                                                                                                                    <li>美术设计师（2D/3D）</li>
                                                                                                                                                    <li>广告设计师</li>
                                                                                                                                                    <li>多媒体设计师</li>
                                                                                                                                                    <li>原画师</li>
                                                                                                                                                    <li>游戏特效</li>
                                                                                                                                                    <li>游戏界面设计师</li>
                                                                                                                                                    <li>游戏场景</li>
                                                                                                                                                    <li>游戏角色</li>
                                                                                                                                                    <li>游戏动作</li>
                                                                                                                                            </ul>
                                                                                                                                    </li>
                                                                                                                            <li>
                                                                    <span>交互设计</span>
                                                                                                                                        <ul class="reset job_sub dn" style="margin-left: -160px;">
                                                                                                                                                    <li>交互设计师</li>
                                                                                                                                                    <li>无线交互设计师</li>
                                                                                                                                                    <li>网页交互设计师</li>
                                                                                                                                                    <li>硬件交互设计师</li>
                                                                                                                                            </ul>
                                                                                                                                    </li>
                                                                                                                            <li>
                                                                    <span>用户研究</span>
                                                                                                                                        <ul class="reset job_sub dn" style="margin-left: -310px;">
                                                                                                                                                    <li>数据分析师</li>
                                                                                                                                                    <li>用户研究员</li>
                                                                                                                                                    <li>游戏数值策划</li>
                                                                                                                                            </ul>
                                                                                                                                    </li>
                                                                                                                            <li>
                                                                    <span>高端设计职位</span>
                                                                                                                                        <ul class="reset job_sub dn">
                                                                                                                                                    <li>设计经理/主管</li>
                                                                                                                                                    <li>设计总监</li>
                                                                                                                                                    <li>视觉设计经理/主管</li>
                                                                                                                                                    <li>视觉设计总监</li>
                                                                                                                                                    <li>交互设计经理/主管</li>
                                                                                                                                                    <li>交互设计总监</li>
                                                                                                                                                    <li>用户研究经理/主管</li>
                                                                                                                                                    <li>用户研究总监</li>
                                                                                                                                            </ul>
                                                                                                                                    </li>
                                                                                                                    </ul>
                                                    </dd>
                                                </dl>
                                                                                            <dl>
                                                    <dt>运营</dt>
                                                    <dd>
                                                        <ul class="reset job_main">
                                                                                                                            <li>
                                                                    <span>运营</span>
                                                                                                                                        <ul class="reset job_sub dn">
                                                                                                                                                    <li>用户运营</li>
                                                                                                                                                    <li>产品运营</li>
                                                                                                                                                    <li>数据运营</li>
                                                                                                                                                    <li>内容运营</li>
                                                                                                                                                    <li>活动运营</li>
                                                                                                                                                    <li>商家运营</li>
                                                                                                                                                    <li>品类运营</li>
                                                                                                                                                    <li>游戏运营</li>
                                                                                                                                                    <li>网络推广</li>
                                                                                                                                            </ul>
                                                                                                                                    </li>
                                                                                                                            <li>
                                                                    <span>编辑</span>
                                                                                                                                        <ul class="reset job_sub dn" style="margin-left: -160px;">
                                                                                                                                                    <li>副主编</li>
                                                                                                                                                    <li>内容编辑</li>
                                                                                                                                            </ul>
                                                                                                                                    </li>
                                                                                                                            <li>
                                                                    <span>客服</span>
                                                                                                                                        <ul class="reset job_sub dn" style="margin-left: -310px;">
                                                                                                                                                    <li>售前咨询</li>
                                                                                                                                                    <li>售后客服</li>
                                                                                                                                            </ul>
                                                                                                                                    </li>
                                                                                                                            <li>
                                                                    <span>高端运营职位</span>
                                                                                                                                        <ul class="reset job_sub dn">
                                                                                                                                                    <li>主编</li>
                                                                                                                                                    <li>运营总监</li>
                                                                                                                                                    <li>COO</li>
                                                                                                                                            </ul>
                                                                                                                                    </li>
                                                                                                                    </ul>
                                                    </dd>
                                                </dl>
                                                                                            <dl>
                                                    <dt>市场与销售</dt>
                                                    <dd>
                                                        <ul class="reset job_main">
                                                                                                                            <li>
                                                                    <span>市场/营销</span>
                                                                                                                                        <ul class="reset job_sub dn">
                                                                                                                                                    <li>市场营销</li>
                                                                                                                                                    <li>市场策划</li>
                                                                                                                                                    <li>市场顾问</li>
                                                                                                                                                    <li>市场推广</li>
                                                                                                                                                    <li>SEO</li>
                                                                                                                                                    <li>SEM</li>
                                                                                                                                                    <li>商务渠道</li>
                                                                                                                                                    <li>商业数据分析</li>
                                                                                                                                                    <li>活动策划</li>
                                                                                                                                            </ul>
                                                                                                                                    </li>
                                                                                                                            <li>
                                                                    <span>公关</span>
                                                                                                                                        <ul class="reset job_sub dn" style="margin-left: -160px;">
                                                                                                                                                    <li>媒介经理</li>
                                                                                                                                                    <li>广告协调</li>
                                                                                                                                                    <li>品牌公关</li>
                                                                                                                                            </ul>
                                                                                                                                    </li>
                                                                                                                            <li>
                                                                    <span>销售</span>
                                                                                                                                        <ul class="reset job_sub dn" style="margin-left: -310px;">
                                                                                                                                                    <li>销售专员</li>
                                                                                                                                                    <li>销售经理</li>
                                                                                                                                                    <li>客户代表</li>
                                                                                                                                                    <li>大客户代表</li>
                                                                                                                                                    <li>BD经理</li>
                                                                                                                                                    <li>商务渠道</li>
                                                                                                                                                    <li>渠道销售</li>
                                                                                                                                                    <li>代理商销售</li>
                                                                                                                                            </ul>
                                                                                                                                    </li>
                                                                                                                            <li>
                                                                    <span>高端市场职位</span>
                                                                                                                                        <ul class="reset job_sub dn">
                                                                                                                                                    <li>市场总监</li>
                                                                                                                                                    <li>销售总监</li>
                                                                                                                                                    <li>商务总监</li>
                                                                                                                                                    <li>CMO</li>
                                                                                                                                                    <li>公关总监</li>
                                                                                                                                            </ul>
                                                                                                                                    </li>
                                                                                                                    </ul>
                                                    </dd>
                                                </dl>
                                                                                            <dl>
                                                    <dt>职能</dt>
                                                    <dd>
                                                        <ul class="reset job_main">
                                                                                                                            <li>
                                                                    <span>人力资源</span>
                                                                                                                                        <ul class="reset job_sub dn">
                                                                                                                                                    <li>人力资源</li>
                                                                                                                                                    <li>招聘</li>
                                                                                                                                                    <li>HRBP</li>
                                                                                                                                                    <li>人事/HR</li>
                                                                                                                                                    <li>培训经理</li>
                                                                                                                                                    <li>薪资福利经理</li>
                                                                                                                                                    <li>绩效考核经理</li>
                                                                                                                                            </ul>
                                                                                                                                    </li>
                                                                                                                            <li>
                                                                    <span>行政</span>
                                                                                                                                        <ul class="reset job_sub dn" style="margin-left: -160px;">
                                                                                                                                                    <li>助理</li>
                                                                                                                                                    <li>前台</li>
                                                                                                                                                    <li>法务</li>
                                                                                                                                                    <li>行政</li>
                                                                                                                                            </ul>
                                                                                                                                    </li>
                                                                                                                            <li>
                                                                    <span>财务</span>
                                                                                                                                        <ul class="reset job_sub dn" style="margin-left: -310px;">
                                                                                                                                                    <li>会计</li>
                                                                                                                                                    <li>出纳</li>
                                                                                                                                                    <li>财务</li>
                                                                                                                                            </ul>
                                                                                                                                    </li>
                                                                                                                            <li>
                                                                    <span>高端职能职位</span>
                                                                                                                                        <ul class="reset job_sub dn">
                                                                                                                                                    <li>行政总监/经理</li>
                                                                                                                                                    <li>财务总监/经理</li>
                                                                                                                                                    <li>HRD/HRM</li>
                                                                                                                                                    <li>CFO</li>
                                                                                                                                            </ul>
                                                                                                                                    </li>
                                                                                                                    </ul>
                                                    </dd>
                                                </dl>
                                                                                    </div>
                                    </td>
                                </tr>  -->
                            	<tr>
                                	<td><span class="redstar">*</span></td>
                                	<td>职位名称</td>
                                	<td>
                                    	<input type="text" placeholder="请输入职位名称，如：产品经理" value="" name="jobName" id="positionName"/>
                                    	                                    </td>
                                </tr>
                            	<!-- <tr>
                                	<td></td>
                                	<td>所属部门</td>
                                	<td>
                                    	<input type="text" placeholder="请输入所属部门" value="" name="department" id="department">	
                                    </td>
                                </tr> -->
                            </tbody></table>
                            
                           <table class="btm">
                            	<tbody><tr>
                                	<td width="25"><span class="redstar">*</span></td>
                                	<td width="100">工作性质</td>
                                	<td>
                                    	<input type="text" id="experience" value="" name="jobNature"/>
           
                                    </td>
                                </tr>
                            	<tr>
                                	<td><span class="redstar">*</span></td>
                                	<td>工作城市</td>
                                    <!--<h3><span>(最高月薪不能大于最低月薪的2倍)</span></h3> -->
                                	<td>
                                    	<input type="text" id="education" value="" name="jobInfo.city"/>
                                    </td>
                                </tr>
                            </tbody></table>

                            <table class="btm">
                            	<tbody><tr>
                                	<td width="25"><span class="redstar">*</span></td>
                                	<td width="100">工作经验</td>
                                	<td>
                                    	<input type="text" id="experience" value="" name="jobInfo.workExperience"/>
           
                                    </td>
                                </tr>
                            	<tr>
                                	<td><span class="redstar">*</span></td>
                                	<td>学历要求</td>
                                    <!--<h3><span>(最高月薪不能大于最低月薪的2倍)</span></h3> -->
                                	<td>
                                    	<input type="text" id="education" value="" name="highistEducation"/>
                                    </td>
                                </tr>
                            </tbody></table>
                           
                            <table class="btm">
                            	<tbody><!-- <tr>
                                	<td width="25"><span class="redstar">*</span></td>
                                	<td width="85">职位诱惑</td>
                                	<td>
                                    	<input type="text" placeholder="20字描述该职位的吸引力，如：福利待遇、发展前景等" value="" name="positionAdvantage" class="input_520" id="positionAdvantage">
                                    </td>
                                </tr> -->
                            	<tr>
                                	<td><span class="redstar">*</span></td>
                                	<td>职位描述</td>
                                	<td>
                                    	 
                                    	<!-- <span class="c9 f14">(建议分条描述工作职责等。请勿输入公司邮箱、联系电话及其他外链，否则将自动删除)</span> -->
                                        <textarea name="jobInfo.discription" ></textarea>
                                  
                                    </td>
                                </tr>
                                <!-- <tr>
                                	<td><span class="redstar">*</span></td>
                                	<td>工作地址</td>
                                	<td>
                                    	<input type="text" placeholder="请输入详细的工作地址" value="" name="city" class="input_520" id="positionAddress">	
                                        <input type="hidden" value="" name="positionLng" id="lng">
                            			<input type="hidden" value="" name="positionLat" id="lat">
                                        <div class="work_place f14">我们将在职位详情页以地图方式精准呈现给用户  <a id="mapPreview" href="javascript:;"></a></div>
                                    </td>
                                </tr> -->
                            </tbody></table>
                            
                            <table>
                            	<tbody><!-- <tr>
                                	<td width="25"><span class="redstar">*</span></td>
                                	<td colspan="2">
                                    	接收简历邮箱： <span id="receiveEmailVal">admin@admin.com</span>
                                        <input type="hidden" value="admin@admin.com" id="receiveEmail" name="email">
                                    </td>
                                </tr>
                                <tr>
                                	<td width="25"></td>
                                	<td colspan="2">
                                    	同时简历自动发送至邮箱（仅一个）
                                        <input type="text" value="" id="forwardEmail" name="forwardEmail">
                                        <span class="error" id="beError" style="display:none"></span>
                                    </td>
                                </tr> -->
                                <tr>
                                	<td width="25"></td>
                                	<td colspan="2">
                                    	<!-- <input type="submit" value="预览" id="jobPreview" class="btn_32"> -->
                                    	<input type="submit" value="发布" id="formSubmit" class="btn_32" > 
                                       <!-- <a href="#" onclick="location.href='savaJob.action'">发布</a> -->
                                    </td>
                                </tr>
                         	</tbody></table>
                        </form>
                    </dd>
                </dl>
            </div><!-- end .content -->

<!------------------------------------- 弹窗lightbox ----------------------------------------->
<div style="display:none;">
	<!--联系方式弹窗-->	
        <div style="height:180px;" class="popup" id="telTip">
	        <form id="telForm">
	        	<table width="100%">
	            	<tbody><tr>
	            		<td align="center" class="f18">留个联系方式方便我们联系你吧！</td>
	            	</tr>
	            	<tr>
	                	<td align="center">
							<input type="text" maxlength="49" placeholder="请输入你的手机号码或座机号码" name="tel">
							<span style="display:none;" class="error" id="telError"></span>
						</td>
	                </tr>
	                <tr>
	                	<td align="center">
	                		<input type="submit" value="提交" class="btn">
	                	</td>
	                </tr>
	            </tbody></table>
            </form>
        </div><!--/#telTip-->
        
    <!--地图弹窗-->	
        <div class="popup" id="baiduMap">
        	<div class="mb10">点击地图可重新定位公司所在的位置</div>

        </div><!--/#baiduMap-->
</div>
<!------------------------------------- end ----------------------------------------->
<!-- <script type="text/javascript" src="style/js/tinymce.min.js"></script>
<script>
$(function(){
		
	/*textarea 编辑器*/
	tinymce.init({
	    selector: "textarea.tinymce",
	    // width: 100,
	    height: 225,
		language: "zh_CN",
		content_css: ctx + "/js/tinymce4/content.css",
		plugins: "contextmenu autolink code paste searchreplace",
	    contextmenu: "copy cut paste",
	    // paste_word_valid_elements: "",
	    paste_as_text: true,
	    // paste_webkit_styles: "color",//all | none
	    // paste_retain_style_properties: "font-size",//
	    menubar: false,
	    statusbar: false,
	    toolbar: [
	    	"undo redo | bold italic underline strikethrough | bullist numlist | alignleft aligncenter alignright | removeformat | code"
	    ],
	    save_enablewhendirty: function(e) {
	        console.log('dirty',e);
	    },
	    save_onsavecallback: function(e){
	        console.log('save',e);
	    },
	    setup: function (editor) {
	        editor.on('keyup', function (e) {  
	        	tinyMCE.triggerSave();
	        	var editorContent = tinyMCE.get(editor.id).getContent();
			    if(editorContent.length > 20){
					$("#" + editor.id).valid();
			    }
	        });
	    }
	});
});
</script> -->

<!-- old -->
<script src="style/js/jquery.tinymce.js" type="text/javascript"></script>
<script>
$(function(){
		
	/***********************************************
	** textarea 编辑器
	*/
	$('textarea.tinymce').tinymce({
		// Location of TinyMCE script
		script_url : ctx+'/js/tinymce/jscripts/tiny_mce/tiny_mce.js',

		// General options
		theme : "advanced",
		language : "zh-cn",
		plugins : "paste,autolink,lists,style,layer,save,advhr,advimage,advlink,iespell,inlinepopups,preview,media,searchreplace,contextmenu,fullscreen,noneditable,visualchars,nonbreaking",

		// Theme options
		theme_advanced_buttons1 : "bold,italic,underline,|,justifyleft,justifycenter,justifyright,|,bullist,numlist,|,outdent,indent,|,undo,redo,|,link,unlink,|,hr,fullscreen,image",
		theme_advanced_toolbar_location : "top",
		theme_advanced_toolbar_align : "left",
		theme_advanced_statusbar_location : "none",//定义输入框下方是否显示状态栏，默认不显示
		theme_advanced_resizing : false,
		paste_auto_cleanup_on_paste: true,
		paste_as_text: true,
		auto_cleanup_word:true,
		paste_remove_styles: true,
		contextmenu: "copy cut paste",
        force_br_newlines: true,
        force_p_newlines: false,
        apply_source_formatting: false,
        remove_linebreaks: false,
        convert_newlines_to_brs: true,

		// Example content CSS (should be your site CSS)
		content_css : ctx+"/js/tinymce/examples/css/content.css",

		// Drop lists for link/image/media/template dialogs
		template_external_list_url : "lists/template_list.js",
		external_link_list_url : "lists/link_list.js",

		// Replace values for the template plugin
		template_replace_values : {
			username : "Some User",
			staffid : "991234"
		},
		onchange_callback: function(editor){
	        tinyMCE.triggerSave();
	        var editorContent = tinyMCE.get(editor.id).getContent();
		    if(editorContent.length &gt20){
				$("#" + editor.id).valid();
		    }
	    } 
	});
	
	$('#workAddress').focus(function(){
		$('#beError').hide();
	});
});
</script>
<!-- end old -->

<script src="style/js/jobs.min.js" type="text/javascript"></script>
<script src="http://api.map.baidu.com/api?v=2.0&amp;ak=A2c1a1ff1fe0750e3290660295aac602" type="text/javascript"></script><script src="http://api.map.baidu.com/getscript?v=2.0&amp;ak=A2c1a1ff1fe0750e3290660295aac602&amp;services=&amp;t=20140617153133" type="text/javascript"></script>
<script type="text/javascript">
//百度地图API功能
var map = new BMap.Map("allmap");
//控件添加
map.addControl(new BMap.NavigationControl());
map.addControl(new BMap.MapTypeControl());
map.addControl(new BMap.ScaleControl());
map.addControl(new BMap.OverviewMapControl());

var point = new BMap.Point(116.331398,39.897445);//初始化坐标点
map.centerAndZoom(point, 15);
/* map.centerAndZoom(, 15); */
map.enableScrollWheelZoom(true);//允许缩放
var gc = new BMap.Geocoder();//地址定位
var local = new BMap.LocalSearch(map, {
	  renderOptions:{map: map}
});
function showInfo(e){
	 map.clearOverlays();//清除所有覆盖物
	 //map.centerAndZoom(new BMap.Point(olng, olat), 11);//重定义中心点
	 //alert(e.point.lng + ", " + e.point.lat);
	 var marker = new BMap.Marker(new BMap.Point(e.point.lng, e.point.lat));  // 创建标注
	 marker.addEventListener("mouseup",function(em){//覆盖物监听事件--释放鼠标时定位覆盖物位置
		var pt = em.point;//移动后重新定位
		gc.getLocation(pt, function(rs){
		   var addComp = rs.addressComponents;
		   var label = new BMap.Label("我的坐标："+em.point.lng + ", " + em.point.lat+"  我的地址："+addComp.province + ", " + addComp.city + ", " + addComp.district + ", " + addComp.street + ", " + addComp.streetNumber,{offset:new BMap.Size(20,-10)});
			// marker.setLabel(label);//新坐标-新地址
			 if(rs){
	 				 var sContent =
					"&lt;h4 style='margin:0 0 5px 0;padding:0.2em 0'&gt;"+addComp.province+"&lt;/h4&gt;" + 
					"&lt;p style='margin:0;line-height:1.5;font-size:13px;text-indent:2em'&gt;"+rs.address+"&lt;/p&gt;" + 
					"&lt;/div&gt;";
				 	var infoWindow = new BMap.InfoWindow(sContent);  // 创建信息窗口对象
				 	//图片加载完毕重绘infowindow
			 		marker.openInfoWindow(infoWindow);
	 			}
			
			  $('#lat').val(em.point.lat);
			  $('#lng').val(em.point.lng);
		});
	});
	marker.enableDragging();    //可拖拽
	map.addOverlay(marker);     // 将标注添加到地图中
	
	 /////////////////////地址定位
	 var pt = e.point;
	gc.getLocation(pt, function(rs){
	    var addComp = rs.addressComponents;
	    var label = new BMap.Label("我的坐标："+e.point.lng + ", " + e.point.lat+"  我的地址："+addComp.province + ", " + addComp.city + ", " + addComp.district + ", " + addComp.street + ", " + addComp.streetNumber,{offset:new BMap.Size(20,-10)});
	 			//marker.setLabel(label);
	 			if(rs){
	 				 var sContent =
					"&lt;h4 style='margin:0 0 5px 0;padding:0.2em 0'&gt;"+addComp.province+"&lt;/h4&gt;" + 
					"&lt;p style='margin:0;line-height:1.5;font-size:13px;text-indent:2em'&gt;"+rs.address+"&lt;/p&gt;" + 
					"&lt;/div&gt;";
				 	var infoWindow = new BMap.InfoWindow(sContent);  // 创建信息窗口对象
				 	//图片加载完毕重绘infowindow
			 		marker.openInfoWindow(infoWindow);
	 			}  
	 			
	 		$('#lat').val(e.point.lat);
			$('#lng').val(e.point.lng);
	});
	
	//////////////////////重置中心点
	 olng = e.point.lng;
	 olat = e.point.lat;
}
map.addEventListener("click", showInfo);//地图点击事件

$(function(){
	$('#mapPreview').bind('click',function(){
		$.colorbox({inline:true, href:"#baiduMap",title:"公司地址"});
		var address = $('#positionAddress').val();
		var city = $('#workAddress').val();
	    map.setCurrentCity(city);
	    map.setZoom(15);
		gc.getPoint(address, function(point){
		  if (point) { 
		    map.centerAndZoom(point, 15);
			map.setZoom(15);
	    	map.setCenter(point);
		   	local.search(address);
		  }
		}, city); 
		/* map.addEventListener("tilesloaded",function(){
	    	map.setZoom(15);
	    }); */
	});
});
</script>

			<div class="clear"></div>
			<input type="hidden" value="c29d4a7c35314180bf3be5eb3f00048f" id="resubmitToken">
	    	<a rel="nofollow" title="回到顶部" id="backtop" style="display: none;"></a>
	    </div><!-- end #container -->
	</div><!-- end #body -->
	<div id="footer">
		<div class="wrapper">
			<a rel="nofollow" target="_blank" href="about.html">联系我们</a>
		    <a target="_blank" href="http://www.bole.com/af/zhaopin.html">互联网公司导航</a>
		    <a rel="nofollow" target="_blank" href="http://e.weibo.com/bole720">伯乐微博</a>
		    <a rel="nofollow" href="javascript:void(0)" class="footer_qr">伯乐微信<i></i></a>
			<div class="copyright">&copy;2017 bole <a href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action" target="_blank">京ICP备14023790号-2</a></div>
		</div>
	</div>

<script src="style/js/core.min.js" type="text/javascript"></script>
<script src="style/js/popup.min.js" type="text/javascript"></script>

<!--  -->


<div id="cboxOverlay" style="display: none;"></div><div id="colorbox" class="" role="dialog" tabindex="-1" style="display: none;"><div id="cboxWrapper"><div><div id="cboxTopLeft" style="float: left;"></div><div id="cboxTopCenter" style="float: left;"></div><div id="cboxTopRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxMiddleLeft" style="float: left;"></div><div id="cboxContent" style="float: left;"><div id="cboxTitle" style="float: left;"></div><div id="cboxCurrent" style="float: left;"></div><button type="button" id="cboxPrevious"></button><button type="button" id="cboxNext"></button><button id="cboxSlideshow"></button><div id="cboxLoadingOverlay" style="float: left;"></div><div id="cboxLoadingGraphic" style="float: left;"></div></div><div id="cboxMiddleRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxBottomLeft" style="float: left;"></div><div id="cboxBottomCenter" style="float: left;"></div><div id="cboxBottomRight" style="float: left;"></div></div></div><div style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div></div></body></html>