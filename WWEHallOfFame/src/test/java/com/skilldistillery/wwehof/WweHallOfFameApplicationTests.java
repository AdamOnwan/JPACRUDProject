package com.skilldistillery.wwehof;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.skilldistillery.bootwwehof.DAO.WWEDAO;
import com.skilldistillery.bootwwehof.DAO.WWEDAOJPAImpl;
import com.skilldistillery.wwehof.entities.Inductee;

@SpringBootTest
class WweHallOfFameApplicationTests {
	@Autowired
	private WWEDAO dao;


	@Test
	@DisplayName("Testing Inductee Inducted")
	void testInducted(){
		assertEquals("Big John Studd", dao.findById(2).getName());
	}
//	@Test
//	@DisplayName("Testing Inductee Name")
//	void testName(){
//		assertNotNull(inductee);
//		assertEquals("André the Giant", inductee.getName());
//	}
//	@Test
//	void testCrowdName() {
//		assertEquals(null, inductee.getCrowdName());
//	}
//	@Test
//	void testURL() {
//		   assertThat("http://localhost:8086/");
//	}

}
