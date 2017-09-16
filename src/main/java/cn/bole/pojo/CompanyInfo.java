package cn.bole.pojo;

public class CompanyInfo {
   private Integer companyInfoId;
   private String companyName;
   private String nature;
   private Integer scale;
   private Integer industryId;
   private String introduction;
   private String address;
   private String location;
   private String telphone;
   private Integer isFamous;
   private Integer resumNum;
   private Job job;
   private Integer userresumState;
   private String chargePerson;
   //private Job job;
   
public Integer getCompanyInfoId() {
	return companyInfoId;
}



public Integer getResumNum() {
	return resumNum;
}



public void setResumNum(Integer resumNum) {
	this.resumNum = resumNum;
}



public Integer getUserresumState() {
	return userresumState;
}



public void setUserresumState(Integer userresumState) {
	this.userresumState = userresumState;
}



public String getChargePerson() {
	return chargePerson;
}



public void setChargePerson(String chargePerson) {
	this.chargePerson = chargePerson;
}



public Job getJob() {
	return job;
}
public void setJob(Job job) {
	this.job = job;
}
public void setCompanyInfoId(Integer companyInfoId) {
	this.companyInfoId = companyInfoId;
}
public String getCompanyName() {
	return companyName;
}
public void setCompanyName(String companyName) {
	this.companyName = companyName;
}
public String getNature() {
	return nature;
}
public void setNature(String nature) {
	this.nature = nature;
}
public Integer getScale() {
	return scale;
}
public void setScale(Integer scale) {
	this.scale = scale;
}

public String getIntroduction() {
	return introduction;
}
public void setIntroduction(String introduction) {
	this.introduction = introduction;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getLocation() {
	return location;
}
public void setLocation(String location) {
	this.location = location;
}
public String getTelphone() {
	return telphone;
}
public void setTelphone(String telphone) {
	this.telphone = telphone;
}
public Integer getIsFamous() {
	return isFamous;
}
public void setIsFamous(Integer isFamous) {
	this.isFamous = isFamous;
}
public Integer getIndustryId() {
	return industryId;
}
public void setIndustryId(Integer industryId) {
	this.industryId = industryId;
}
   
}
