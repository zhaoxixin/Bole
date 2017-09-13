package cn.bole.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.bole.mapper.UserMapper;
import cn.bole.pojo.User;
import cn.bole.service.UserService;
@Service
public class UserServiceImpl implements UserService{

	@Autowired
	UserMapper userMapper;
	public List<User> findAll() {
		return userMapper.findAll();
	}

}
