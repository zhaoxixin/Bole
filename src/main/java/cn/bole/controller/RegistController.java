package cn.bole.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.bole.pojo.Company;
import cn.bole.pojo.User;
import cn.bole.service.UserService;
@Controller
public class RegistController {
	@Autowired
	UserService userService;
	
	//去注册
	@RequestMapping("/toRegister")
	public String toregist(){
		return "login/register";
	}
	//注册
	@RequestMapping("/register")
	@ResponseBody
	public Map<String, Object> register(String type, String email,String password){	
		
		if(Integer.parseInt(type)==0){//找工作
		User user = new User();
		user.setEmail(email);
		user.setPassword(password);
		
	     Map<String, Object> result = new HashMap<String, Object>();  
	        if(StringUtils.isEmpty(user.getPassword()) || StringUtils.isEmpty(user.getEmail())){  	              
	            result.put("msg", "failed");  
	            return result;  
	        } 
	        //业务逻辑
	        userService.save(user);
	        result.put("type", 0);
	        result.put("msg", "success");	          
	        return result;  //
	        
		}else{
			Company company=new Company();
			company.setPassword(password);
			company.setCompanyName(email);//  这个需要修改为email属性的
			Map<String, Object> result = new HashMap<String, Object>();  
	        if(StringUtils.isEmpty(company.getPassword()) || StringUtils.isEmpty(company.getCompanyName())){  	              
	            result.put("msg", "failed");  
	            return result;  
	        } 
	        //业务逻辑
	        result.put("type", 1);
	        result.put("msg", "success");	
			return null;//去公司主页
		}
	}
}
