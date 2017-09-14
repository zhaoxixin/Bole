package cn.bole.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.bole.pojo.User;
import cn.bole.service.UserService;
@Controller
public class RegistController {
	@Autowired
	UserService userService;
	@RequestMapping("/")
	public String home(){
		
		return "login/index";
	}
	//去注册
	@RequestMapping("/toRegister")
	public String toregist(HttpServletRequest request){
		System.out.println(request.getContextPath());
		return "login/register";
	}
	//注册
	@RequestMapping("/register")
	@ResponseBody
	public Map<String, Object> register(User user){		
	     Map<String, Object> result = new HashMap<String, Object>();  
	        if(StringUtils.isEmpty(user.getPassword()) || StringUtils.isEmpty(user.getEmail())){  	              
	            result.put("msg", "failed");  
	            return result;  
	        } 
	        //业务逻辑
	        userService.save(user);
	        result.put("msg", "success");	          
	        return result;  
	}
}
