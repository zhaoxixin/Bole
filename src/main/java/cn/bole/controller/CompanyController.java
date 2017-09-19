package cn.bole.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.web.ServerProperties.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
     public String saveJob(Job job,HttpSession session,Model model){
    	 /*Company company = (Company) session.getAttribute("company");
    	 Integer companyId=company.getCompanyId();*/
    	 jobService.saveJob(job);
    	 //model.addAttribute("companyId", companyId);
    	 return "redirect:/createcom.action";
    	 
     }
      //企业反馈信息:0未反馈：1：通知面试，2：待定 3.拒绝
     //修改feedback待定状态
     @RequestMapping("/dd")
     public String ddrusum(String resumId,Integer feedback,Model model,HttpSession session){  
    	 Company company = (Company) session.getAttribute("company");
    	 Integer companyId=company.getCompanyId();
         feedback =2;
    	 companyService.updateResumByFeedback(resumId,feedback);
    	session.setAttribute("ddfeedback", feedback);
    	 return "redirect:/companyResumes.action";
     }
     
     
     //跳转待定的简历页面
     @RequestMapping("/czresum")
     public String ddrusum(Model model,HttpSession session){
    	 Company company = (Company) session.getAttribute("company");
    	 Integer companyId=company.getCompanyId();
    	 List<Resum> resumList = companyService.findResumByFeedback(companyId);
    	 model.addAttribute("resumList", resumList);
    	 return "/company/ddResume";
     }
     
     
     //修改通知面试的feedback
     @RequestMapping("/ms")
     public String msdrusum(String resumId,Integer feedback,HttpSession session){  
         feedback =1;
    	 companyService.updateResumByFeedback(resumId,feedback); 
    	 return "redirect:/companyResumes.action";
     }
     
     
     //跳转面试的简历页面
     @RequestMapping("/msresum")
     public String msrusum(Integer feedback,Model model,HttpSession session){
    	 Company company = (Company) session.getAttribute("company");
    	 Integer companyId=company.getCompanyId();
    	 feedback=(Integer) session.getAttribute("ddfeedback");
    	 List<Resum> msresumList = companyService.findResumByFeedback2(companyId);
    	 model.addAttribute("msresumList", msresumList);
    	 return "/company/msResume";
     }
     
     //修改通知面试的feedback
     @RequestMapping("/bhs")
     @ResponseBody
     public String bhsrusum(String resumId,Integer feedback,HttpSession session){  
         feedback =3;
    	 companyService.updateResumByFeedback(resumId,feedback); 
    	 return "通知面试!";
    	 //return "redirect:/companyResumes.action";
     }
     
     
     //跳转不合适的简历页面
     @RequestMapping("/bhsresum")
     public String bhsdrusum(Integer feedback,Model model,HttpSession session){
    	 Company company = (Company) session.getAttribute("company");
    	 Integer companyId=company.getCompanyId();
    	 List<Resum> bhsresumList = companyService.findResumByFeedback3(companyId);
    	 model.addAttribute("bhsresumList", bhsresumList);
    	 return "/company/bhsResume";
     }
     //哈哈哈哈哈哈哈哈哈哈哈哈哈
     
}
