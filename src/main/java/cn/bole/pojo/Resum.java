package cn.bole.pojo;

import java.util.Date;

/**
 * 简历类
 * @author Administrator
 *
 */
public class Resum extends BasicInfo{
	 private String resumId; //简历Id
	 private String userId;//用户Id
	 private UserInfo userInfo;
	 private String resumeName;  //简历名称
	 private Date updateTime; //更新时间
	 private String currentState;//<li>1.我目前已离职，可快速到岗</li><li>2.我目前正在职，正考虑换个新环境</li><li>3.我暂时不想找工作</li><li>4我是应届毕业生</li>
	 private String companyName;
	 private String positionName;
	 private String companyYearStart;
	 private String companyMonthStart;
	 private String companyYearEnd;
	 private String companyMonthEnd;
	 private Integer userresumState;
	 private String expectCity;
	 private String type;   //1、全职   2、兼职    3、实习
	 private String expectPosition;  //期望职位
	 private String expectSalary;
	 private String resumName;//简历名称
	 private String workExp; //工作履历
	 private String workAddr;//工作地址
	 private String eduExp;//教育经验

	public String getResumId() {
		return resumId;
	}
	public void setResumId(String resumId) {
		this.resumId = resumId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public UserInfo getUserInfo() {
		return userInfo;
	}
	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}
	public String getResumeName() {
		return resumeName;
	}
	public void setResumeName(String resumeName) {
		this.resumeName = resumeName;
	}
	public Date getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	public String getCurrentState() {
		return currentState;
	}
	public void setCurrentState(String currentState) {
		this.currentState = currentState;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getPositionName() {
		return positionName;
	}
	public void setPositionName(String positionName) {
		this.positionName = positionName;
	}
	public String getCompanyYearStart() {
		return companyYearStart;
	}
	public void setCompanyYearStart(String companyYearStart) {
		this.companyYearStart = companyYearStart;
	}
	public String getCompanyMonthStart() {
		return companyMonthStart;
	}
	public void setCompanyMonthStart(String companyMonthStart) {
		this.companyMonthStart = companyMonthStart;
	}
	public String getCompanyYearEnd() {
		return companyYearEnd;
	}
	public void setCompanyYearEnd(String companyYearEnd) {
		this.companyYearEnd = companyYearEnd;
	}
	public String getCompanyMonthEnd() {
		return companyMonthEnd;
	}
	public void setCompanyMonthEnd(String companyMonthEnd) {
		this.companyMonthEnd = companyMonthEnd;
	}
	public Integer getUserresumState() {
		return userresumState;
	}
	public void setUserresumState(Integer userresumState) {
		this.userresumState = userresumState;
	}
	public String getExpectCity() {
		return expectCity;
	}
	public void setExpectCity(String expectCity) {
		this.expectCity = expectCity;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getExpectPosition() {
		return expectPosition;
	}
	public void setExpectPosition(String expectPosition) {
		this.expectPosition = expectPosition;
	}
	public String getExpectSalary() {
		return expectSalary;
	}
	public void setExpectSalary(String expectSalary) {
		this.expectSalary = expectSalary;
	}
	 
	
	 
}
