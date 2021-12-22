package com.yedam.web.user.web;

import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.yedam.web.user.dao.Question;
import com.yedam.web.user.dao.Survey;

@Controller
public class SurveyController {

	@GetMapping("survey")
	public String surveyForm(Model model) {
		Question q1 = new Question("당신의 역할은?", Arrays.asList("server", "front", "fullstack"));
		Question q2 = new Question("개발도구는?", Arrays.asList("eclipse", "intellij", "sublime"));
		Question q3 = new Question("하고싶은말은?", null);
		List<Question> questions = Arrays.asList(q1,q2,q3);
		
		model.addAttribute("questions", questions);
		return "register/surveyForm";
	}
	
	@PostMapping("survey")
	public String survey(@ModelAttribute("svy") Survey survey) {
		System.out.println(survey);
		return "register/submitted";
	}
}
