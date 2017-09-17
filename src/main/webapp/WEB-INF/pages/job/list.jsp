<%@ page contentType="text/html; charset=utf-8"%>
<%@ include file="../base.jsp" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML>
<html xmlns:wb="http://open.weibo.com/wb">
<head>
<script id="allmobilize" charset="utf-8" src="${ctx}/style/js/allmobilize.min.js"></script>
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="alternate" media="handheld"  />
<!-- end 云适配 -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>伯乐网-只要您是千里马</title>
<meta property="qc:admins" content="23635710066417756375" />
<meta content="前端开发招聘  全国地区招聘 紫色医疗招聘前端开发,月薪:10k-20k,要求:本科及以上学历,3-5年工作经验。职位诱惑：借移动医疗大势享受坐直升飞机的职场发展 公司规模:15-50人移动互联网 ,健康医疗类公司招聘信息汇总  最新最热门互联网行业招聘信息，尽在拉勾网" name="description">
<meta content="前端开发招聘,全国地区前端开发招聘,紫色医疗招聘前端开发,移动互联网 类公司招聘信息汇总,健康医疗类公司招聘信息汇总,拉勾招聘,拉勾网,互联网招聘" name="keywords">
<meta name="baidu-site-verification" content="QIQ6KC1oZ6" />
<style type="text/css">
	#submit_button{
	height:35px;width:121px; color:#FFF; font-size:18px;border:none;background:#019875;float:right; cursor:pointer;
	}
} 
</style>
 
<script type="text/javascript" src="${ctx}/style/js/chosen.jquery.js"></script>
<!-- <div class="web_root"  style="display:none">h</div> -->
<script type="text/javascript">
var ctx = "h";
console.log(1);
</script>
<link rel="Shortcut Icon" href="http://www.lagou.com/h/images/favicon.ico">
<link rel="stylesheet" type="text/css" href="${ctx}/style/css/style.css"/>
<link rel="stylesheet" type="text/css" href="${ctx}/style/css/external.min.css"/>
<link rel="stylesheet" type="text/css" href="${ctx}/style/css/popup.css"/>
<script src="${ctx}/style/js/jquery.1.10.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="${ctx}/style/js/jquery.lib.min.js"></script>
<script src="${ctx}/style/js/ajaxfileupload.js" type="text/javascript"></script>
<script type="text/javascript" src="${ctx}/style/js/additional-methods.js"></script>

<!--[if lte IE 8]>
    <script type="text/javascript" src="style/js/excanvas.js"></script>
<![endif]-->
<script type="text/javascript">
var youdao_conv_id = 271546; 


