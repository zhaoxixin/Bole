package cn.bole.controller;



import java.util.Date;
import java.util.UUID;

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
		String userId =user.getUserId();
		UserInfo userInfo=resumeService.fingUserinfo(userId);
		if (resumeService.fingResume(userId)==null) {
			
			String resumId=UUID.randomUUID().toString();
			resumeService.createResume(userId,userInfo,resumId);
		}
		Resum resume=resumeService.fingResumeByUserId(user.getUserId());
		if (resume.getResumeName()== null) {
			resume.setResumeName(userInfo.getRealname()+"的简历");
		}
		model.addAttribute("resume", resume);
		model.addAttribute("userInfo", userInfo);
		return "resume/resume";
	}
	@RequestMapping("/resumeNameSave")
	public String resumeNameSave(HttpSession session,String resumeName,UserInfo userInfo){
		User user = (User) session.getAttribute("user1");
		String userId = user.getUserId();
		resumeService.updateResumeName(userId,resumeName);
		return "redirect:/resumeCreate";
	}
	@RequestMapping("/updateResumeUserinfo")
	public String updateResumeUserinfo(HttpSession session,Resum resume){
		User user = (User) session.getAttribute("user1");
		String userId = user.getUserId();
		resume.setUpdateTime(new Date());
		UserInfo userInfo=resume.getUserInfo();
		resumeService.updateResumeCurrentState(userId,resume);
		resumeService.updateResumeUserinfo(userId,userInfo);
		return "redirect:/resumeCreate";
	}
	
	@RequestMapping("/resumeExpectJobSave")
	public String resumeExpectJobSave(HttpSession session,Resum resume){
		User user = (User) session.getAttribute("user1");
		String userId = user.getUserId();
		resumeService.resumeExpectJobSave(userId,resume);
		return "redirect:/resumeCreate";
	}
	 	
    @RequestMapping("/resumeWorkExperience")
	public String resumeWorkExperience(HttpSession session,Resum resume){
		User user = (User) session.getAttribute("user1");
		String userId = user.getUserId();
		resumeService.resumeWorkExperience(userId,resume);
		return "redirect:/resumeCreate";
	}
	 
	/*	@RequestMapping("/resumeSave")
	public String resumeSave(HttpSession session,Resum resume,UserInfo userInfo,String workLink){
		User user = (User) session.getAttribute("user1");
		String userId = user.getUserId();
		resume.setUserId(userId);
		resume.setUserId(workLink);
		System.out.println(resume);
		System.out.println(userInfo);
		return "redirect:/resumeCreate";
	}
	 */	
	/*	@RequestMapping("/resumeSave")
	public String resumeSave(HttpSession session,Resum resume,UserInfo userInfo,String workLink){
		User user = (User) session.getAttribute("user1");
		String userId = user.getUserId();
		resume.setUserId(userId);
		resume.setUserId(workLink);
		System.out.println(resume);
		System.out.println(userInfo);
		return "redirect:/resumeCreate";
	}
	 */	
	/*	@RequestMapping("/resumeSave")
	public String resumeSave(HttpSession session,Resum resume,UserInfo userInfo,String workLink){
		User user = (User) session.getAttribute("user1");
		String userId = user.getUserId();
		resume.setUserId(userId);
		resume.setUserId(workLink);
		System.out.println(resume);
		System.out.println(userInfo);
		return "resume/resume";
	}
	 */	
	/*	@RequestMapping("/resumeSave")
	public String resumeSave(HttpSession session,Resum resume,UserInfo userInfo,String workLink){
		User user = (User) session.getAttribute("user1");
		String userId = user.getUserId();
		resume.setUserId(userId);
		resume.setUserId(workLink);
		System.out.println(resume);
		System.out.println(userInfo);
		return "resume/resume";
	}
	 */	
	/*	@RequestMapping("/resumeSave")
	public String resumeSave(HttpSession session,Resum resume,UserInfo userInfo,String workLink){
		User user = (User) session.getAttribute("user1");
		String userId = user.getUserId();
		resume.setUserId(userId);
		resume.setUserId(workLink);
		System.out.println(resume);
		System.out.println(userInfo);
		return "resume/resume";
	}
	 */	
	/*	@RequestMapping("/resumeSave")
	public String resumeSave(HttpSession session,Resum resume,UserInfo userInfo,String workLink){
		User user = (User) session.getAttribute("user1");
		String userId = user.getUserId();
		resume.setUserId(userId);
		resume.setUserId(workLink);
		System.out.println(resume);
		System.out.println(userInfo);
		return "resume/resume";
	}
	 */	
	/*	@RequestMapping("/resumeSave")
	public String resumeSave(HttpSession session,Resum resume,UserInfo userInfo,String workLink){
		User user = (User) session.getAttribute("user1");
		String userId = user.getUserId();
		resume.setUserId(userId);
		resume.setUserId(workLink);
		System.out.println(resume);
		System.out.println(userInfo);
		return "resume/resume";
	}
	 */	
	/*	@RequestMapping("/resumeSave")
	public String resumeSave(HttpSession session,Resum resume,UserInfo userInfo,String workLink){
		User user = (User) session.getAttribute("user1");
		String userId = user.getUserId();
		resume.setUserId(userId);
		resume.setUserId(workLink);
		System.out.println(resume);
		System.out.println(userInfo);
		return "resume/resume";
	}
	 */	
	/*	@RequestMapping("/resumeSave")
	public String resumeSave(HttpSession session,Resum resume,UserInfo userInfo,String workLink){
		User user = (User) session.getAttribute("user1");
		String userId = user.getUserId();
		resume.setUserId(userId);
		resume.setUserId(workLink);
		System.out.println(resume);
		System.out.println(userInfo);
		return "resume/resume";
	}
	 */	
	/*	@RequestMapping("/resumeSave")
	public String resumeSave(HttpSession session,Resum resume,UserInfo userInfo,String workLink){
		User user = (User) session.getAttribute("user1");
		String userId = user.getUserId();
		resume.setUserId(userId);
		resume.setUserId(workLink);
		System.out.println(resume);
		System.out.println(userInfo);
		return "resume/resume";
	}
	 */	
}
