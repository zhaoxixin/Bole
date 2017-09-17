package cn.bole.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.JSONException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.bole.pojo.Job;
import cn.bole.service.SysService;

@Controller
public class SysController {
	@Autowired SysService sysService;
	
	
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
	
	
	@RequestMapping("/sysadmin/job/list")
	public String jobList(Model model){
		List<Job> jobList=sysService.findAllJob();
		model.addAttribute("jobList",jobList);
		return "sysadmin/job/jobList";
	}
	
	@RequestMapping("/sysadmin/job/pass")
	public String pass(@RequestParam(value="jobId",required=true)String[] ids){
		Integer state = 1;
		sysService.setState(ids,state);
		
		return "redirect:/sysadmin/job/list";
	}
	@RequestMapping("/sysadmin/job/stop")
	public String stop(@RequestParam(value="jobId",required=true)String[] ids){
		Integer state = 0;
		sysService.setState(ids,state);
		
		return "redirect:/sysadmin/job/list";
	}
	
	@RequestMapping("/sysadmin/job/area")
	public String area(){
		return "sysadmin/job/echart";
	}
	
	//返回给ajax一个jason字符串用户画图
	@RequestMapping("/sysadmin/job/show")
	@ResponseBody
	public Map<String, Object>  show(String params) throws JSONException{
		Map<String, Object> result = new HashMap<String, Object>();
		int[] msg = new int[]{36, 36, 36, 25, 20,15};
		result.put("a", "hello json and ajax");
		result.put("a", msg);
		//JSONArray data = JSONArray.fromObject(msg);
		
		return result;
	}
	
	
	
	
	
/*	@RequestMapping("/sysadmin/job/t")
	@ResponseBody
	public JSONObject area(JSONObject params) throws JSONException{
		String msg = "{'rs':0,'fs':'登录成功!'}";

		JSONObject result = new JSONObject(msg);

		return result;
	}
	*/
/*	@Test
	public void test() throws JSONException{
		String msg = "{'rs':0,'fs':'登录成功!'}";

		JSONObject jsonObject = new JSONObject(msg);

		System.out.println(jsonObject.getString("fs"));
		System.out.println(jsonObject.getString("rs"));
	}*/
	
	
	
}