</script> 
<script type="text/javascript" src="${ctx}/style/js/conv.js"></script>
</head>
<body>
<div id="body">
	<div id="header">
    	<div class="wrapper">
    		<a href="index.html" class="logo">
    			<img src="${ctx}/style/images/logo.png" width="229" height="43" alt="拉勾招聘-专注互联网招聘" />
    		</a>
    		<ul class="reset" id="navheader">
    			<li ><a href="${ctx}">首页</a></li>
    			<li ><a href="${ctx}/companyhome" target="_blank">名企专区</a></li>
	    		    		</ul>
        	            <ul class="loginTop">
            	<c:if test="${ sessionScope.user1 == null }">
						<a href="${ctx}/toLogin.action" rel="nofollow"><font color="6633745">登录</font></a>&nbsp;&nbsp;|&nbsp;&nbsp;
						<a href="${ctx}/toRegister.action" rel="nofollow"><font color="6633745">注册</font></a>
					 </c:if>
					<!-- 如果用户已经登陆, 应该提示欢迎xxx回来 -->
					 <c:if test="${ sessionScope.user1 != null }">
						    欢迎 ${ user1.email } 回来
						  &nbsp;|&nbsp;
						<a href="${ ctx }/logout.action">退出</a>
					 </c:if>
            </ul>
                                </div>
    </div><!-- end #header -->
    <div id="container">
        
       	<div class="sidebar">
       		<!-- <div id="options" class="greybg">
       		 <dl >
                   	<dt>月薪范围 <em ></em></dt>
	                <dd >
	                    	                    	<div>2k以下</div>
	                    	                    	<div>2k-5k</div>
	                    	                    	<div>5k-10k</div>
	                    	                    	<div>10k-15k</div>
	                    	                    	<div>15k-25k</div>
	                    	                    	<div>25k-50k</div>
	                    	                    	<div>50k以上</div>
	                    	                </dd> 
                </dl>
                                <dl >
                   	<dt>工作经验 <em ></em></dt>
	                <dd >
	                    	                    	<div>不限</div>
	                    	                    	<div>应届毕业生</div>
	                    	                    	<div>1年以下</div>
	                    	                    	<div>1-3年</div>
	                    	                    	<div>3-5年</div>
	                    	                    	<div>5-10年</div>
	                    	                    	<div>10年以上</div>
	                    	                </dd> 
                </dl>
                                <dl >
                   	<dt>最低学历 <em ></em></dt>
	                <dd >
	                    	                    	<div>不限</div>
	                    	                    	<div>大专</div>
	                    	                    	<div>本科</div>
	                    	                    	<div>硕士</div>
	                    	                    	<div>博士</div>
	                    	                </dd> 
                </dl>
                                <dl >
                   	<dt>工作性质 <em ></em></dt>
	                <dd >
	                    	                    	<div>全职</div>
	                    	                    	<div>兼职</div>
	                    	                    	<div>实习</div>
	                    	                </dd> 
                </dl>
                                <dl >
                   	<dt>发布时间 <em ></em></dt>
	                <dd >
	                    	                    	<div>今天</div>
	                    	                    	<div>3天内</div>
	                    	                    	<div>一周内</div>
	                    	                    	<div>一月内</div>
	                    	                </dd> 
                </dl>
                            </div> -->
       			
            
            <!-- QQ群 -->
            	    <div class="qq_group">
		            	加入<span>前端</span>QQ群
		            	<div class="f18">跟同行聊聊</div>
		            	<p>160541839</p>
		            </div>
		                                
            <!-- 对外合作广告位  -->
             	  <a href="http://www.w3cplus.com/" target="_blank" class="partnersAd">
		            	<img src="${ctx}/style/images/w3cplus.png" width="230" height="80" alt="w3cplus" />
		            </a>
		            <a href="" target="_blank" class="partnersAd">
		            	<img src="${ctx}/style/images/jquery_school.jpg" width="230" height="80" alt="JQ学校" />
		            </a>
		                                	            <a href="http://linux.cn/" target="_blank" class="partnersAd">
	            	<img src="${ctx}/style/images/linuxcn.png" width="230" height="80" alt="Linux中文社区"  />
	            </a>
	            <a href="http://zt.zhubajie.com/zt/makesite? utm_source=lagou.com&utm_medium=referral&utm_campaign=BD-yl" target="_blank" class="partnersAd">
	            	<img src="${ctx}/style/images/zhubajie.jpg" width="230" height="80" alt="猪八戒" />
	            </a>
	            <a href="http://www.imooc.com" target="_blank" class="partnersAd">
	            	<img src="${ctx}/style/images/muke.jpg" width="230" height="80" alt="幕课网" />
	            </a>
	        	       	<!-- 	            <a href="http://www.osforce.cn/" target="_blank" class="partnersAd">
	            	<img src="style/images/osf-lg.jpg" width="230" height="80" alt="开源力量"  />
	            </a>
	         -->
        </div>
   <div class="content">
        	<div id="search_box">
		<form id="searchForm" name="searchForm" action="${ctx}/additionSearch" method="get">
        <!-- <ul id="searchType">
        	        	<li data-searchtype="1" class="type_selected">职位</li>
        	<li data-searchtype="4">公司</li>
        	        </ul>
        <div class="searchtype_arrow"></div> -->
       <!--  <input type="text" id="search_input" name = "kd"  tabindex="1" value="前端开发"  placeholder="请输入职位名称，如：产品经理"  /> -->
       			
       			<div style="hight:40px;display:inline-block">
       			
       			<select data-placeholder="选择薪资" name="salaryRange" style="width:100px;height:40px">
        			<option value="1" selected='selected'>2001-4000</option>
        			<option value="2">4001-6000</option>
        			<option value="3">6001-8000</option>
        			<option value="4">8001-10000</option>
        			<option value="5">10001-15000</option>
        			<option value="6">15001-20000</option>
        			<option value="7">20001-30000</option>
        			<option value="8">面议</option>
        		</select>
        	</div>
        		
        		<div style="hight:40px;display:inline-block;margin-left: 0px">
        		<select data-placeholder="选择学历" name="highistEducation" style="width:100px;height:40px">
        			<option value="博士">博士</option>
        			<option value="硕士">硕士</option>
        			<option value="本科">本科</option>
        			<option value="大专">大专</option>
        			<option value="不限" selected='selected'>不限</option>
        		</select>
        		</div>
        		
        		<div style="hight:40px;display:inline-block;margin-left: 0px">
        		<select data-placeholder="选择工作性质" name="jobNature" style="width:100px;height:40px">
        			<option value="全职" selected='selected'>全职</option>
        			<option value="兼职">兼职</option>
        			<option value="实习">实习</option>
        		</select>
        		</div>
        		
        		<div style="hight:40px;display:inline-block;margin-left: 0px">
        		<input type="text" style="width:70px;" name="announceTimePre"
	   			onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd'});"/>
	   			&nbsp;&nbsp;|&nbsp;&nbsp;
	   			<input type="text" style="width:70px;" name="announceTimePre"
	   			onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd'});"/>
        		
               </div>
               <input type="hidden" name="jobList" value="${jobList}">
             		<input id="submit_button" type="submit" name="submit" value="搜索"/>
                <!-- <input type="hidden" name="city" id="cityInput" value="全国"/>
                <input type="submit" id="search_button" value="搜索" /> -->
    </form>
