package cn.bole.pojo;

import java.util.Date;

import cn.bole.pojo.resume.ExpectJob;
import cn.bole.pojo.resume.WorkExperience;

/**
 * 简历类
 * @author Administrator
 *
 */
public class Resum {
	 private String resumId; //简历Id
	 private String userId;//用户Id
	 private String resumeName;  //简历名称
	 private Date updateTime; //更新时间
	 private Integer currentState;//<li>1.我目前已离职，可快速到岗</li><li>2.我目前正在职，正考虑换个新环境</li><li>3.我暂时不想找工作</li><li>4我是应届毕业生</li>
	 private ExpectJob expectJob;
	 private WorkExperience workExperience;
	 private UserInfo userInfo;
	 private Integer userresumState;
	 //
	public String getResumId() {
		return resumId;
	}
	public UserInfo getUserInfo() {
		return userInfo;
	}
	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
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
	public Integer getCurrentState() {
		return currentState;
	}
	public void setCurrentState(Integer currentState) {
		this.currentState = currentState;
	}
	public ExpectJob getExpectJob() {
		return expectJob;
	}
	public void setExpectJob(ExpectJob expectJob) {
		this.expectJob = expectJob;
	}
	public WorkExperience getWorkExperience() {
		return workExperience;
	}
	public void setWorkExperience(WorkExperience workExperience) {
		this.workExperience = workExperience;
	}
	public Integer getUserresumState() {
		return userresumState;
	}
	public void setUserresumState(Integer userresumState) {
		this.userresumState = userresumState;
	}
	 
	
	 
}
