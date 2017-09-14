package cn.bole.pojo;

import java.util.Date;

public class UserInfo extends BasicInfo{
	   private String userInfoId;//'用户信息id',
	   private String userName; //用户名
	   private String education;//'学历',
	   private String realname;//真实姓名
	   private String sex;//性别
	   private Date birthday;//出生日期
	   private String email; //邮箱
	   private String workPre;//工作经验
	   private String telphone;//手机号
	public String getUserInfoId() {
		return userInfoId;
	}
	public void setUserInfoId(String userInfoId) {
		this.userInfoId = userInfoId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getWorkPre() {
		return workPre;
	}
	public void setWorkPre(String workPre) {
		this.workPre = workPre;
	}
	public String getTelphone() {
		return telphone;
	}
	public void setTelphone(String telphone) {
		this.telphone = telphone;
	}
	   
}
