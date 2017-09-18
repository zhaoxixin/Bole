package cn.bole.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.bole.pojo.Resum;
import cn.bole.pojo.User;
import cn.bole.pojo.UserInfo;
import cn.bole.service.UserInfoService;

@Controller
public class ToPreview {
	@Autowired
	UserInfoService userInfoService;
	@RequestMapping("/preview.action")
	public String toPreview(Model model,HttpSession session){
		User user = (User)session.getAttribute("user1");
		String userId= user.getUserId();
		UserInfo userInfo = userInfoService.findUserInfoByUserId(userId);
		
		//根据userId查询出简历信息
		Resum resum = userInfoService.findResumeByUserId(userId);
		model.addAttribute("resum", resum);
		
		model.addAttribute("userInfo", userInfo);
		return "resume/perview";	
	}	
}
