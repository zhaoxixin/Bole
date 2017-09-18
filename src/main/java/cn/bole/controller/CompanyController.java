package cn.bole.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.web.ServerProperties.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import cn.bole.pojo.Company;
import cn.bole.pojo.Job;
import cn.bole.pojo.Resum;
import cn.bole.pojo.User;
import cn.bole.service.CompanyService;
import cn.bole.service.JobService;

@Controller
@RequestMapping("/")
public class CompanyController {
     @Autowired
	private CompanyService companyService;
     @Autowired
     private JobService jobService;
     @RequestMapping("/companyhome")
     public  String findCompanyAll(Model model){
    	 List<Company> companyList= companyService.findCompanyAll();
    	 model.addAttribute("companyList", companyList);
    	 return "/company/companylist";
     }
     
     //跳转到公司招聘首页
     
     @RequestMapping("/companyResumes")
     public String reserver(Integer companyId,Model model,HttpSession session){
    	 //return "/company/autoFilterResumes";
    	 Company company = (Company) session.getAttribute("company");
    	 companyId=company.getCompanyId();
    	 List<Resum> companyuserlist = companyService.findUserBycomId(companyId);
//    	 for (Resum resum : companyuserlist) {
//			System.out.println(resum.getResumId());
//			System.out.println(resum.getUserInfo().getRealname());
//			System.out.println(resum.getResumId());
//		}
//    	 System.out.println(companyId);
    	 model.addAttribute("companyuserlist", companyuserlist);
    	 return "/company/companyResumes";
     }
     
     
     //跳转到公司详细页面
     @RequestMapping("/myhome")
     public String findCompanyInfobyId(Integer companyId,Model model,HttpSession session){
    	 Company company = (Company) session.getAttribute("company");
    	 companyId=company.getCompanyId();
         Company companyone = companyService.findCompanyById(companyId);
    	 model.addAttribute("companyone", companyone);	 
    	 return "/company/myhome";
     }
     
     //跳转公司职位管理
     @RequestMapping("/createcom")
     public String reposit(Integer companyId,Model model,HttpSession session){
    	 Company company = (Company) session.getAttribute("company");
    	 companyId=company.getCompanyId();
    	 List<Job> jobcompanyList = jobService.findJobByCompanyId(companyId);
    	 model.addAttribute("jobcompanyList", jobcompanyList);
    	 session.setAttribute("jobcompanyList", jobcompanyList);
    	 return "/company/positions";
     }
     
     //发布新职位
     @RequestMapping("/fbzw")
     public String fbposit(){
    	 
    	 return "/company/create";
     }
     
     //保存新的职位
     @RequestMapping("/savaJob")
     public String saveJob(Job job){
    	 jobService.saveJob(job);
    	 return "redirect:/company/positions";
     }
     
}
