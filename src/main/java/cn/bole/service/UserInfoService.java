package cn.bole.service;

import cn.bole.pojo.UserInfo;

public interface UserInfoService {
	//根据用户id查询userInfo
 	public UserInfo findUserInfoByUserId(String userId);
 	//保存自己的修改
	public void updateUserInfo(UserInfo userInfo);

}
