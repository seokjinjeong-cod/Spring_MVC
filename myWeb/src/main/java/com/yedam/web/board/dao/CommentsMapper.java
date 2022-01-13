package com.yedam.web.board.dao;

import java.util.List;

public interface CommentsMapper {

	List<Comments> find(Comments comments);
	Comments findById(Comments comments);
	int insert(Comments comments);
	int update(Comments comments);
	int delete(String seq);
	int deleteByBoard(String boardNo);
}
