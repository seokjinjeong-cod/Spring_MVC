package com.yedam.web.user.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yedam.web.user.dao.ListCommand;

@Controller
public class MemberListController {

	@RequestMapping("members")
	public String members(ListCommand vo) {
		System.out.println(vo);
		return "member/list";
	}
}
