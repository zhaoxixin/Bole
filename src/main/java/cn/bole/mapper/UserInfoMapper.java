package cn.bole.mapper;

import cn.bole.pojo.UserInfo;

public interface UserInfoMapper {
	//根据自己的id查询出自己的详细信息
	public UserInfo findUserInfoByUserId(String userId);
	
}