</div>     
        
        
       
       
<style>

.ui-autocomplete{width:488px;background:#fafafa !important;position: relative;z-index:10;border: 2px solid #91cebe;}
.ui-autocomplete-category{font-size:16px;color:#999;width:50px;position: absolute;z-index:11; right: 0px;/*top: 6px; */text-align:center;border-top: 1px dashed #e5e5e5;padding:5px 0;}
.ui-menu-item{ *width:439px;vertical-align: middle;position: relative;margin: 0px;margin-right: 50px !important;background:#fff;border-right: 1px dashed #ededed;}
.ui-menu-item a{display:block;overflow:hidden;}
</style>
<script type="text/javascript" src="style/js/search.min.js"></script>
		<div class="breakline"></div>

            <div id="tip_didi" class="dn">
            	<span>亲，“嘀嘀打车”已更名为“滴滴打车”了哦，我们已帮您自动跳转~</span>
            	<a href="javascript:;">我知道了</a>
            </div>
     
            	  <ul class="hot_pos reset">
            	  	<c:forEach items="${jobList }" var="job">
	                  <li class="odd clearfix">
			                  <div class="hot_pos_l">
			                     <div class="mb10">
			                       <a href="${ctx }/jobDetails.action?jobId=${job.jobId}"  target="_blank">${job.jobName }</a> 
			                            &nbsp;
			                       <span class="c9">${job.jobInfo.city }</span>
			                     </div>	
			                        <span><em class="c7">月薪：</em>
			                        	<c:if test="${job.jobInfo.salaryRange==1 }">2001-4000</c:if>
			                        	<c:if test="${job.jobInfo.salaryRange==2 }">4001-6000</c:if>
			                        	<c:if test="${job.jobInfo.salaryRange==3 }">6001-8000</c:if>
			                        	<c:if test="${job.jobInfo.salaryRange==4 }">8001-10000</c:if>
			                        	<c:if test="${job.jobInfo.salaryRange==5 }">10001-15000</c:if>
			                        	<c:if test="${job.jobInfo.salaryRange==6 }">15001-20000</c:if>
			                        	<c:if test="${job.jobInfo.salaryRange==7 }">20001-30000</c:if>
			                        	<c:if test="${job.jobInfo.salaryRange==8 }">面议</c:if>
			                        </span> 
			                        <span><em class="c7">经验：</em>
			                        	<c:if test="${job.jobInfo.workExperience==1 }">应届</c:if>
			                        	<c:if test="${job.jobInfo.workExperience==2 }">1-2年</c:if>
			                        	<c:if test="${job.jobInfo.workExperience==3 }">2-3年</c:if>
			                        	<c:if test="${job.jobInfo.workExperience==4 }">3-4年</c:if>
			                        	<c:if test="${job.jobInfo.workExperience==5 }">5年</c:if>
			                        	<c:if test="${job.jobInfo.workExperience==6 }">5年以上</c:if>
			                        	
			                        </span>
			                        <span><em class="c7">最低学历： </em>${job.highistEducation}</span>
			                        <br />
			                        <span><em class="c7">职位诱惑：</em>${job.jobInfo.discription}</span>
			                        <br />
			                       <%-- <span><fmt:formatDate value="${job.announceTime}" pattern="yyyy-MM-dd"/></span> --%>
			                        
			                    </div>  
			                    
						       <div class="hot_pos_r">
			                       <div class="apply">
			                        <a href="${ctx}/sendResume?jobId=${job.jobId}&companyId=${job.company.companyId}" target="_blank">
			                        	
			                        	投递简历	
			                        </a>
			                      </div>
			                      <div class="mb10"><a href="${ctx}/..." target="_blank">${job.company.companyName }</a></div>
			                      <span><em class="c7"></em>${job.company.companyInfo.introduction }</span>
			                        <br />
			                        <span><em class="c7">规模： </em>
			                        	<c:if test="${job.company.companyInfo.scale==1}">小于50人</c:if>
			                        	<c:if test="${job.company.companyInfo.scale==2 }">50-150人</c:if>
			                        	<c:if test="${job.company.companyInfo.scale==3 }">150-300人</c:if>
			                        	<c:if test="${job.company.companyInfo.scale==4 }">300-500人</c:if>
			                        	<c:if test="${job.company.companyInfo.scale==5 }">500-100人</c:if>
			                        	<c:if test="${job.company.companyInfo.scale==6 }">1000人以上</c:if>
			                        </span>
			                        <ul class="companyTags reset">		     
			                        <li>
			                        	<c:if test="${job.jobInfo.welfare==1}">五险一金</c:if>
			                        	<c:if test="${job.jobInfo.welfare==2 }">五险一金，包住</c:if>
			                        	<c:if test="${job.jobInfo.welfare==3 }">包吃，包住</c:if>
			                        	<c:if test="${job.jobInfo.welfare==4 }">五险一金,年底双薪</c:if>
			                        	<c:if test="${job.jobInfo.welfare==5 }">五险一金，周末双休</c:if>

			                        </li>
   				               	  </ul>
			                    </div>
			                 </li>
			               </c:forEach>
	                    </ul> 
	                  <div class="Pagination"></div>
            	    </div>	

<script>
$(function(){
	/***************************
 	 * 分页
 	 */
 	 						$('.Pagination').pager({
		      currPage: 1,
		      pageNOName: "pn",
		      form: "searchForm",
		      pageCount: 30,
		      pageSize:  5 
		});
		
	$(".workplace dd").not('.more').children('a').click(function(){
		$('#lc').val(1);
		editForm("cityInput" , $(this).html());
	});
	
	$("#box_expectCity dd span").click(function(){
		$('#lc').val(1);
		editForm("cityInput" , $(this).html());
	});
	
	$('#options dd div').click(function(){
		var firstName = $(this).parents('dl').children('dt').text();
		var fn = $.trim(firstName);
		if (fn=="月薪范围"){
			editForm("yxInput" , $(this).html());
		}
		else if(fn=="工作经验"){
			editForm("gjInput" , $(this).html());
		}
		else if(fn=="最低学历"){
			editForm("xlInput" , $(this).html());
		}
		else if(fn=="工作性质"){
			editForm("gxInput" , $(this).html());
		}
		else if(fn=="发布时间"){
			editForm("stInput" , $(this).html());
		}
	});
	
	$('#selected ul').delegate('li span.select_remove','click',function(event){
		var firstName = $(this).parent('li').find('strong').text();
		var fn = $.trim(firstName);
		if (fn=="月薪范围")
			editForm("yxInput" , "");
		else if(fn=="工作经验")
			editForm("gjInput" , "");
		else if(fn=="最低学历")
			editForm("xlInput" , "");
		else if(fn=="工作性质")
			editForm("gxInput" , "");
		else if(fn=="发布时间")
			editForm("stInput" , "");
	});
	
	/* search结果飘绿	*/
	(function($) {
		var searchVal = $('#search_input').val();
		var reg = /\s/g;     
		searchVal = searchVal.replace(reg, "").split(""); 
		
		var resultL = '';
		var resultR = '';
		$('.hot_pos li').each(function(){
			resultL = $('.hot_pos_l a',this).text().split("");
			$.each(resultL,function(i,v){
				if($.inArray(v.toLowerCase(),searchVal) != -1 || $.inArray(v.toUpperCase(),searchVal) != -1){
					resultL[i] = '<span>'+ v +'</span>';
				}
			});
			$('.hot_pos_l a',this).html(resultL.join(''));
			
			resultR = $('.hot_pos_r .mb10 a',this).text().split("");
			$.each(resultR,function(i,v){
				if($.inArray(v.toLowerCase(),searchVal) != -1 || $.inArray(v.toUpperCase(),searchVal) != -1){
					resultR[i] = '<span>'+ v +'</span>';
				}
			});
			$('.hot_pos_r .mb10 a',this).html(resultR.join(''));
		});
		
	})(jQuery);
	
	//didi tip
   	if($.cookie('didiTip') != 1 && false){
		$('#tip_didi').show();
	}
	$('#tip_didi a').click(function(){
		$(this).parent().remove();
		$.cookie('didiTip',1,{ expires: 30, path: '/'});
	});
	
});

function editForm(inputId,inputValue){
	$("#"+inputId).val(inputValue);
	var keyword = $.trim($('#search_input').val());
	var reg =  /[`~!@\$%\^\&\*\(\)_<>\?:"\{\},\\\/;'\[\]]/ig;
	var re = /#/g;
	var r = /\./g;
	var kw = keyword.replace(reg," ");

	if(kw == ''){
		$('#searchForm').attr('action','list.html所有职位').submit();	
	}else{
		kw = kw.replace(re,'井');
		kw = kw.replace(r,'。');
		$('#searchForm').attr('action','list.html'+kw).submit();
	}
	//$("#searchForm").submit();
}
</script>

			<div class="clear"></div>
			<input type="hidden" id="resubmitToken" value="" />
	    	<a id="backtop" title="回到顶部" rel="nofollow"></a>
	    </div><!-- end #container -->
	</div><!-- end #body -->
	<div id="footer">
		<div class="wrapper">
			<a href="h/about.html" target="_blank" rel="nofollow">联系我们</a>
		    <a href="h/af/zhaopin.html" target="_blank">互联网公司导航</a>
		    <a href="http://e.weibo.com/lagou720" target="_blank" rel="nofollow">拉勾微博</a>
		    <a class="footer_qr" href="javascript:void(0)" rel="nofollow">拉勾微信<i></i></a>
			<div class="copyright">&copy;2013-2014 Lagou <a target="_blank" href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action">京ICP备14023790号-2</a></div>
		</div>
	</div>

<script type="text/javascript" src="style/js/core.min.js"></script>
<script type="text/javascript" src="style/js/popup.min.js"></script>

<!--  -->

</body>
</html>