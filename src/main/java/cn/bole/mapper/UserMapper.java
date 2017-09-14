package cn.bole.mapper;



import org.apache.ibatis.annotations.Param;

import cn.bole.pojo.User;

public interface UserMapper {
	

	public void save(User user);

	public User findUser(@Param("email")String email, @Param("password")String password);

}
