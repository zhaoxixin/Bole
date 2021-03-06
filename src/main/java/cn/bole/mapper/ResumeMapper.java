package cn.bole.mapper;

import java.util.Date;

import org.apache.ibatis.annotations.Param;

import cn.bole.pojo.Resum;
import cn.bole.pojo.UserInfo;

public interface ResumeMapper {
	
	public Resum fingResumeByUserId(String userId);

	public void createResume(@Param("userId")String userId, @Param("resumId")String resumId);

	public void updateResumeName(@Param("userId")String userId, @Param("resumeName")String resumeName,@Param("updateTime")Date updateTime);

	public String fingResume(String userId);

	public void resumeExpectJobSave(@Param("userId")String userId, @Param("resume")Resum resume);

	public void resumeWorkExperience(@Param("userId")String userId,@Param("resume") Resum resume);

	public void updateResumeCurrentState(@Param("userId")String userId,@Param("resume") Resum resum);

	

	
}
