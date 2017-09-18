package cn.bole.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;

import cn.bole.mapper.UserInfoMapper;
import cn.bole.pojo.UserInfo;
import cn.bole.service.UserInfoService;

public class UserInfoServiceImpl implements UserInfoService {
	@Autowired
	UserInfoMapper userInfoMapper;
	@Override
	public UserInfo findUserInfoByUserId(String userId) {
		
		return userInfoMapper.findUserInfoByUserId(userId);
	}

}
