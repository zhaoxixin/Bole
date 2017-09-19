package cn.bole.pojo;
/**
 * 简历类
 * @author Administrator
 *
 */
public class Resum extends BasicInfo{
	 private String resumId; //简历Id
	 private String userId;//用户Id
	 private String resumeName;//简历名称
	 private String workExp; //工作履历
	 private String workAddr;//工作地址
	 private String eduExp;//教育经验
	 private UserInfo userInfo;
	 private Integer feedback;
	

	public Integer getFeedback() {
		return feedback;
	}
	public void setFeedback(Integer feedback) {
		this.feedback = feedback;
	}
	public UserInfo getUserInfo() {
		return userInfo;
	}
	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}
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
	
	public String getResumeName() {
		return resumeName;
	}
	public void setResumeName(String resumeName) {
		this.resumeName = resumeName;
	}
	public String getWorkExp() {
		return workExp;
	}
	public void setWorkExp(String workExp) {
		this.workExp = workExp;
	}
	public String getWorkAddr() {
		return workAddr;
	}
	public void setWorkAddr(String workAddr) {
		this.workAddr = workAddr;
	}
	public String getEduExp() {
		return eduExp;
	}
	public void setEduExp(String eduExp) {
		this.eduExp = eduExp;
	}
	 
}
