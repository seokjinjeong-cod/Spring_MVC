package com.yedam.web.board.service;

import java.util.List;

import com.yedam.web.board.dao.Board;
import com.yedam.web.board.dao.BoardSearch;

public interface BoardService {

	List<Board> find(BoardSearch board);
	Board select(Board board);
	int insert(Board board);
	int delete(Board board);
	int update(Board board);
}
