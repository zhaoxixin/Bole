package cn.bole.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.bole.pojo.User;

@Controller
public class ResumeController {
	
	@RequestMapping("/resumeCreate")
	public String resumeCreate(HttpSession session,String userId,Model model){
		String resumeName="wangyuf";
		model.addAttribute("resumeName", resumeName);
		User user = (User) session.getAttribute("user1");
		System.out.println(userId);
		model.addAttribute("user", user);
		return "resume/resume";
	}
	@RequestMapping("/renameResumeName")
	public String renameResumeName(String userId,String resumeName,Model model){
		System.out.println(userId);
		System.out.println(resumeName);
		
		return "resume/resume";
	}
	//resume页面更新用户信息
	@RequestMapping("/saveUserinfo")
	public String saveUserinfo(String userId,String resumeName,Model model){
		System.out.println(userId);
		System.out.println(resumeName);
		
		return "resume/resume";
	}
	//resume页面更新用户信息
	@RequestMapping("/saveExpectJob")
	public String saveExpectJob(String userId,String resumeName,Model model){
		System.out.println(userId);
		System.out.println(resumeName);
		
		return "resume/resume";
	}
}
