package cn.bole.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import cn.bole.pojo.Company;
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
     public String reserver(String companyInfoId,Model model){
    	 //return "/company/autoFilterResumes";
    	 User companyuser = companyService.findUserBycomId(companyInfoId);
    	 model.addAttribute("companyuser", companyuser);
    	 return "/company/companyResumes";
     }
     
     
     //跳转到公司详细页面
     @RequestMapping("/myhome")
     public String findCompanyInfobyId(String companyInfoId,Model model,HttpSession session){
    	 Company company = companyService.findCompanyById(companyInfoId);
    	 model.addAttribute("company", company);
    	 session.setAttribute("company", company);
    	 return "myhome";
     }
     
     
}
