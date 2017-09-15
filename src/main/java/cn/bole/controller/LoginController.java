package cn.bole.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

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
	public Map<String, Object> login(User user,HttpServletRequest s,String type){
	     Map<String, Object> result = new HashMap<String, Object>();  
	        if(StringUtils.isEmpty(user.getEmail()) || StringUtils.isEmpty(user.getPassword())){  
		 	       result.put("msg", "failed");  
		            return result;          
	        }        
	        //业务逻辑
	        User user1 =userService.findUser(user.getEmail(),user.getPassword());
	        if(user1==null){        	
	 	       result.put("msg", "failed");  
	            return result;  
	        }
	        //将用户加入到session中
	        s.getSession().setAttribute("user1",user1);
	        result.put("msg", "success"); 
	        //for test git  zhxn
	        System.out.println(type);
 	        return result; 	
	}
}
