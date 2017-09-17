package cn.bole.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.web.ServerProperties.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import cn.bole.pojo.Company;
import cn.bole.pojo.Resum;
import cn.bole.pojo.User;
import cn.bole.service.CompanyService;

@Controller
@RequestMapping("/")
public class CompanyController {
     @Autowired
	private CompanyService companyService;
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
    	 for (Resum resum : companyuserlist) {
			System.out.println(resum.getResumId());
			System.out.println(resum.getUserInfo().getRealname());
			System.out.println(resum.getResumId());
		}
    	 System.out.println(companyId);
    	 model.addAttribute("companyuserlist", companyuserlist);
    	 return "/company/companyResumes";
     }
     
     
     //跳转到公司详细页面
     @RequestMapping("/myhome")
     public String findCompanyInfobyId(String companyInfoId,Model model,HttpSession session){
    	 Company company = companyService.findCompanyById(companyInfoId);
    	 model.addAttribute("company", company);
    	 session.setAttribute("company", company);
    	 return "/company/myhome";
     }
     
     
}
