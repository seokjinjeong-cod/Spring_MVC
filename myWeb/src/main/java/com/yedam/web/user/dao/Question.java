package com.yedam.web.user.dao;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor // 모든 인수를가진 생성자
@NoArgsConstructor // 인수없는 기본생성자
public class Question {
	
	String title;
	List<String> options;
}
