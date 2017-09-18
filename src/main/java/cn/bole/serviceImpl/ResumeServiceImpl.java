package cn.bole.serviceImpl;

import java.util.Date;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.bole.mapper.ResumeMapper;
import cn.bole.mapper.UserInfoMapper;
import cn.bole.pojo.Resum;
import cn.bole.pojo.UserInfo;
import cn.bole.service.ResumeService;
@Service
public class ResumeServiceImpl implements ResumeService {

	@Autowired
	private ResumeMapper resumeMapper;
	@Autowired
	private UserInfoMapper userInfoMapper;
	public Resum fingResumeByUserId(String userId) {
		return resumeMapper.fingResumeByUserId(userId);
	}
	public UserInfo fingUserinfo(String userId) {
		return userInfoMapper.findUserInfoByUserId(userId);
	}
	

	public void createResume(String userId, UserInfo userInfo, String resumId) {
		resumeMapper.createResume(userId,resumId);
		userInfoMapper.updateUserInfo(userInfo);
	}
	public void updateResumeName(String userId, String resumeName) {
		Date updateTime=new Date();
		resumeMapper.updateResumeName(userId,resumeName,updateTime);
		
	}
	@Override
	public void updateResumeUserinfo(String userId, UserInfo userInfo) {
		userInfoMapper.updateUserInfo(userInfo);
	}
	public void resumeExpectJobSave(String userId, Resum resume) {
		resume.setUpdateTime(new Date());
		resumeMapper.resumeExpectJobSave(userId,resume);
	}
	@Override
	public String fingResume(String userId) {
		
		return resumeMapper.fingResume(userId);
	}
	
	public void resumeWorkExperience(String userId, Resum resume) {
		resume.setUpdateTime(new Date());
		resumeMapper.resumeWorkExperience(userId,resume);
	}
	@Override
	public void updateResumeCurrentState(String userId, Resum resume) {
		resumeMapper.updateResumeCurrentState(userId,resume);
	}
	@Override
	public String getResumeId(String userId) {	
		String resumId = resumeMapper.getResumeId(userId);
		System.out.println(resumId);
		return resumId;
	}
	
	
}
