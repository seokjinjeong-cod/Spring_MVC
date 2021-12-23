package com.yedam.web.user.web;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice("com")	//aop 기능
public class CommonExceptionHandler {

	@ExceptionHandler(MemberNotFoundException.class)
	public String memberNotFoundException() {
		return "member/noMember";
	}
	
	@ExceptionHandler(TypeMismatchException.class)
	public String typeMismatchException() {
		return "member/invalidate";
	}
}
