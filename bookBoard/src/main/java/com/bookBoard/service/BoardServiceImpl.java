package com.bookBoard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bookBoard.domain.BoardVO;
import com.bookBoard.mapper.BoardMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class BoardServiceImpl implements BoardService{
	@Setter(onMethod_={@Autowired})
	private BoardMapper bMapper;
	
	@Override
	public List<BoardVO> getBoardList() {
		log.info("getBoardList()....................");
		
		return bMapper.getBoardList();
	}

	@Override
	public int createBoard(BoardVO board) {
		log.info("createBoard() ...........................");
		
		return bMapper.createBoard(board);
	}

	@Override
	public BoardVO getBoard(String bno) {
		log.info("getBoard() ..................");
		
		return bMapper.getBoard(bno);
	}

	@Override
	public int updateBoard(BoardVO board) {
		log.info("updateBoard() .............................");
		
		return bMapper.updateBoard(board);
	}

	@Override
	public int deleteBoard(String bno) {
		log.info("deleteBoard() .................");
		
		return bMapper.deleteBoard(bno);
	}

}
