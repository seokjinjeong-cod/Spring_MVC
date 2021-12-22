package com.yedam.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

//pojo 컨테이너에 빈 등록
@Controller
public class MainController {

	@RequestMapping("/main")
	public String main( @RequestParam(required = false, defaultValue = "admin") String id,
						Model model, 
						HttpServletRequest request) {
		model.addAttribute("dept", "개발");
		request.setAttribute("id",id);
//		String id = request.getParameter("id"); // 위 @RequestParam 으로 대체
		return "main";
	}
	
}
