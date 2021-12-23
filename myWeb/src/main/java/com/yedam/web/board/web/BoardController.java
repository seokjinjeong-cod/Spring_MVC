package com.yedam.web.board.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yedam.web.board.dao.Board;
import com.yedam.web.board.dao.BoardMapper;
import com.yedam.web.board.dao.BoardSearch;
import com.yedam.web.board.service.BoardService;
import com.yedam.web.common.Paging;

@Controller
@RequestMapping("/board/")
public class BoardController {

	@Autowired BoardService service;
	@Autowired BoardMapper mapper;
	
	@RequestMapping("list")
	public String board(Model model, 
						@ModelAttribute("search") BoardSearch board, 
						Paging paging) {
		paging.setPageUnit(3);
		paging.setTotalRecord(mapper.findTotal(board));
		board.setFirst(paging.getFirst());
		board.setLast(paging.getLast());
		model.addAttribute("list", service.find(board));
//		model.addAttribute("paging", paging);
		return "tiles/board/list";
	}
	
	//단건조회
	@RequestMapping("select")
	public String board(Board board, Model model) {
		board = service.select(board);
		model.addAttribute("board", board);
		return "tiles/board/boardSel";
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
	
	@PostMapping("delete")
	public String delete(Board board) {
		service.delete(board);
		return "redirect:list";
	}
	
	@PostMapping("update")
	public String update(Board board) {
		service.update(board);
		return "redirect:list";
	}
	
}
