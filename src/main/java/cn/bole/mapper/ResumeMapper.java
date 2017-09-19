package cn.bole.mapper;

import java.util.Date;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import cn.bole.pojo.Resum;
import cn.bole.pojo.UserInfo;

public interface ResumeMapper {
	
	public Resum fingResumeByUserId(String userId);

	public void createResume(@Param("userId")String userId, @Param("resumId")String resumId);

	public void updateResumeName(@Param("userId")String userId, @Param("resumeName")String resumeName,@Param("updateTime")Date updateTime);
	@Select("select resum_id from resume where user_id=#{userid} ")
	public String getResumeId(String userId);

	public String fingResume(String userId);

	public void resumeExpectJobSave(@Param("userId")String userId, @Param("resume")Resum resume);

	public void resumeWorkExperience(@Param("userId")String userId,@Param("resume") Resum resume);

	public void updateResumeCurrentState(@Param("userId")String userId,@Param("resume") Resum resume);

	public void projectExperienceSave(@Param("userId")String userId,@Param("resume") Resum resume);

	public void educationalBackgroundSave(@Param("userId")String userId,@Param("resume") Resum resume);

	public void resumeDescriptionSave(@Param("userId")String userId,@Param("resume") Resum resume);

	public void worksShowSave(@Param("userId")String userId,@Param("resume") Resum resume);

	

	
}
