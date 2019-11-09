package com.skilldistillery.wwehof;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import com.skilldistillery.bootwwehof.DAO.WWEDAO;
import com.skilldistillery.bootwwehof.DAO.WWEDAOJPAImpl;
import com.skilldistillery.wwehof.entities.Inductee;

@SpringBootTest
class WweHallOfFameApplicationTests {
	private WWEDAO dao = new WWEDAOJPAImpl();
	private Inductee inductee;

	@BeforeEach
	void setUp() throws Exception {
		inductee = dao.findById(1);
	}

	@AfterEach
	void tearDown() throws Exception {
		inductee = null;
	}

	@Test
	@DisplayName("Testing Inductee Inducted")
	void testInducted(){
		assertNotNull(inductee);
		assertEquals(1993, inductee.getInducted());
	}
	@Test
	@DisplayName("Testing Inductee Name")
	void testName(){
		assertNotNull(inductee);
		assertEquals("André the Giant", inductee.getName());
	}
	@Test
	void testCrowdName() {
		assertEquals(null, inductee.getCrowdName());
	}
	@Test
	void testURL() {
		   assertThat("http://localhost:8086/");
	}

}
