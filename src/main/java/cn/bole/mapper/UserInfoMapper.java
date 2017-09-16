package cn.bole.mapper;

import cn.bole.pojo.UserInfo;

public interface UserInfoMapper {
	//根据id查询userinfo
	public UserInfo findUserInfoByUserId(String userId);
	//保存user对应的userinfo
	public void save(UserInfo userInfo);

}
