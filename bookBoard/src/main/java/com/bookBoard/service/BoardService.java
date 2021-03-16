package com.bookBoard.service;

import java.util.List;

import com.bookBoard.domain.BoardVO;

public interface BoardService {
	public List<BoardVO> getBoardList();
	public int createBoard(BoardVO board);
	public BoardVO getBoard(String bno);
	public int updateBoard(BoardVO board);
	public int deleteBoard(String bno);
}
