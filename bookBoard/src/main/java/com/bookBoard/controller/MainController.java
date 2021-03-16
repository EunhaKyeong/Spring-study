package com.bookBoard.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class MainController {
	@GetMapping("/")
	public String main() {
		log.info("main!");
		
		return "main";
	}
}
