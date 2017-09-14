package cn.bole.serviceImpl;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.bole.mapper.UserMapper;
import cn.bole.pojo.User;
import cn.bole.service.UserService;
@Service
public class UserServiceImpl implements UserService{

	@Autowired
	UserMapper userMapper;
	@Override
	public void save(User user) {
		user.setId(UUID.randomUUID().toString());
		
		userMapper.save(user);
	}
	@Override
	public User findUser(String email, String password) {
		return userMapper.findUser(email,password);
		
	}

}
