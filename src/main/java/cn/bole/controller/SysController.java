package cn.bole.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SysController {
	
	@RequestMapping("/title")
	public String title(){
		return "/home/title";
	}
	//转向欢迎页面
	@RequestMapping("/home")
	public String home(){
		return "/home/fmain";
	}
	
	@RequestMapping("/{moduleName}/Left")
	public String sysadminLeft(@PathVariable String moduleName){
		return "/"+moduleName+"/left";
	}
	
	@RequestMapping("/{moduleName}/Main")
	public String sysadminMain(@PathVariable String moduleName){
		return "/"+moduleName+"/main";
	}
	
	
	@RequestMapping("sysadmin/role/list")
	public String jobList(){
		return "sysadmin/job/jobList";
	}
}
