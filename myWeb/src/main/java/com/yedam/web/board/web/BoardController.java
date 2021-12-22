package com.yedam.web.board.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yedam.web.board.dao.Board;
import com.yedam.web.board.service.BoardService;

@Controller
@RequestMapping("/board/")
public class BoardController {

	@Autowired BoardService service;
	
	@RequestMapping("list")
	public String board(Model model) {
		model.addAttribute("list", service.find());
		return "tiles/board/list";
	}
	
	//등록페이지
	//@RequestMapping(value = "insert", method = RequestMethod.GET)
	@GetMapping("insert")
	public String insertForm() {
		return "tiles/board/insert";
	}
	
	//등록처리(command 객체:파라미터를 받음 객체)
	@PostMapping("insert")
	public String insertProc(Board board) {
		//db insert
		service.insert(board);
		//response.sendRedirect("")
		System.out.println(board);
		return "redirect:list";
	}
}
