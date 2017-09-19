<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html xmlns:wb="http://open.weibo.com/wb"><head>
</script><script type="text/javascript" async="" src="style/js/conversion.js"></script><script src="style/js/allmobilize.min.js" charset="utf-8" id="allmobilize"></script><style type="text/css"></style>
<meta content="no-siteapp" http-equiv="Cache-Control">
<link  media="handheld" rel="alternate">
<!-- end 云适配 -->
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>${companyone.companyName}-伯乐网-最专业的互联网招聘平台</title>
<meta content="23635710066417756375" property="qc:admins">
<meta name="description" content="">
<meta name="keywords" content="">
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
    		<a class="logo" href="index.html">
    			<img width="229" height="43" alt="伯乐招聘-专注互联网招聘" src="style/images/logo.png">
    		</a>
    		<ul id="navheader" class="reset">
    			<li><a href="javascript:void(0)" onclick="location.href='/.action'">首页</a></li>
	    		<li><a href="javascript:void(0)" onclick="location.href='companyResumes.action'">简历管理</a>
	    					    			</li>
	    		<li><a href="javascript:void(0)" onclick="location.href='createcom.action'">发布职位</a></li>
	    		    		</ul>
        	        	<dl class="collapsible_menu">
            	<dt>
            	<%-- <c:forEach items="${company }" var="com"></c:forEach> --%>
           			<li>欢迎 [ ${companyone.companyName} ]</li>
            		<span class="red dn" id="noticeDot-1"></span>
            		<i></i>
            	</dt>
                	<dd><a href="javascript:void(0)" onclick="location.href='companyResumes.action'">简历管理</a></dd>
                    <dd><a href="javascript:void(0)" onclick="location.href='createcom.action'">发布的职位</a></dd>
                                <dd class="logout"><a href="javascript:void(0)" onclick="location.href='logout.action'">退出登录</a></dd>
            </dl>
                                </div>
    </div><!-- end #header -->
    <div id="container">
        <!-- <script src="style/js/swfobject_modified.js" type="text/javascript"></script> -->
        <div class="clearfix">
        				
            <div class="content_l">           
	                <div class="c_detail">
	                	<div style="background-color:#fff;" class="c_logo">
		                	<a title="上传公司LOGO" id="logoShow" class="inline cboxElement" href="#logoUploader">
		                				                			<img width="190" height="190" alt="公司logo" src="${companyone.logo} ">
	             
	                        </a>
		                </div>
		                
		            		                <div class="c_logo" style="background-color:#fff;">
			                	<div id="logoShow">
			                		<img src="${companyone.logo}" width="190" height="190" alt="公司logo" />
		                        	
		                        </div>
		                        <input onchange="img_check(this,'http://www.bole.com/cd/saveProfileLogo.json',25927,'logo');" type="file" id="logo" name="logo" title="支持jpg、jpeg、gif、png格式，文件小于5M" />
			                     
			                </div>
		                    <span class="error" id="logo_error" style="display:none;"></span>
						
		                
	                    <div class="c_box companyName">
	                    		                   			<h2 title="${companyone.companyName}">${companyone.companyName}</h2>
	                   			                        
	                        	                        	<em class="unvalid"></em>
	                        	                        <div class="clear"></div>
	                       	
	                       		                   			<h1 title="${companyone.companyName}" class="fullname">${companyone.companyName}</h1>
	                        	                        
	                        <form class="clear editDetail dn" id="editDetailForm">
	                            <input type="text" placeholder="公司名称" maxlength="15" value="${companyone.companyName}" name="companyShortName" id="companyShortName">
	                            <input type="text" placeholder="公司简介" maxlength="200" value="${companyone.companyInfo.introduction}" name="companyFeatures" id="companyFeatures">
	                            <input type="hidden" value="25927" id="companyId" name="companyId">
	                            <input type="submit" value="保存" id="saveDetail" class="btn_small">
	                            <a id="cancelDetail" class="btn_cancel_s" >取消</a>
		                    </form>
	                            
	                        <div class="clear oneword"><img width="17" height="15" src="style/images/quote_l.png">&nbsp; <span>${companyone.companyInfo.address}</span> &nbsp;<img width="17" height="15" src="style/images/quote_r.png"></div>
	                        <h3 class="dn">已选择标签</h3>
	                        <ul style="overflow:auto" id="hasLabels" class="reset clearfix">
	                        			                        	<li><span>年终分红</span></li>
		                        		                        	<li><span>五险一金</span></li>
		                        		                        	<li><span>弹性工作</span></li>
		                        		                        	<li><span>岗位晋升</span></li>
		                        	                            <li class="link">编辑</li>
	                        </ul>
	                        <div class="dn" id="addLabels">
	                        	<a id="changeLabels" class="change" href="javascript:void(0)">换一换</a>
	                        	<input type="hidden" value="1" id="labelPageNo">
	                            <input type="submit" value="贴上" class="fr" id="add_label">
                            	<input type="text" placeholder="添加自定义标签" name="label" id="label" class="label_form fr">	
	                            <div class="clear"></div>
	                            <ul class="reset clearfix"> </ul>
	                            <a id="saveLabels" class="btn_small" href="javascript:void(0)">保存</a>
	                            <a id="cancelLabels" class="btn_cancel_s" href="javascript:void(0)">取消</a>
	                        </div>
	                    </div>
	                    <a title="编辑基本信息" class="c_edit" id="editCompanyDetail" href="javascript:void(0);"></a>
	                	<div class="clear"></div>
	                </div>
                
                	<div class="c_breakline"></div>
       
       				<div id="Product">
        					        				
	        					<div class="product_wrap">

						    		
									<dl class="c_section dn">
					                	<dt>
					                    	<h2><em></em>公司产品</h2>
					                    </dt>
					                    <dd>
					                    	<div class="addnew">
					                        	酒香不怕巷子深已经过时啦！<br>
												把自己优秀的产品展示出来吸引人才围观吧！<br>
					                            <a class="product_edit" href="javascript:void(0)">+添加公司产品</a>
					                        </div>
					                    </dd>
					                </dl>
	                
					           
					                <dl id="newProduct" class="newProduct dn">
					                	<dt>
					                    	<h2><em></em>公司产品</h2>
					                    </dt>
					                    <dd>
					                        <form method="post" class="productForm">
					                            <div class="new_product">
					                            	
							                            <div class="product_upload dn productNo">
							                                <div>
							                                	<span>上传产品图片</span> 
							                                    <br>	
							                                   		 尺寸：380*220px  	大小：小于5M
							                                </div>
							                            </div>
							                            <div class="product_upload productShow">
							                            	<img width="380" height="220" src="style/images/product_default.png">
								                        	<span>更换产品图片<br>380*220px 小于5M</span>
								                        </div>
							                        
							                        <input type="file" title="支持jpg、jpeg、gif、png格式，文件小于5M" onchange="product_check(this,'http://www.bole.com/c/upload.json','productNo','productShow','type','productInfos');" name="myfiles" id="myfiles0">
							                    	<input type="hidden" value="3" name="type" class="type"> 
							                    	<input type="hidden" value="images/product_default.png" name="productPicUrl" class="productInfos">   
							                    </div>
					                            
					                            <div class="cp_intro">
					                               	<input type="text" placeholder="请输入产品名称" value="" name="product">	
					                                <input type="text" placeholder="请输入产品网址" value="" name="productUrl">	
					                                <textarea placeholder="请简短描述该产品定位、产品特色、用户群体等" maxlength="500" value=""</textarea>	
					                                <div class="word_count fr">你还可以输入 <span>500</span> 字</div>
					                                <div class="clear"></div>
					                                <input type="submit" value="保存" class="btn_small">
					                                <a class="btn_cancel_s product_delete" href="javascript:void(0)">删除</a>
					                        		<input type="hidden" value="11867" class="product_id">
					                            </div> 
											</form>
					                    </dd>
					                </dl>
					         
					                <dl class="c_product">
					                	<dt>
					                    	<h2><em></em>公司产品</h2>
					                    </dt>
					                    <dd>
					                    	<img width="380" height="220" alt="发大发" src="style/images/product_default.png">
				                        	<div class="cp_intro">
				                        						                        		<h3><a target="_blank" href=""> </a></h3>
					                            <div class="scroll-pane" style="overflow: hidden; padding: 0px; width: 260px;">
					                            	
					                            <div class="jspContainer" style="width: 260px; height: 140px;"><div class="jspPane" style="padding: 0px; top: 0px; width: 260px;"><div>${companyone.companyInfo.introduction}</div></div></div></div>
					                        </div>
					                        <a title="编辑公司产品" class="c_edit product_edit" href="javascript:void(0)"></a>
					            								            			<a title="新增公司产品" class="c_add product_add" href="javascript:void(0)"></a>
					            								                    </dd>
					                </dl>
	            
	              				</div>
       								        						    			        			</div>   <!-- end #Product --> 
       	
       				<div id="Profile">
			            				        	<div class="profile_wrap">
					             <!--无介绍 -->
									<dl class="c_section dn">
					                	<dt>
					                    	<h2><em></em>公司介绍</h2>
					                    </dt>
					                    <dd>
					                    	<div class="addnew">
					                        	详细公司的发展历程、让求职者更加了解你!<br>
					                            <a id="addIntro" href="javascript:void(0)">+添加公司介绍</a>
					                        </div>
					                    </dd>
					                </dl>
					            <!--编辑介绍-->
					                <dl class="c_section newIntro dn">
					                    <dt>
					                        <h2><em></em>公司介绍</h2>
					                    </dt>
					                    <dd>
						                    <form id="companyDesForm">
						                        <textarea placeholder="请分段详细描述公司简介、企业文化等" name="companyProfile" id="companyProfile"></textarea>		                                        
						                        <div class="word_count fr">你还可以输入 <span>1000</span> 字</div>
						                        <div class="clear"></div>
						                        <input type="submit" value="保存" id="submitProfile" class="btn_small">
						                        <a id="delProfile" class="btn_cancel_s" href="javascript:void(0)">取消</a>
						                    </form>
					                    </dd>
					                </dl>
					            
					            <!--有介绍-->
					               <dl class="c_section">
					               		<dt>
					                   		<h2><em></em>公司介绍</h2>
					                   	</dt>
					                   	<dd>
					                   		<div class="c_intro">${companyone.companyInfo.introduction}</div>
					                   		<a title="编辑公司介绍" id="editIntro" class="c_edit" href="javascript:void(0)"></a>
					                   	</dd>
					               	</dl>
				            </div>
				                 	
	     			</div><!-- end #Profile -->
      	
      	<!--[if IE 7]> <br /> <![endif]-->
	    
	        	 		        	<!--无招聘职位-->
						<dl id="noJobs" class="c_section">
		                	<dt>
		                    	<h2><em></em>招聘职位</h2>
		                    </dt>
		                    <dd>
		                    	<div class="addnew">
		                        	发布需要的人才信息，让伯乐和千里马尽快相遇……<br>
		                            <a href="javascript:void(0)" onclick="location.href='fbzw.action'">+添加招聘职位</a>
		                        </div>
		                    </dd>
		                </dl>
	          	
	          	<input type="hidden" value="" name="hasNextPage" id="hasNextPage">
	          	<input type="hidden" value="" name="pageNo" id="pageNo">
	          	<input type="hidden" value="" name="pageSize" id="pageSize">
          		<div id="flag"></div>
            </div>	<!-- end .content_l -->
            
            <div class="content_r">
            	<div id="Tags">
	            	<div id="c_tags_show" class="c_tags solveWrap">
	                    <table>
	                        <tbody><tr>
	                            <td width="45">地点</td>
	                            <td>${companyone.companyInfo.address}</td>
	                        </tr>
	                        <tr>
	                            <td>企业性质</td><!-- 支持多选 -->
	                            <td>${companyone.companyInfo.scale}</td>
	                             <%-- <td><c:if test="${company.companyInfo.scale==1}">民营企业</c:if>
		                         <c:if test="${company.companyInfo.scale==2}">国有企业</c:if>
		                         <c:if test="${company.companyInfo.scale==3}">外资企业</c:if>
		                         <c:if test="${company.companyInfo.scale==4}">上市企业</c:if>
		                          <c:if test="${company.companyInfo.scale==5}">其他</c:if> --%>
	                        </tr>
	                        <tr>
	                            <td>规模</td>	                             
	                            <td><c:if test="${companyone.companyInfo.scale==1}">小于50人</c:if>
		                         <c:if test="${companyone.companyInfo.scale==2}">50-150人</c:if>
		                         <c:if test="${companyone.companyInfo.scale==3}">150-300人</c:if>
		                         <c:if test="${companyone.companyInfo.scale==4}">300-500人</c:if>
		                          <c:if test="${companyone.companyInfo.scale==5}">500-1000人</c:if>
		                          <c:if test="${companyone.companyInfo.scale==6}">1000人以上</c:if>
		                         </td>
	                        </tr>
	                        <tr>
	                            <td>主页</td>
	                            <td>
	                         <a rel="nofollow" title="" target="_blank" href=""></a>
            				 </td>
	                        </tr>
	                    </tbody></table>
	                    <a id="editTags" class="c_edit" href="javascript:void(0)"></a>
	                </div>
	                <div id="c_tags_edit" class="c_tags editTags dn">
		                <form id="tagForms">
		                    <table>
		                        <tbody><tr>
		                            <td>地点</td>
		                            <td>
		                            	<input type="text" placeholder="请输入地点" value="${companyone.companyInfo.address}" name="city" id="city">	
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>领域</td><!-- 支持多选 -->
		                            <td>
		                            	<input type="hidden" value="移动互联网" id="industryField" name="industryField">
		                            	<input type="button" style="background:none;cursor:default;border:none !important;" disable="disable" value="移动互联网" id="select_ind" class="select_tags">
		                                <!-- <div id="box_ind" class="selectBox dn">
		                                    <ul class="reset">
			                                    				                        							                            			<li class="current">移动互联网</li>
				                            							                            		                                    </ul>
		                                </div>	 -->
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>规模</td>
		                            <td>
		                            	<input type="hidden" value="150-500人" id="companySize" name="companySize">
		                            	<input type="button" value="150-500人" id="select_sca" class="select_tags">
		                                <div class="selectBox dn" id="box_sca" style="display: none;">
		                                    <ul class="reset">
		                                    			                                    						                            			<li>少于15人</li>
				                            				                                        		                                    						                            			<li>15-50人</li>
				                            				                                        		                                    						                            			<li>50-150人</li>
				                            				                                        		                                    						                            			<li class="current">150-500人</li>
				                            				                                        		                                    						                            			<li>500-2000人</li>
				                            				                                        		                                    						                            			<li>2000人以上</li>
				                            				                                        		                                    </ul>
		                                </div>	
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>主页</td>
		                            <td>
                            			<input type="text" placeholder="请输入网址" value="http://www.weimob.com" name="companyUrl" id="companyUrl">	
		                            </td>
		                        </tr>
		                    </tbody></table>
		                    <input type="hidden" id="comCity" value="">
		                    <input type="hidden" id="comInd" value="">
		                    <input type="hidden" id="comSize" value="">
		                    <input type="hidden" id="comUrl" value="">
		                    <input type="submit" value="保存" id="submitFeatures" class="btn_small">
		                    <a id="cancelFeatures" class="btn_cancel_s" href="javascript:void(0)">取消</a>
		                    <div class="clear"></div>
		            	</form>
	                </div>
       			</div><!-- end #Tags -->
       			
       			<dl class="c_section c_stages">
                	 <dt>
                    	<h2><em></em>公司发展</h2>
                    	<a title="编辑融资阶段" class="c_edit" href="javascript:void(0)"></a>
                    </dt>
                    <dd>
                    	<ul class="reset stageshow">
                    		<li>目前阶段：<span class="c5"></span></li>
                    		                    	</ul>
                    	<form class="dn" id="stageform">
                    		<div class="stageSelect">
                    			<label>目前阶段</label>
                    			<input type="hidden" value="" id="financeStage" name="financeStage">
	                         	<input type="button" value="" id="select_fin" class="select_tags_short fl">
	                            <div class="selectBoxShort dn" id="box_fin" style="display: none;">
	                                 <ul class="reset">
	                                 		                                 		
		        
				                           					                           		
	                                     	                                 		
				                           					                           		
	                                     	                                 </ul>
	                             </div>	
                    		</div>	
	                    	<ul id="stagesList" class="reset">
		                    				                    <li>
		                    		<label>融资阶段</label>
		                    		<input type="hidden" class="select_invest_hidden" name="select_invest_hidden">
				                    <input type="button" value="融资阶段" class="select_tags_short select_invest">
				                    <div class="selectBoxShort dn" style="display: none;">
				                        <ul class="reset">
				                        						                        						                        					                        							                        	<li>天使轮</li>
					                        						                        					                        							                        	<li>A轮</li>
					                        						                        					                        							                        	<li>B轮</li>
					                        						                        					                        							                        	<li>C轮</li>
					                        						                        					                        							                        	<li>D轮及以上</li>
					                        						                        					                        							                        	<li>上市公司</li>
					                        						                        				                        </ul>
				                    </div>
				                    <label>投资机构</label>
				                    <input type="text" placeholder="如真格基金" name="stageorg" value="">
		                    	</li>
		                    </ul>
		                    <input type="submit" value="保存" class="btn_small">
		                    <a id="cancelStages" class="btn_cancel_s" href="javascript:void(0)">取消</a>
		                    <div class="clear"></div>
		                    
		                    <div class="dn" id="cloneInvest">
		                    	<label>融资阶段</label>
	                    		<input type="hidden" class="select_invest_hidden" name="select_invest_hidden">
			                    <input type="button" value="发展阶段" class="select_tags_short select_invest">
			                    <div class="selectBoxShort dn" style="display: none;">
			                        <ul class="reset">
			                        					                        					                        				                        						                        	<li>天使轮</li>
				                        					                        				                        						                        	<li>A轮</li>
				                        					                        				                        						                        	<li>B轮</li>
				                        					                        				                        						                        	<li>C轮</li>
				                        					                        				                        						                        	<li>D轮及以上</li>
				                        					                        				                        						                        	<li>上市公司</li>
				                        					                        			                        </ul>
			                    </div>
			                    <label>投资机构</label>
			                    <input type="text" placeholder="如真格基金" name="stageorg">
		                    </div>
		                </form>
                    </dd>
                </dl>
	      
	       		<div id="Member">		
		       			       		
		                <dl class="c_section c_member">
		                	<dt>
		                    	<h2><em></em>创始团队</h2>
		                    		                    		<a title="添加创始人" class="c_add" href="javascript:void(0)"></a>
	                    				                    </dt>
		                    <dd> 
		                    			                    				                    
			       					<div class="member_wrap">
			       						
				                        <!-- 无创始人 -->
				                        <div class="member_info addnew_right dn">
				                        	展示公司的领导班子，<br>提升诱人指数！<br>
				                            <a class="member_edit" href="javascript:void(0)">+添加成员</a>
				                        </div>
				                        
				                        <!-- 编辑创始人 -->
		                        		<div class="member_info newMember dn">
			                        		<form class="memberForm">
					                            <div class="new_portrait">
						                            <div class="portrait_upload dn portraitNo">
						                                <span>上传创始人头像</span>
						                            </div>
						                            <div class="portraitShow">
						                            	<img width="120" height="120" src="style/images/leader_default.png">
							                        	<span>更换头像</span>
							                        </div>
							                        <input type="file" value="" title="支持jpg、jpeg、gif、png格式，文件小于5M" onchange="member_check(this,'http://www.bole.com/c/upload.json','portraitNo','portraitShow','type','leaderInfos');" name="myfiles" id="profiles0">
							                    	<input type="hidden" value="7" name="type" class="type">
							                    	<input type="hidden" value="images/leader_default.png" name="photo" class="leaderInfos">
						                            <em>
												                                尺寸：120*120px <br> 	
												                                大小：小于5M
						                            </em>
						                        </div>
						                        <input type="text" placeholder="请输入创始人姓名" value="" name="name">	
					                            <input type="text" placeholder="请输入创始人当前职位" value="" name="position">	
					                            <input type="text" placeholder="请输入创始人新浪微博地址" value="" name="weibo">	
					                            <textarea placeholder="请输入创始人个人简介" maxlength="500" class="s_textarea" name="remark"></textarea>	
					                            <div class="word_count fr">你还可以输入 <span>500</span> 字</div>
					                            <div class="clear"></div>
					                            <input type="submit" value="保存" class="btn_small">
				                                <a class="btn_cancel_s member_delete" href="javascript:void(0)">删除</a>
				                        		<input type="hidden" value="11493" class="leader_id">
				                        	</form>
				                        </div>
				                        
				                        <!-- 显示创始人 -->
				                    	<div class="member_info">
	                    					<a title="编辑创始人" class="c_edit member_edit" href="javascript:void(0)"></a>
				                        	<div class="m_portrait">
				                            	<div></div>
				                            	<img width="120" height="120" alt="孙泰英" src="style/images/leader_default.png">
					                        </div>
				                            <div class="m_name">
				                            
			                            		                            						<a target="_blank" class="weibo" href="http://weimob.weibo.com"></a>
				                            					                            </div>
				                            <div class="m_position"></div>
				                    		<div class="m_intro"></div>
				                        </div>
				                        
				                     </div><!-- end .member_wrap -->
				                     				                 		                    </dd>
		                </dl>
		       			       	</div> <!-- end #Member -->
	       	
	       	
	       <!--公司深度报道-->
            <div id="Reported">	
	            		            <!--无报道-->
		            <dl class="c_section c_reported">
		            	<dt>
		                	<h2><em></em>公司深度报道</h2>
                   			<a title="添加报道" class="c_add" href="javascript:void(0)"></a>
		                </dt>
		                <dd>
		                	<!-- 编辑报道 -->
                       		<ul class="reset"><li>
		                			<a style="" class="article" title="随便写" target="_blank" href="http://www.baidu.com">随便写</a>
		                			<a title="编辑报道" class="c_edit dn" href="javascript:;" style="display: inline;"></a>
		                			<form class="reportForm dn">
		                				<input type="text" placeholder="请输入文章标题" value="" name="articleTitle" class="valid">
		                				<input type="text" placeholder="请输入文章链接" value="" name="articleUrl" class="valid"><span for="articleUrl" generated="true" class="error" style="display: none;">请输入有效的文章链接</span>
		                				<input type="submit" value="保存" class="btn_small">
			                            <a class="btn_cancel_s report_delete" href="javascript:;">删除</a>
			                            <input type="hidden" value="5235" class="article_id">
			                     	</form>
		                		</li><li>
		                			<a style="" class="article" title="随便写" target="_blank" href="http://www.baidu.com">随便写</a>
		                			<a title="编辑报道" class="c_edit dn" href="javascript:;" style="display: inline;"></a>
		                			<form class="reportForm dn">
		                				<input type="text" placeholder="请输入文章标题" value="" name="articleTitle" class="valid">
		                				<input type="text" placeholder="请输入文章链接" value="" name="articleUrl" class="valid">
		                				<input type="submit" value="保存" class="btn_small">
			                            <a class="btn_cancel_s report_delete" href="javascript:;">删除</a>
			                            <input type="hidden" value="5236" class="article_id">
			                     	</form>
		                		</li></ul>
		                	
		                	<!-- 无报道 -->
	                        <div class="addnew_right reported_info dn">
	                        	展示外界对公司的深度报道，<br>便于求职者了解公司！<br>
	                            <a class="report_edit" href="javascript:void(0)">+添加报道</a>
	                        </div>
	                        
		                	<ul class="newReport dn">
	                        	<li>
		                			<a style="display:none;" class="article" title="" target="_blank" ></a>
		                			<a title="编辑报道" class="c_edit dn" href="javascript:;"></a>
		                			<form class="reportForm">
		                				<input type="text" placeholder="请输入文章标题" value="" name="articleTitle">
		                				<input type="text" placeholder="请输入文章链接" value="" name="articleUrl">
		                				<input type="submit" value="保存" class="btn_small">
			                            <a class="btn_cancel_s report_cancel" href="javascript:;">取消</a>
			                            <input type="hidden" value="" class="article_id">
			                     	</form>
		                		</li>
	                        </ul>
				        </dd>
		            </dl><!-- end .c_reported -->
		                    </div><!-- end #Reported -->
	       	
        </div>
   	</div>

