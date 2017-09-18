package cn.bole.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.bole.mapper.UserInfoMapper;
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

}
