package com.yedam.web.board.dao;

import java.util.List;

public interface BoardMapper {

	List<Board> find(BoardSearch board);
	int findTotal(BoardSearch board);
	Board select(Board board);
	int insert(Board board);
	int delete(Board board);
	int update(Board board);
}
