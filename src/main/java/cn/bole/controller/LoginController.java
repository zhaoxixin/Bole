package cn.bole.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class LoginController {

	@RequestMapping("/")
	public String home(){
		
		return "login/index";
	}
	
	@RequestMapping("/toRegister")
	public String toregist(HttpServletRequest request){
		System.out.println(request.getContextPath());
		return "login/register";
	}
	
	@RequestMapping("/register")
	public String register(HttpServletRequest request){
		
		String email = (String) request.getAttribute("email");
		System.out.println(email);
		return "login/index";
	}

}
