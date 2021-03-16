package com.bookBoard.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bookBoard.domain.BoardVO;
import com.bookBoard.service.BoardService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/board/*")
public class BoardController {
	@Setter(onMethod_ = {@Autowired})
	private BoardService bService;
	
	@GetMapping("/list")
	public void list(Model model) {
		log.info("list .................");
		
		List<BoardVO> board = bService.getBoardList();
		model.addAttribute("board", board);
	}
	
	@PostMapping("/register")
	public String register(BoardVO board) {
		log.info("register .................");
		log.info("board : " + board);
		
		bService.createBoard(board);
		log.info("new bno : " + board.getBno());
		
		return "";
	}
	
	@GetMapping("/read")
	public void read(@RequestParam String bno) {
		log.info("read ..............................");
		log.info(bService.getBoard(bno));
	}
	
	@PostMapping("/remove")
	public String remove(String bno) {
		log.info("remove ...............................");
		log.info("delete result : " + bService.deleteBoard(bno));
		
		return "";
	}
	
	@PostMapping("/modify")
	public String modify(BoardVO board) {
		log.info("modify ........................................");
		log.info("modified board : " + board);
		log.info(bService.updateBoard(board));
		
		return "";
	}
}
