package cn.bole.pojo;

import com.mysql.fabric.xmlrpc.base.Data;

import cn.bole.pojo.workExperience.WorkExperience;

/**
 * 简历类
 * @author Administrator
 *
 */
public class Resum extends BasicInfo{
	 private String resumeName;  //简历名称
	 private Data updateTime; //更新时间
	 private WorkExperience workExperience;
	 private Integer currentState;//<li>1.我目前已离职，可快速到岗</li><li>2.我目前正在职，正考虑换个新环境</li><li>3.我暂时不想找工作</li><li>4我是应届毕业生</li>
	 
	 private String resumId; //简历Id
	 private String userId;//用户Id
	 private String resumName;//简历名称
	 private String workExp; //工作履历
	 private String workAddr;//工作地址
	 private String eduExp;//教育经验
	
	 
}
