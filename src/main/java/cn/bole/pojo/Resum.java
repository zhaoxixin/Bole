package cn.bole.pojo;
/**
 * 简历类
 * @author Administrator
 *
 */
public class Resum extends BasicInfo{
	 private String resumId; //简历Id
	 private String userId;//用户Id
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
	public String getResumName() {
		return resumName;
	}
	public void setResumName(String resumName) {
		this.resumName = resumName;
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
