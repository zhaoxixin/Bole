package cn.bole.controller;

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
	@RequestMapping("/userhome.action")
	public String toUserHome(HttpSession session,Model model){
		User user1=(User)session.getAttribute("User1");
		model.addAttribute("user1", user1);
		return "/user/userhome";
	}
	@RequestMapping("/userinfo.action")
	public String toUserInfo(HttpSession session,Model model){
		User user=(User)session.getAttribute("user1");
		UserInfo userInfo=userInfoService.findUserInfoByUserId(user.getUserId());
		model.addAttribute("userInfo",userInfo);
		return "/user/userinfo";		
	}
	
}
