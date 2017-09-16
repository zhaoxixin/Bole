package cn.bole.pojo;

public class CompanyInfo {
   private Integer companyInfoId;
   private String companyName;
   private String nature;
   private Integer scale;
   private String industry;
   private String introduction;
   private String address;
   private String location;
   private String telphone;
   private Integer isFamous;
   private Integer resum_num;
   private Job job;
   //private Job job;
   
public Integer getCompanyInfoId() {
	return companyInfoId;
}
public Integer getResum_num() {
	return resum_num;
}
public void setResum_num(Integer resum_num) {
	this.resum_num = resum_num;
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
public String getIndustry() {
	return industry;
}
public void setIndustry(String industry) {
	this.industry = industry;
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
   
}
