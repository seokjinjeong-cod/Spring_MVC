package com.yedam.web.user.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.yedam.web.user.dao.User;

@Controller
public class UserController {

	@RequestMapping("step1")
	public String step1() {
		return "register/step1";
	}

	@PostMapping("step2")
	public String step2(@RequestParam(required = true, 
									  defaultValue = "false",
									  value = "agree") 
									  Boolean agree,
									  User user) {
		if(!agree) {
			return "redirect:step1";
		} else
			return "register/step2";
	}

	@PostMapping("step3")
	public String step3(User user, Model model) {
		System.out.println(user);
		//패스워드가 일치하지 않으면 step2 일치하면 step3
		if(user.getPassword().equals(user.getCheckPassword())) {
			return "register/step3";
		} else {
			model.addAttribute("msg", "패스워드 불일치");
			return "register/step2";
		}
	}
}
