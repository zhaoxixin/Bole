package cn.bole.service;

import cn.bole.pojo.UserInfo;

public interface UserInfoService {
	//根据用户id查询userInfo
 	public UserInfo findUserInfoByUserId(String userId);

}
