package cn.bole.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.bole.pojo.Company;
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
}
