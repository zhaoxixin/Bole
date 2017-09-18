<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html xmlns:wb="http://open.weibo.com/wb"><head>
<script async="" src="style/js/analytics.js"></script><script type="text/javascript" async="" src="style/js/conversion.js"></script><script src="style/js/allmobilize.min.js" charset="utf-8" id="allmobilize"></script><style type="text/css"></style>
<meta content="no-siteapp" http-equiv="Cache-Control">
<link  media="handheld" rel="alternate">
<!-- end 云适配 -->
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>我发布的职位-招聘服务-伯乐网-最专业的互联网招聘平台</title>
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
<script src="style/js/ajaxCross.json" charset="UTF-8"></script></head>
<body>
<div id="body">
	<div id="header">
    	<div class="wrapper">
    		<a class="logo" href="http://www.bole.com/">
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
		<dt>我收到的简历</dt>
		<dd>
		<a href="unHandleResumes.html">待处理简历</a> 
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
			</dd>
</dl>
<dl class="company_center_aside">
		<dt>我发布的职位</dt>
			<dd class="current">
		<a href="positions.html">有效职位</a>
	</dd>
	<dd>
		<a href="positions.html">已下线职位</a>
	</dd>
	</dl>
            </div><!-- end .sidebar -->
            
            
            <div class="content">
            	<dl class="company_center_content">
                    <dt>
                        <h1>
                            <em></em>
                           有效职位 <span><i style="color:#fff;font-style:normal" id="positionNumber"></i></span>                        </h1>
                    </dt>
                    <dd>
            <c:forEach items="${jobcompanyList}" var="jc" >
                    		 <form id="searchForm">
	                    		<input type="hidden" value="Publish" name="type">
			                	<ul class="reset my_jobs">
				                <li data-id="149594">
		                                    <h3>
		                                        <a target="_blank" title="职位名称" href=""> ${jc.jobName} </a> 
		                                        <span></span>
		                                        						                        		                                    </h3>
		                                  <span class="receivedResumeNo"><a href="#">职位信息</a></span>
		                                   <div>${jc.jobNature} / ${jc.highistEducation} / ${jc.jobInfo.workExperience}年 / ${jc.jobInfo.discription}</div>
		                                    		                                    				                                    <div class="c9">发布日期:<fmt:formatDate value="${jc.announceTime}" pattern="yyyy-MM-dd "/></div>
			                                    		                                    		                                    		                                    <div class="links">
		                                    			                                       	<a class="job_refresh" href="javascript:void(0)">刷新<span>每个职位7天内只能刷新一次</span></a>
		                                       			                                       	<a target="_blank" class="job_edit" href="#">编辑</a>
		                                       	<a class="job_offline" href="javascript:void(0)">下线</a>                      
		                                        <a class="job_del" href="javascript:void(0)">删除</a>
		                                    </div>
		                                    		                                </li>
	                                	                           	</ul>
			                    			                </form>
                                                    </c:forEach>
		                                    </dd>
                </dl>
            </div>
            
            <!-- end .content -->
<script src="style/js/job_list.min.js" type="text/javascript"></script> 
			<div class="clear"></div>
			<input type="hidden" value="74fb1ce14ebf4e2495270b0fbad64704" id="resubmitToken">
	    	<a rel="nofollow" title="回到顶部" id="backtop"></a>
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
<script src="style/js/tongji.js" type="text/javascript"></script>
<!--  -->
<script src="style/js/analytics01.js" type="text/javascript"></script><script type="text/javascript" src="style/js/h.js"></script>
<script type="text/javascript">
$(function(){
	$('#noticeDot-1').hide();
	$('#noticeTip a.closeNT').click(function(){
		$(this).parent().hide();
	});
});
var index = Math.floor(Math.random() * 2);
var ipArray = new Array('42.62.79.226','42.62.79.227');
var url = "ws://" + ipArray[index] + ":18080/wsServlet?code=314873";
var CallCenter = {
		init:function(url){
			var _websocket = new WebSocket(url);
			_websocket.onopen = function(evt) {
				console.log("Connected to WebSocket server.");
			};
			_websocket.onclose = function(evt) {
				console.log("Disconnected");
			};
			_websocket.onmessage = function(evt) {
				//alert(evt.data);
				var notice = jQuery.parseJSON(evt.data);
				if(notice.status[0] == 0){
					$('#noticeDot-0').hide();
					$('#noticeTip').hide();
					$('#noticeNo').text('').show().parent('a').attr('href',ctx+'/mycenter/delivery.html');
					$('#noticeNoPage').text('').show().parent('a').attr('href',ctx+'/mycenter/delivery.html');
				}else{
					$('#noticeDot-0').show();
					$('#noticeTip strong').text(notice.status[0]);
					$('#noticeTip').show();
					$('#noticeNo').text('('+notice.status[0]+')').show().parent('a').attr('href',ctx+'/mycenter/delivery.html');
					$('#noticeNoPage').text(' ('+notice.status[0]+')').show().parent('a').attr('href',ctx+'/mycenter/delivery.html');
				}
				$('#noticeDot-1').hide();
			};
			_websocket.onerror = function(evt) {
				console.log('Error occured: ' + evt);
			};
		}
};
CallCenter.init(url);
</script>

<div id="cboxOverlay" style="display: none;"></div><div id="colorbox" class="" role="dialog" tabindex="-1" style="display: none;"><div id="cboxWrapper"><div><div id="cboxTopLeft" style="float: left;"></div><div id="cboxTopCenter" style="float: left;"></div><div id="cboxTopRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxMiddleLeft" style="float: left;"></div><div id="cboxContent" style="float: left;"><div id="cboxTitle" style="float: left;"></div><div id="cboxCurrent" style="float: left;"></div><button type="button" id="cboxPrevious"></button><button type="button" id="cboxNext"></button><button id="cboxSlideshow"></button><div id="cboxLoadingOverlay" style="float: left;"></div><div id="cboxLoadingGraphic" style="float: left;"></div></div><div id="cboxMiddleRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxBottomLeft" style="float: left;"></div><div id="cboxBottomCenter" style="float: left;"></div><div id="cboxBottomRight" style="float: left;"></div></div></div><div style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div></div></body></html>