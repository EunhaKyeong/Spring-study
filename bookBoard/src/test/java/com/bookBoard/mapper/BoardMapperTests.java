package com.bookBoard.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.bookBoard.service.BoardService;

import lombok.Setter;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class BoardMapperTests {
	@Setter(onMethod_ = {@Autowired})
	private BoardService bService;
	
	@Test
	public void getBoardListTest() {
		bService.getBoardList();
	}
}
