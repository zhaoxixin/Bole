package cn.bole.pojo;

public class Industry {
	private String industry_id;
	private String industry_name;
	private Integer isHot;
	private Profession profession;
	public String getIndustry_id() {
		return industry_id;
	}
	public void setIndustry_id(String industry_id) {
		this.industry_id = industry_id;
	}
	public String getIndustry_name() {
		return industry_name;
	}
	public void setIndustry_name(String industry_name) {
		this.industry_name = industry_name;
	}
	public Integer getIsHot() {
		return isHot;
	}
	public void setIsHot(Integer isHot) {
		this.isHot = isHot;
	}
	public Profession getProfession() {
		return profession;
	}
	public void setProfession(Profession profession) {
		this.profession = profession;
	}
	
	

}
