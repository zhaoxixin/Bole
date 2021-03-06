package cn.bole.pojo;

import java.util.Date;

public class Job {
	private String jobId;
	private String industryId;
	private String professionId;
	private String companyId;
	private String jobName;
	private String highistEducation;
	private String jobNature; 
	private Date announceTime;
	private Date updateTime;
	private Integer state;
	private JobInfo jobInfo;
	private Company company;
	
	public String getHighistEducation() {
		return highistEducation;
	}
	public void setHighistEducation(String highistEducation) {
		this.highistEducation = highistEducation;
	}
	public String getJobNature() {
		return jobNature;
	}
	public void setJobNature(String jobNature) {
		this.jobNature = jobNature;
	}
	public Company getCompany() {
		return company;
	}
	public void setCompany(Company company) {
		this.company = company;
	}
	public String getJobId() {
		return jobId;
	}
	public void setJobId(String jobId) {
		this.jobId = jobId;
	}
	public String getIndustryId() {
		return industryId;
	}
	public void setIndustryId(String industryId) {
		this.industryId = industryId;
	}
	public String getProfessionId() {
		return professionId;
	}
	public void setProfessionId(String professionId) {
		this.professionId = professionId;
	}
	public String getCompanyId() {
		return companyId;
	}
	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}
	public String getJobName() {
		return jobName;
	}
	public void setJobName(String jobName) {
		this.jobName = jobName;
	}
	public Date getAnnounceTime() {
		return announceTime;
	}
	public void setAnnounceTime(Date announceTime) {
		this.announceTime = announceTime;
	}
	public Date getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	public JobInfo getJobInfo() {
		return jobInfo;
	}
	public void setJobInfo(JobInfo jobInfo) {
		this.jobInfo = jobInfo;
	}
	
	
	
	
	
	
	   
	   
}
