package cn.bole.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.bole.pojo.User;
import cn.bole.service.UserService;
@Controller
public class LoginController {
	@Autowired
	UserService userService;
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
		        //for test git  zhxn
	 	        return result; 	
	        }
	        //判断是否为一个公司
	        if(Integer.parseInt(type)==1){
	        	//这需要你来写逻辑
	        }
	        return result;   
	}
}
