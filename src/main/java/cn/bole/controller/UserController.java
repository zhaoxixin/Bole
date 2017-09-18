package cn.bole.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.bole.pojo.User;
import cn.bole.pojo.UserInfo;
import cn.bole.service.UserInfoService;

@Controller
public class UserController {
	@Autowired
	UserInfoService userInfoService;
	//到用户个人主页
	@RequestMapping("/userhome.action")
	public String toUserHome(HttpSession session,Model model){
		User user1=(User)session.getAttribute("User1");
		model.addAttribute("user1", user1);
		return "/user/userhome";
	}
	//到userinfo页面查看用户个人信息
	@RequestMapping("/userinfo.action")
	public String toUserInfo(HttpSession session,Model model){
		User user=(User)session.getAttribute("user1");
		UserInfo userInfo=userInfoService.findUserInfoByUserId(user.getUserId());
		model.addAttribute("userInfo",userInfo);
		return "/user/userinfo";		
	}
	//将查询到的个人信息发送到修改页面
	@RequestMapping("/toUpdateUserinfo.action")
	public String toUpdateUserInfo(HttpSession session,Model model){
		User user=(User)session.getAttribute("user1");
		UserInfo userInfo=userInfoService.findUserInfoByUserId(user.getUserId());
		model.addAttribute("userInfo",userInfo);
		return "user/updateUserInfo";		
	}
	//编写详细信息页面
	@RequestMapping("/updateUserInfo.action")
	public String updateUserInfo(UserInfo userInfo){	
		userInfoService.updateUserInfo(userInfo);		
		return "user/userhome";
	}
	@RequestMapping("/toFindJob.action")
	public String toFindJob(){
		return "user/userlookJob";
	}
	//去简历页面
	@RequestMapping("/toJianLi.action")
	public String toJianLi(){
		return "resume/resume";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
