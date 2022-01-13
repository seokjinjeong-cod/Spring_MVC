package com.yedam.web.board.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.web.board.dao.Board;
import com.yedam.web.board.dao.BoardMapper;
import com.yedam.web.board.dao.BoardSearch;
import com.yedam.web.board.dao.CommentsMapper;
import com.yedam.web.board.service.BoardService;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired BoardMapper boardMapper;
	@Autowired CommentsMapper commentsMapper;
	
	@Override
	public List<Board> find(BoardSearch board) {
		return boardMapper.find(board);
	}

	@Override
	public Board select(Board board) {
		return boardMapper.select(board);
	}
	
	@Override
	public int insert(Board board) {
		return boardMapper.insert(board);
	}

	@Override
	//@Transactional
	public int delete(Board board) {
		commentsMapper.deleteByBoard(board.getNo());
		return boardMapper.delete(board);
	}

	@Override
	public int update(Board board) {
		return boardMapper.update(board);
	}


}
