package com.yedam.web.user.dao;

import lombok.Data;

@Data
public class User {

	String name;
	String email;
	String password;
	String checkPassword;
}
