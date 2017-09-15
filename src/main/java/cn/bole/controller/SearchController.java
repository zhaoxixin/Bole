package cn.bole.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.bole.pojo.Industry;
import cn.bole.service.IndustryService;
@Controller
public class SearchController {
	@Autowired
	private IndustryService industryService;
	@RequestMapping("/")
	public String home(Model model){
		List<Industry> industryList = industryService.findAllIndustry();
		model.addAttribute("industryList",industryList);
		return "login/index";
	}
	
	@RequestMapping("/findNewJob")
	public String searchNewJob(Model model){
		List<Industry> industryList = industryService.findAllIndustry();
		model.addAttribute("industryList",industryList);
		return "login/index";
	}
	
	@RequestMapping("/findHotJob")
	public String searchHotJob(Model model){
		List<Industry> industryList = industryService.findAllIndustry();
		model.addAttribute("industryList",industryList);
		return "login/index";
	}
	
	@RequestMapping("/findJobByName")
	public String searchJobByName(Model model){
		List<Industry> industryList = industryService.findAllIndustry();
		model.addAttribute("industryList",industryList);
		return "login/index";
	}
	@RequestMapping("/findJob")
	public String searchJob(Model model){
		List<Industry> industryList = industryService.findAllIndustry();
		model.addAttribute("industryList",industryList);
		return "login/index";
	}

}
