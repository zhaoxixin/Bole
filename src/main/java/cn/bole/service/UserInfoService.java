package cn.bole.service;

import cn.bole.pojo.UserInfo;

public interface UserInfoService {
	//根据userid查询出自己的详细信息
	public UserInfo findUserInfoByUserId(String userId);
}
