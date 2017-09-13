package cn.bole.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.bole.pojo.User;
import cn.bole.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	UserService userService;
	@RequestMapping("/findUserList")
	public String findAll(Model model){
		List<User> userList = userService.findAll();
		model.addAttribute("userList",userList);
		return "userList";
	}
}
