package cn.bole.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.bole.pojo.Resum;
import cn.bole.pojo.User;
import cn.bole.pojo.UserInfo;
import cn.bole.service.ResumeService;

@Controller
public class ResumeController {
	@Autowired
	private ResumeService resumeService;
	@RequestMapping("/resumeCreate")
	public String resumeCreate(HttpSession session,Model model){
		User user = (User) session.getAttribute("user1");
		Resum resume=resumeService.fingResumeByUserId(user.getUserId());
		if (resume.getResumeName().isEmpty()) {
			resume.setResumeName(resume.getUserInfo().getRealname()+"的简历");
		}
		
		model.addAttribute("resume", resume);
		return "resume/resume";
	}
	/*@RequestMapping("/resumeSave")
	public String resumeSave(HttpSession session,Model model){
		User user = (User) session.getAttribute("user1");
		String userId=user.getUserId();
		if (resumeService.fingResumeNameByUserId() == null) {
			
		}
//		model.addAttribute("resumeName", resumeName);
		System.out.println(userId);
		model.addAttribute("user", user);
		return "resume/resume";
	}*/
	
}
