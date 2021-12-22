package com.yedam.web.board.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.web.board.dao.Board;
import com.yedam.web.board.dao.BoardMapper;
import com.yedam.web.board.service.BoardService;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired BoardMapper mapper;
	
	@Override
	public int insert(Board board) {
		return mapper.insert(board);
	}

	@Override
	public List<Board> find() {
		return mapper.find();
	}
}
