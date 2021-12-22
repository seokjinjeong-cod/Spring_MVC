package com.yedam.web.board.dao;

import java.util.List;

public interface BoardMapper {

	int insert(Board board);
	List<Board> find();
}
