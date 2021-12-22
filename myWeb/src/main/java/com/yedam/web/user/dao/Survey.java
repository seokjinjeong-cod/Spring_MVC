package com.yedam.web.user.dao;

import java.util.List;

import lombok.Data;

@Data
public class Survey {

	List<String> response;
	Respondent respondent;
}
