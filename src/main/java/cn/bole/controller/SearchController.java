 package cn.bole.controller;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mysql.fabric.Response;

import cn.bole.pojo.Industry;
import cn.bole.pojo.Job;
import cn.bole.pojo.User;
import cn.bole.service.IndustryService;
import cn.bole.service.JobService;
@Controller
public class SearchController extends BaseController {
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
	@RequestMapping("/{city}/{industryId}/{professionId}/findJob")
	public String searchJob(Model model,@PathVariable String city,
			@PathVariable String industryId,
			@PathVariable String professionId){
		List<Job> jobList = jobService.findJob(city,industryId,professionId);
		model.addAttribute("jobList",jobList);
		return "job/list";
	}
	
	@RequestMapping("/jobDetails")
	public String searchJobDetails(Model model,String jobId){
		
		Job job = jobService.findJobByJobId(jobId);
		model.addAttribute("job",job);
		return "job/jobDetails";
	}
	/**
	 * list.jsp中根据输入的条件在之前查询的基础上进行查询
	 * @param model
	 * @param job
	 * @param jobListPre
	 * @param announceTimePre
	 * @param announceTimeAft
	 * @return
	 */
	@RequestMapping("/additionSearch")
	public String additionSearch(Model model,Job job,
			@RequestParam(value="jobList")List<Job> jobListPre,
			Date announceTimePre,Date announceTimeAft){
		List<Job> jobList = jobService.additionSearch(job,jobListPre,announceTimePre,announceTimeAft);
		model.addAttribute("jobList",jobList);
		return "job/list";
		    
	}
	//企业反馈信息0：拒绝，1：通知面试，2：通知入职
	@RequestMapping("/sendResume")
	public String sendResume(String jobId,String companyId,HttpSession session,
			HttpServletRequest request,HttpServletResponse response,Model model) throws IOException{
		if(session.getAttribute("user1")==null){
			return "login/login";
			/*response.getWriter().write("您还未登录");
			response.sendRedirect(request.getContextPath()+"/toLogin");*/
		}else{
			User user = (User) session.getAttribute("user1");
			String userId = user.getUserId();
			try {
				jobService.sendResume(userId,jobId,companyId);
				model.addAttribute("msg","1");
				/////////////
				JOptionPane.showMessageDialog(null, "投递成功");
				return "redirect:/jobDetails?jobId="+jobId;
				/*response.getWriter().write("投递成功，2秒钟之后会跳转到职位详情页面");
				response.setHeader("refresh", "2;url="+request.getContextPath()+"/jobDetails?jobId="+jobId);*/
			} catch (Exception e) {
				e.printStackTrace();
				model.addAttribute("msg","0");
				JOptionPane.showMessageDialog(null, "提交失败，请重新提交 ", "错误信息 ", JOptionPane.ERROR_MESSAGE);
				return "redirect:/jobDetails?jobId="+jobId;
				/*response.sendRedirect(request.getContextPath()+"/jobDetails?jobId="+jobId);*/
				
			}
			
		}
		
	}

}
