package cn.bole.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.bole.pojo.Industry;
import cn.bole.pojo.Job;
import cn.bole.service.IndustryService;
import cn.bole.service.JobService;
@Controller
public class SearchController {
	@Autowired
	private IndustryService industryService;
	@Autowired
	private JobService jobService;
	@RequestMapping("/")
	public String home(Model model){
		List<Industry> industryList = industryService.findAllIndustry();
		model.addAttribute("industryList",industryList);
		return "login/index";
	}
	
	@RequestMapping("/findNewJob")
	public String searchNewJob(Model model){
		List<Job> jobList = jobService.findNewJob();
		model.addAttribute("jobList",jobList);
		return "job/list";
	}
	
	@RequestMapping("/findHotJob")
	public String searchHotJob(Model model){
		List<Job> jobList = jobService.findHotJob();
		model.addAttribute("jobList",jobList);
		return "job/list";
	}
	
	@RequestMapping("/findJobByName")
	public String searchJobByName(String jobName,Model model){
		List<Job> jobList = jobService.findJobByName(jobName);
		model.addAttribute("jobList",jobList);
		return "job/list";
	}
	@RequestMapping("/findJob/{city}/{industryId}/{professionId}")
	public String searchJob(Model model,@PathVariable String city,
			@PathVariable String industryId,
			@PathVariable String professionId){
		List<Job> jobList = jobService.findJob(city,industryId,professionId);
		model.addAttribute("jobList",jobList);
		return "job/list";
	}

}
