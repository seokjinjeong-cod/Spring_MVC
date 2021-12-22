package com.yedam.web.board.service;

import java.util.List;

import com.yedam.web.board.dao.Board;

public interface BoardService {

	int insert(Board board);
	List<Board> find();
}
