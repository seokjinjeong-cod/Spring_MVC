package com.yedam.web.user.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class MemberDetailController {

	@GetMapping("members/{id}") // 중괄호 변수명이랑 pathvariable변수명 일치
	public String detail(@PathVariable Long id,
						 Model model) throws Exception {
		model.addAttribute("id", id);
		if(id < 10) {
			throw new MemberNotFoundException();
		} else if(id < 20) {
			throw new TypeMismatchException();
		}
		return "member/detail";
	}
}
