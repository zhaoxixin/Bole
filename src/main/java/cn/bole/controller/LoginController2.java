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
public class LoginController2 {
	@Autowired
	UserService userService;
	@RequestMapping("/toLogin")
	public String toregist(HttpServletRequest request){
		return "login/login";
	}
	
	@RequestMapping("/login")
	@ResponseBody
	public Map<String, Object> register(User user){
		
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
	        result.put("msg", "success"); 
 	        return result; 
	
	}
}
