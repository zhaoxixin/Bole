package cn.bole.mapper;

import cn.bole.pojo.Resum;
import cn.bole.pojo.UserInfo;

public interface UserInfoMapper {
	//根据id查询userinfo
	public UserInfo findUserInfoByUserId(String userId);
	//保存user对应的userinfo
	public void save(UserInfo userInfo);
	//保存自己的修改
	public void updateUserInfo(UserInfo userInfo);
	//查询简历
	public Resum findResumeByUserId(String userId);

}
