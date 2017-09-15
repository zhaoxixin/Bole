<%@ page contentType="text/html; charset=utf-8"%>
<%@ include file="../base.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML>
<html xmlns:wb="http://open.weibo.com/wb">
<head>
<script id="allmobilize" charset="utf-8" src="style/js/allmobilize.min.js"></script>
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="alternate" media="handheld"  />
<!-- end 云适配 -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>伯乐-古有伯乐识马行千里 今朝我将伴你度百年</title>
<meta property="qc:admins" content="23635710066417756375" />
<meta content="" name="description">
<meta content="" name="keywords">
<meta name="baidu-site-verification" content="QIQ6KC1oZ6" />
<style type="text/css">
.f_l {float:left;}
.f_r {float:right;}
.ct {height:60px;padding-left:10px;text-align:center;}
.ct_now {width:60px;padding-top:20px;font-size:16px;letter-spacing:3px;font-weight:bold;color:#f16800;}
.ct_box {text-align:center;}
.ct_box span {vertical-align:bottom;}
.ct_nav {text-align:center;height:18px;line-height:18px;color:#333;cursor:pointer;overflow:hidden;display:inline-block;}
.ct_hover {color:#f25000;height:18px;line-height:18px;overflow:hidden;}
.ct_link {background:#FFFFFF;border:#f16800 2px solid;width:305px;display:none;z-index:9999;}
.ct_hovers {display:block;position:absolute;}
.ct_links {width:60px;margin-right:1px;height:30px;line-height:30px;font-size:13px;text-align:center;background:#f6f6f6;vertical-align:top;margin-bottom:1px;display:inline-block;}
.ct_show {background:#ccc;height:18px;line-height:18px;padding:5px;cursor:pointer;}
</style>

<!-- <div class="web_root"  style="display:none">h</div> -->
<script language="javascript" type="text/javascript" src="jquery.min.js"></script>
<script src="js/jquery-1.4.2.js"></script>
<script type="text/javascript">
console.log(1);
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

<script type="text/javascript">
$(document).ready(function(){
$(function () {
$('.ct_nav').click(function(){
$(".ct_link").attr('class','ct_link ct_hovers');
});
$('#closect').click(function(){
$(".ct_link").attr('class','ct_link');
});
$('.ct_links').click(function(){
$(".ct_link").attr('class','ct_link');
$("#ctname").html($(this).html());
});
});
});
  </script>
 <script type="text/javascript">
 	
 </script>
  
</head>
<body>
    <div id="body">
		<!-- <div class="ct f_l">
        <div class="ct_now" id="ctname">全国</div>
        <div class="ct_swich"><span class="ct_nav">[切换城市]</span></div>
        <div class="ct_link">
        <div class="ct_show"><span id="closect" class="f_r" title="关闭窗口">X</span><span class="f_l">城市列表</span></div>
        <a class="ct_links" href="javascript:">全国</a><a class="ct_links" href="javascript:">深圳</a><a class="ct_links" href="javascript:">广州</a><a class="ct_links" href="javascript:">东莞</a><a class="ct_links" href="javascript:">汕头</a><a class="ct_links" href="javascript:">珠海</a><a class="ct_links" href="javascript:">佛山</a><a class="ct_links" href="javascript:">福州</a><a class="ct_links" href="javascript:">南京</a><a class="ct_links" href="javascript:">苏州</a><a class="ct_links" href="javascript:">武汉</a><span class="ct_links"></span><span class="ct_links"></span><span class="ct_links"></span><span class="ct_links"></span>
       </div>
       </div> -->
    	  <div id="header">
    	     <div class="wrapper">
    		<a href="${ctx }" class="logo">
    			<img src="style/images/logo.png" width="229" height="43" alt="拉勾招聘-专注互联网招聘" />
    		</a>
    		<ul class="reset" id="navheader">
    			<li class="current"><a href="${ctx }">首页</a></li>
    			<li ><a href="${ctx }/companyhome" >企业入口</a></li>
    			<li ><a href="#" target="_blank">名企专区</a></li>

    		    <li ><a href="jianli.html" rel="nofollow">我的简历</a></li>
	    		<li ><a href="create.html" rel="nofollow">发布职位</a></li>
	    	</ul>
            <ul class="loginTop">
					<!-- <li><a href="${ctx}/toLogin.action" rel="nofollow">登录</a></li>
					<li>|</li>
					<li><a href="${ctx}/toRegister.action" rel="nofollow">注册</a></li> -->
					
					
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
             <div class="ct f_l">
						<div class="ct_now" id="ctname"><font color="7706625">全国</font></div>
							<div class="ct_swich"><span class="ct_nav">[切换城市]</span></div>
							<div class="ct_link">
							<div class="ct_show"><span id="closect" class="f_r" title="关闭窗口">X</span><span class="f_l">城市列表</span></div>
								<a class="ct_links" href="javascript:">全国</a><a class="ct_links" href="javascript:">北京</a><a class="ct_links" href="javascript:">广州</a>
								<a class="ct_links" href="javascript:">东莞</a><a class="ct_links" href="javascript:">汕头</a><a class="ct_links" href="javascript:">珠海</a>
								<a class="ct_links" href="javascript:">佛山</a><a class="ct_links" href="javascript:">福州</a><a class="ct_links" href="javascript:">南京</a>
								<a class="ct_links" href="javascript:">苏州</a><a class="ct_links" href="javascript:">武汉</a><a class="ct_links" href="javascript:">深圳</a>
								<a class="ct_links" href="javascript:">无锡</a><a class="ct_links" href="javascript:">西安</a><a class="ct_links" href="javascript:">重庆</a>
								<a class="ct_links" href="javascript:">上海</a><a class="ct_links" href="javascript:">成都</a><a class="ct_links" href="javascript:">太原</a>
								<a class="ct_links" href="javascript:">杭州</a><a class="ct_links" href="javascript:">济南</a><a class="ct_links" href="javascript:">青岛</a>
								<span class="ct_links"></span><span class="ct_links"></span><span class="ct_links"></span><span class="ct_links"></span>
						</div>
					</div>

    </div><!-- end #header -->
   
    <div id="container">
        				
		<div id="sidebar">
			<div class="mainNavs">
				<c:forEach items="${industryList }" var="in">
			   <div class="menu_box">
				
				     <div class="menu_main">
					   <h2>${in.industryName } <span></span></h2>            		
		            </div>
			    	<div class="menu_sub dn">
			   		  <dl class="reset">
			        	<dt>
			        		
			            </dt>
				       <dd>
				         <c:forEach items="${in.professionList }" var="p" varStatus="status">
					     	<a href="" onclick="findJob(this,index)">${p.professionName }</a>
					      </c:forEach>
					   </dd>
			         </dl>
				   </div>
		     </div>
		    </c:forEach>
		</div>
				 					
			<a class="subscribe" href="subscribe.html" target="_blank">订阅职位</a>
		</div>
		
      <div class="content">	
	   <div id="search_box">
		<form id="searchForm" name="searchForm" action="${ctx }/findJobByName" method="post">
        <ul id="searchType">
        	<li data-searchtype="1" class="type_selected">职位</li>
        	<li data-searchtype="4">公司</li>
        </ul>
        <div class="searchtype_arrow"></div>
        <input type="text" id="search_input" name = "kd"  tabindex="1" value=""  placeholder="请输入职位名称，如：产品经理"  />
        
        <input type="hidden" name="spc" id="spcInput" value=""/>
        <input type="hidden" name="pl" id="plInput" value=""/>
        <input type="hidden" name="gj" id="gjInput" value=""/>
        <input type="hidden" name="xl" id="xlInput" value=""/>
        <input type="hidden" name="yx" id="yxInput" value=""/>
        <input type="hidden" name="gx" id="gxInput" value="" />
        <input type="hidden" name="st" id="stInput" value="" />
        <input type="hidden" name="labelWords" id="labelWords" value="" />
        <input type="hidden" name="lc" id="lc" value="" />
        <input type="hidden" name="workAddress" id="workAddress" value=""/>
                <input type="hidden" name="city" id="cityInput" value=""/>
                <input type="submit" id="search_button" value="搜索" />
         <!-- <div>
        	更多：
        		<select name="salaryRange">
        			<option value="1">2001-4000</option>
        			<option value="2">4001-6000</option>
        			<option value="3">6001-8000</option>
        			<option value="4">8001-10000</option>
        			<option value="5">10001-15000</option>
        			<option value="6">15001-20000</option>
        			<option value="7">20001-30000</option>
        			<option value="8">面议</option>
        		</select>
        		
        		<select name="scale">
        			<option value="1">小于50人</option>
        			<option value="2">50-150人</option>
        			<option value="3">150-300人</option>
        			<option value="4">300-500人</option>
        			<option value="5">500-1000人</option>
        			<option value="6">1000人以上</option>			
        		</select>
        		
        		<select name="nature">
        			<option value="1">民营企业</option>
        			<option value="2">国有企业</option>
        			<option value="3">外资企业</option>
        			<option value="4">上市企业</option>
        			<option value="5">其他</option>
        		</select>
  
        </div> -->
				
    </form>
</div>
<style>
.ui-autocomplete{width:488px;background:#fafafa !important;position: relative;z-index:10;border: 2px solid #91cebe;}
.ui-autocomplete-category{font-size:16px;color:#999;width:50px;position: absolute;z-index:11; right: 0px;/*top: 6px; */text-align:center;border-top: 1px dashed #e5e5e5;padding:5px 0;}
.ui-menu-item{ *width:439px;vertical-align: middle;position: relative;margin: 0px;margin-right: 50px !important;background:#fff;border-right: 1px dashed #ededed;}
.ui-menu-item a{display:block;overflow:hidden;}
</style>
<script type="text/javascript" src="style/js/search.min.js"></script>
<dl class="hotSearch">
	<dt>热门搜索：</dt>
	<dd><a href="list.htmlJava?labelWords=label&city=">Java</a></dd>
	<dd><a href="list.htmlPHP?labelWords=label&city=">PHP</a></dd>
	<dd><a href="list.htmlAndroid?labelWords=label&city=">Android</a></dd>
	<dd><a href="list.htmliOS?labelWords=label&city=">iOS</a></dd>
	<dd><a href="list.html前端?labelWords=label&city=">前端</a></dd>
	<dd><a href="list.html产品经理?labelWords=label&city=">产品经理</a></dd>
	<dd><a href="list.htmlUI?labelWords=label&city=">UI</a></dd>
	<dd><a href="list.html运营?labelWords=label&city=">运营</a></dd>
	<dd><a href="list.htmlBD?labelWords=label&city=">BD</a></dd>
	<dd><a href="list.html?gx=实习&city=">实习</a></dd>
</dl>			
			<div id="home_banner">
	            <ul class="banner_bg">
	            		                <li  class="banner_bg_1 current" >
	                    <a href="h/subject/s_buyfundation.html?utm_source=DH__lagou&utm_medium=banner&utm_campaign=haomai" target="_blank"><img src="style/images/d05a2cc6e6c94bdd80e074eb05e37ebd.jpg" width="612" height="160" alt="好买基金——来了就给100万" /></a>
	                </li>
	                	                <li  class="banner_bg_2" >
	                    <a href="h/subject/s_worldcup.html?utm_source=DH__lagou&utm_medium=home&utm_campaign=wc" target="_blank"><img src="style/images/c9d8a0756d1442caa328adcf28a38857.jpg" width="612" height="160" alt="世界杯放假看球，老板我也要！" /></a>
	                </li>
	                	                <li  class="banner_bg_3" >
	                    <a href="h/subject/s_xiamen.html?utm_source=DH__lagou&utm_medium=home&utm_campaign=xiamen" target="_blank"><img src="style/images/d03110162390422bb97cebc7fd2ab586.jpg" width="612" height="160" alt="出北京记——第一站厦门" /></a>
	                </li>
	                	            </ul>
	            <div class="banner_control">
	                <em></em> 
	                <ul class="thumbs">
	                		                    <li  class="thumbs_1 current" >
	                        <i></i>
	                        <img src="style/images/4469b1b83b1f46c7adec255c4b1e4802.jpg" width="113" height="42" />
	                    </li>
	                    	                    <li  class="thumbs_2" >
	                        <i></i>
	                        <img src="style/images/381b343557774270a508206b3a725f39.jpg" width="113" height="42" />
	                    </li>
	                    	                    <li  class="thumbs_3" >
	                        <i></i>
	                        <img src="style/images/354d445c5fd84f1990b91eb559677eb5.jpg" width="113" height="42" />
	                    </li>
	                    	                </ul>
	            </div>
	        </div><!--/#main_banner-->
			
        	<ul id="da-thumbs" class="da-thumbs">
	        		        		<li >
	                    <a href="h/c/1650.html" target="_blank">
	                        <img src="style/images/a254b11ecead45bda166afa8aaa9c8bc.jpg" width="113" height="113" alt="联想" />
	                        <div class="hot_info">
	                        	<h2 title="联想">联想</h2>
	                            <em></em>
	                            <p title="世界因联想更美好">
	                            	世界因联想更美好
	                            </p>
	                        </div>
	                    </a>
	                </li>
                	        		<li >
	                    <a href="h/c/9725.html" target="_blank">
	                        <img src="style/images/c75654bc2ab141df8218983cfe5c89f9.jpg" width="113" height="113" alt="淘米" />
	                        <div class="hot_info">
	                        	<h2 title="淘米">淘米</h2>
	                            <em></em>
	                            <p title="将心注入 追求极致">
	                            	将心注入 追求极致
	                            </p>
	                        </div>
	                    </a>
	                </li>
                	        		<li >
	                    <a href="h/c/1914.html" target="_blank">
	                        <img src="style/images/2bba2b71d0b0443eaea1774f7ee17c9f.png" width="113" height="113" alt="优酷土豆" />
	                        <div class="hot_info">
	                        	<h2 title="优酷土豆">优酷土豆</h2>
	                            <em></em>
	                            <p title="专注于视频领域，是中国网络视频行业领军企业">
	                            	专注于视频领域，是中国网络视频行业领军企业
	                            </p>
	                        </div>
	                    </a>
	                </li>
                	        		<li >
	                    <a href="h/c/6630.html" target="_blank">
	                        <img src="style/images/f4822a445a8b495ebad81fcfad3e40e2.jpg" width="113" height="113" alt="思特沃克" />
	                        <div class="hot_info">
	                        	<h2 title="思特沃克">思特沃克</h2>
	                            <em></em>
	                            <p title="一家全球信息技术服务公司">
	                            	一家全球信息技术服务公司
	                            </p>
	                        </div>
	                    </a>
	                </li>
                	        		<li >
	                    <a href="h/c/2700.html" target="_blank">
	                        <img src="style/images/5caf8f9631114bf990f87bb11360653e.png" width="113" height="113" alt="奇猫" />
	                        <div class="hot_info">
	                        	<h2 title="奇猫">奇猫</h2>
	                            <em></em>
	                            <p title="专注于移动互联网、互联网产品研发">
	                            	专注于移动互联网、互联网产品研发
	                            </p>
	                        </div>
	                    </a>
	                </li>
                	        		<li  class="last" >
	                    <a href="h/c/1335.html" target="_blank">
	                        <img src="style/images/c0052c69ef4546c3b7d08366d0744974.jpg" width="113" height="113" alt="堆糖网" />
	                        <div class="hot_info">
	                        	<h2 title="堆糖网">堆糖网</h2>
	                            <em></em>
	                            <p title="分享收集生活中的美好，遇见世界上的另外一个你">
	                            	分享收集生活中的美好，遇见世界上的另外一个你
	                            </p>
	                        </div>
	                    </a>
	                </li>
                            </ul>
            
            <ul class="reset hotabbing">
            	            		<li class="current"><a href="${ctx }/findNewJob">热门职位</a></li>
            	            	    <li><a href="${ctx }/findHotJob">最新职位</a></li>
            </ul>
            
	                        	            				            		
	            
            
            <div class="clear"></div>
			<div id="linkbox">
			    <dl>
			        <dt>友情链接</dt>
			        <dd>
			        		<a href="http://www.zhuqu.com/" target="_blank">住趣家居网</a> <span>|</span>
			        		<a href="http://www.woshipm.com/" target="_blank">人人都是产品经理</a> <span>|</span>
			        		<a href="http://zaodula.com/" target="_blank">互联网er的早读课</a> <span>|</span>
			                <a href="http://lieyunwang.com/" target="_blank">猎云网</a> <span>|</span>
			        		<a href="http://www.ucloud.cn/" target="_blank">UCloud</a> <span>|</span>
			          		<a href="http://www.iconfans.com/" target="_blank">iconfans</a>  <span>|</span>
			          		<a href="http://www.html5dw.com/" target="_blank">html5梦工厂</a>   <span>|</span>
			          		<a href="http://www.sykong.com/" target="_blank">手游那点事</a> 
			          		
			          		<a href="http://www.mycodes.net/" target="_blank">源码之家</a> <span>|</span>
			          		<a href="http://www.uehtml.com/" target="_blank">uehtml</a> <span>|</span>
			          		<a href="http://www.w3cplus.com/" target="_blank">W3CPlus</a> <span>|</span>
			          		<a href="http://www.boxui.com/" target="_blank">盒子UI</a> <span>|</span>
			          		<a href="http://www.uimaker.com/" target="_blank">uimaker</a> <span>|</span>
			          		<a href="http://www.yixieshi.com/" target="_blank">互联网的一些事</a> <span>|</span>
			          		<a href="http://www.chuanke.com/" target="_blank">传课网</a> <span>|</span>
			          		<a href="http://www.eoe.cn/" target="_blank">安卓开发</a> <span>|</span>
			          		<a href="http://www.eoeandroid.com/" target="_blank">安卓开发论坛</a> 
			          		<a href="http://hao.360.cn/" target="_blank" >360安全网址导航</a> <span>|</span>
			          		<a href="http://se.360.cn/" target="_blank" >360安全浏览器</a> <span>|</span>
			          		<a href="http://www.hao123.com/" target="_blank" >hao123上网导航</a> <span>|</span>
			          		<a href="http://www.ycpai.com" target="_blank" >互联网创业</a><span>|</span>
			          		<a href="http://www.zhongchou.cn" target="_blank" >众筹网</a><span>|</span>
			          		<a href="http://www.marklol.com/" target="_blank" >马克互联网</a><span>|</span>
			          		<a href="http://www.chaohuhr.com/" target="_blank" >巢湖英才网</a>
			          		
			          		<a href="http://www.zhubajie.com/" target="_blank" >创意服务外包</a><span>|</span>
			          		<a href="http://www.thinkphp.cn/" target="_blank" >thinkphp</a><span>|</span>
			          		<a href="http://www.chuangxinpai.com/" target="_blank" >创新派</a><span>|</span>

			          		<a href="http://w3cshare.com/" target="_blank" >W3Cshare</a><span>|</span>
			          		<a href="http://www.518lunwen.cn/" target="_blank" >论文发表网</a><span>|</span>
			          		<a href="http://www.199it.com" target="_blank" >199it</a><span>|</span>

			          		<a href="http://www.shichangbu.com" target="_blank" >市场部网</a><span>|</span>
			          		<a href="http://www.meitu.com/" target="_blank" >美图公司</a><span>|</span>
			          		<a href="https://www.teambition.com/" target="_blank" >Teambition</a>
			          		<a href="http://oupeng.com/" target="_blank" >欧朋浏览器</a><span>|</span>
			          		<a href="http://iwebad.com/" target="_blank">网络广告人社区</a>
			          		<a href="h/af/flink.html" target="_blank" class="more">更多</a>
			        </dd>
			    </dl>
			</div>
        </div>	
 	    <input type="hidden" value="" name="userid" id="userid" />
 		<!-- <div id="qrSide"><a></a></div> -->
<!--  -->

<!-- <div id="loginToolBar">
	<div>
		<em></em>
		<img src="style/images/footbar_logo.png" width="138" height="45" />
		<span class="companycount"></span>
		<span class="positioncount"></span>
		<a href="#loginPop" class="bar_login inline" title="登录"><i></i></a>
		<div class="right">
			<a href="register.html?from=index_footerbar" onclick="_hmt.push(['_trackEvent', 'button', 'click', 'register'])" class="bar_register" id="bar_register" target="_blank"><i></i></a>
		</div>
		<input type="hidden" id="cc" value="16002" />
		<input type="hidden" id="cp" value="96531" />
	</div>
</div>
 -->
<!-------------------------------------弹窗lightbox  ----------------------------------------->
<div style="display:none;">
	<!-- 登录框 -->
	<div id="loginPop" class="popup" style="height:240px;">
       	<form id="loginForm">
			<input type="text" id="email" name="email" tabindex="1" placeholder="请输入登录邮箱地址" />
			<input type="password" id="password" name="password" tabindex="2" placeholder="请输入密码" />
			<span class="error" style="display:none;" id="beError"></span>
		    <label class="fl" for="remember"><input type="checkbox" id="remember" value="" checked="checked" name="autoLogin" /> 记住我</label>
		    <a href="h/reset.html" class="fr">忘记密码？</a>
		    <input type="submit" id="submitLogin" value="登 &nbsp; &nbsp; 录" />
		</form>
		<div class="login_right">
			<div>还没有拉勾帐号？</div>
			<a href="register.html" class="registor_now">立即注册</a>
		    <div class="login_others">使用以下帐号直接登录:</div>
		    <a href="h/ologin/auth/sina.html" target="_blank" id="icon_wb" class="icon_wb" title="使用新浪微博帐号登录"></a>
		    <a href="h/ologin/auth/qq.html" class="icon_qq" id="icon_qq" target="_blank" title="使用腾讯QQ帐号登录" ></a>
		</div>
    </div><!--/#loginPop-->
</div>
<!------------------------------------- end ----------------------------------------->
<script type="text/javascript" src="style/js/Chart.min.js"></script>
<script type="text/javascript" src="style/js/home.min.js"></script>
<script type="text/javascript" src="style/js/count.js"></script>
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

<!-- <script src="style/js/wb.js" type="text/javascript" charset="utf-8"></script>
 -->

</body>
</html>	