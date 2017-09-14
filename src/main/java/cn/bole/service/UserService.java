package cn.bole.service;


import cn.bole.pojo.User;

public interface UserService {

	public void save(User user);
	//根据邮箱和密码查询用户
	public User findUser(String email, String password);
}
