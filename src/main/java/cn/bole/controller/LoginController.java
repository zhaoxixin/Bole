package cn.bole.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.bole.pojo.Company;
import cn.bole.pojo.User;
import cn.bole.service.CompanyService;
import cn.bole.service.UserService;
@Controller
public class LoginController {
	@Autowired
	UserService userService;
	@Autowired
	CompanyService companyService;
	//去登陆
	@RequestMapping("/toLogin")
	public String toLogin(){
		return "login/login";
	}
	@RequestMapping("/logout")
	public String toLoout(HttpServletRequest s){
		if(s.getSession(false) != null){
			s.getSession().invalidate();
		}
		return "/login/index";
	}
	//登录
	@RequestMapping("/login")
	@ResponseBody
	public Map<String, Object> login(String type, String email,String password,HttpSession session){
	     Map<String, Object> result = new HashMap<String, Object>();  
	        if(StringUtils.isEmpty(email) || StringUtils.isEmpty(password)){  
		 	       result.put("msg", "failed");  
		            return result;          
	        }        
	        //是否为普通用户
	        if(Integer.parseInt(type)==0){
	        	User user1 =userService.findUser(email,password);
		        if(user1==null){        	
		 	       result.put("msg", "failed");  
		            return result;  
		        }
		        //将用户加入到session中
		        session.setAttribute("user1",user1);
		        result.put("msg", "success"); 
		        result.put("type", type);
	 	        return result; 	
	        }
	        //判断是否为一个公司
	        if(Integer.parseInt(type)==1){
	        Company company = companyService.findCompanyEmailAndPassword(email,password);
	        if(company==null){
	        	result.put("msg", "用户名或者密码错误!");  
	            return result;  
	        }
	        session.setAttribute("company",company);
	        result.put("msg", "success"); 
	        result.put("type", type);
	        return result; 	
	        }
	        return result;
}
}