<!-------------------------------------弹窗lightbox  ----------------------------------------->
<div style="display:none;">
	<div style="width:650px;height:470px;" class="popup" id="logoUploader">
		<object width="650" height="470" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" id="FlashID">
		  <param value="../../flash/avatar.swf?url=http://www.bole.com/cd/saveProfileLogo.json" name="movie">
		  <param value="high" name="quality">
		  <param value="opaque" name="wmode">
		  <param value="111.0.0.0" name="swfversion">
		  <!-- 此 param 标签提示使用 Flash Player 6.0 r65 和更高版本的用户下载最新版本的 Flash Player。如果您不想让用户看到该提示，请将其删除。 -->
		  <param value="../../Scripts/expressInstall.swf" name="expressinstall">
		  <!-- 下一个对象标签用于非 IE 浏览器。所以使用 IECC 将其从 IE 隐藏。 -->
		  <!--[if !IE]>-->
		  <object width="650" height="470" data="../../flash/avatar.swf?url=http://www.bole.com/cd/saveProfileLogo.json" type="application/x-shockwave-flash">
		    <!--<![endif]-->
		    <param value="high" name="quality">
		    <param value="opaque" name="wmode">
		    <param value="111.0.0.0" name="swfversion">
		    <param value="../../Scripts/expressInstall.swf" name="expressinstall">
		    <!-- 浏览器将以下替代内容显示给使用 Flash Player 6.0 和更低版本的用户。 -->
		    <div>
		      <h4>此页面上的内容需要较新版本的 Adobe Flash Player。</h4>
		      <p><a href="http://www.adobe.com/go/getflashplayer"><img width="112" height="33" src="style/images/get_flash_player.gif" alt="获取 Adobe Flash Player"></a></p>
		    </div>
		    <!--[if !IE]>-->
		  </object>
		  <!--<![endif]-->
		</object>
	</div><!-- #logoUploader -->
</div>
<!------------------------------------- end ----------------------------------------->

<script src="style/js/company.min.js" type="text/javascript"></script>
<script>
var avatar = {};
avatar.uploadComplate = function( data ){
	var result = eval('('+ data +')');
	if(result.success){
		jQuery('#logoShow img').attr("src",ctx+ '/'+result.content);
		jQuery.colorbox.close();
	}
};
</script>
			<div class="clear"></div>
			<input type="hidden" value="d1035b6caa514d869727cff29a1c2e0c" id="resubmitToken">
	    	<a rel="nofollow" title="回到顶部" id="backtop" style="display: inline;"></a>
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