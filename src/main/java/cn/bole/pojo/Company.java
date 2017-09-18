package cn.bole.pojo;

import java.util.List;

public class Company {
	 private CompanyInfo companyInfo;
     private Integer companyId;
     private String companyName;
     private String email;
     private String password;
     private String logo;
     private Resum resum;
      
	public Resum getResum() {
		return resum;
	}
	public void setResum(Resum resum) {
		this.resum = resum;
	}
	public String getLogo() {
		return logo;
	}
	public void setLogo(String logo) {
		this.logo = logo;
	}
	public CompanyInfo getCompanyInfo() {
		return companyInfo;
	}
	public void setCompanyInfo(CompanyInfo companyInfo) {
		this.companyInfo = companyInfo;
	}
	public Integer getCompanyId() {
		return companyId;
	}
	public void setCompanyId(Integer companyId) {
		this.companyId = companyId;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
     
}
