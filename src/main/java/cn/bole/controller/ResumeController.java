package cn.bole.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.bole.pojo.Job;
import cn.bole.pojo.User;

@Controller
public class ResumeController {
	@RequestMapping("/resumeCreate")
	public String resumeCreate(HttpSession session,Model model){
		String resumeName="wangyuf";
		model.addAttribute("resumeName", resumeName);
		User user = (User) session.getAttribute("user1");
		model.addAttribute("user", user);
		return "resume/resume";
	}
	@RequestMapping("/renameResumeName")
	public String renameResumeName(String userId,Model model){
		System.out.println(userId);
		
		return "resume/resume";
	}
	
}
