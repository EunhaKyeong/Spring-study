package com.bookBoard.controller;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({
		"file:src/main/webapp/WEB-INF/spring/root-context.xml", 
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"
})
@Log4j
public class BoardControllerTests {
	@Setter(onMethod_= {@Autowired})
	private WebApplicationContext ctx;
	
	private MockMvc mockMvc;
	
	@Before
	public void setup() {
		mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
		log.info("complete setup!");
	}
	
	@Test
	public void testList() throws Exception {
		mockMvc.perform(get("/board/list"));
	}
	
	@Test
	public void testRegister() throws Exception {
		mockMvc.perform(post("/board/register")
			.param("title", "수학 잘하는 아이는 이렇게 공부합니다")
			.param("content", "초등 수학 잘하던 아이, 고등 성적 떨어지면 무슨 소용 있나요? 어렵고 불안한 수학, 엄마는 전략가가 되어야 한다!")
			.param("writer", "류승재")
		);
	}
	
	@Test
	public void testRead() throws Exception {
		mockMvc.perform(get("/board/read").param("bno", "bord0021"));
	}
	
	@Test
	public void testModify() throws Exception {
		mockMvc.perform(post("/board/modify")
				.param("bno", "bord0021")
				.param("title", "푸른 사자 와니니 3")
				.param("content", "검은 땅의 평화를 되찾기 위한 와니니와 친구들의 감동적인 모험")
				.param("writer", "이현"));
	}
	
	@Test
	public void testRemove() throws Exception {
		mockMvc.perform(post("/board/remove").param("bno", "bord0021"));
	}
}
