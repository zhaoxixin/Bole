package cn.bole.service;

import cn.bole.pojo.Resum;
import cn.bole.pojo.UserInfo;

public interface ResumeService {
	
	public Resum fingResumeByUserId(String userId);

	public UserInfo fingUserinfo(String userId);

	public void updateResumeName(String userId, String resumeName);

	public void updateResumeUserinfo(String userId, UserInfo userInfo);

	public void createResume(String userId, UserInfo userInfo, String resumeId);

	public void resumeExpectJobSave(String userId, Resum resume);
}
