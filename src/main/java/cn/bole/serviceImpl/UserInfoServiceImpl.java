package cn.bole.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.bole.mapper.UserInfoMapper;
import cn.bole.pojo.Resum;
import cn.bole.pojo.UserInfo;
import cn.bole.service.UserInfoService;
@Service
public class UserInfoServiceImpl implements UserInfoService{
	@Autowired
	UserInfoMapper userInfoMapper;
	
	@Override
	public UserInfo findUserInfoByUserId(String userId) {
		
		return  userInfoMapper.findUserInfoByUserId(userId);
	}
	@Override
	public void updateUserInfo(UserInfo userInfo) {
		userInfoMapper.updateUserInfo(userInfo);		
	}
	@Override
	public Resum findResumeByUserId(String userId) {
		return userInfoMapper.findResumeByUserId(userId);
	}
	@Override
	public List<Resum> findAllResum(String userId) {
		return userInfoMapper.findfindAllResum(userId);
	}

}
