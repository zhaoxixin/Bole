package cn.bole.serviceImpl;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.bole.mapper.UserInfoMapper;
import cn.bole.mapper.UserMapper;
import cn.bole.pojo.User;
import cn.bole.pojo.UserInfo;
import cn.bole.service.UserService;
@Service
public class UserServiceImpl implements UserService{

	@Autowired
	UserMapper userMapper;
	@Autowired
	UserInfoMapper userInfoMapper;
	@Override
	public void save(User user) {
		user.setUserId(UUID.randomUUID().toString());
		UserInfo userInfo =new UserInfo();
		user.setUserInfo(userInfo);
		user.getUserInfo().setUserInfoId(user.getUserId());
		userMapper.save(user);
		userInfoMapper.save(user.getUserInfo());
	}
	@Override
	public User findUser(String email, String password) {
		return userMapper.findUser(email,password);
		
	}

}
