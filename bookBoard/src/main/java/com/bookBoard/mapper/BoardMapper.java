package com.bookBoard.mapper;

import java.util.List;

import com.bookBoard.domain.BoardVO;

public interface BoardMapper {
	public List<BoardVO> getBoardList();
	public int createBoard(BoardVO board);
	public BoardVO getBoard(String bno);
	public int updateBoard(BoardVO board);
	public int deleteBoard(String bno);
}
