package cn.bole.service;

import java.util.List;

import cn.bole.pojo.Resum;
import cn.bole.pojo.UserInfo;

public interface UserInfoService {

	public void updateUserInfo(UserInfo userInfo) ;

	//根据userid查询出自己的详细信息
	public UserInfo findUserInfoByUserId(String userId);
	//根据userid查询出自己的简历
	public Resum findResumeByUserId(String userId);
	////根据userid查询出自己的简历
	public List<Resum> findAllResum(String userId);
}
