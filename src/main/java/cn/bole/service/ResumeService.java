package cn.bole.service;

import cn.bole.pojo.Resum;
import cn.bole.pojo.UserInfo;

public interface ResumeService {
	
	public Resum fingResumeByUserId(String userId);

	public UserInfo fingUserinfo(String userId);

	public void updateResumeName(String userId, String resumeName);

	public void updateResumeUserinfo(String userId, UserInfo userInfo);

	public void createResume(String userId, UserInfo userInfo, String resumId);

	public void resumeExpectJobSave(String userId, Resum resume);


	public String fingResume(String userId);

	public void resumeWorkExperience(String userId, Resum resume);

	public void updateResumeCurrentState(String userId, Resum resume);


	public String getResumeId(String userId);

	public void projectExperienceSave(String userId, Resum resume);

	public void educationalBackgroundSave(String userId, Resum resume);

	public void resumeDescriptionSave(String userId, Resum resume);

	public void worksShowSave(String userId, Resum resume);

}
