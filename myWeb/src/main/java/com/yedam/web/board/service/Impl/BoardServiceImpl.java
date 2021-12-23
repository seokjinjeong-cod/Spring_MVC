package com.yedam.web.board.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.web.board.dao.Board;
import com.yedam.web.board.dao.BoardMapper;
import com.yedam.web.board.dao.BoardSearch;
import com.yedam.web.board.service.BoardService;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired BoardMapper mapper;
	
	@Override
	public List<Board> find(BoardSearch board) {
		return mapper.find(board);
	}

	@Override
	public Board select(Board board) {
		return mapper.select(board);
	}
	
	@Override
	public int insert(Board board) {
		return mapper.insert(board);
	}

	@Override
	public int delete(Board board) {
		return mapper.delete(board);
	}

	@Override
	public int update(Board board) {
		return mapper.update(board);
	}


}
