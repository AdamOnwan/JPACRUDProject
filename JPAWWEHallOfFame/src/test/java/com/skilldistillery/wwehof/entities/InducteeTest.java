package com.skilldistillery.wwehof.entities;


import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class InducteeTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Inductee inductee;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("WWEHallOfFame");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		inductee = em.find(Inductee.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		inductee = null;
	}

	@Test
	void testName() {
		assertNotNull(inductee);
		assertEquals("André the Giant", inductee.getName());
	}
	@Test
	void testCrowdName() {
		assertEquals(null, inductee.getCrowdName());
	}
	@Test
	void testRealName() {
		assertNotNull(inductee);
		assertEquals("André René Roussimoff", inductee.getRealName());
	}
	@Test
	void testInducted() {
		assertNotNull(inductee);
		assertEquals(1993, inductee.getInducted());
	}
	@Test
	void testDescription() {
		assertEquals("Feuded with Hogan", inductee.getDescription());
	}
	@Test
	void testFinisher() {
		assertEquals("Sitting on his opponent", inductee.getFinisher());
	}
	@Test
	void testBirthplace() {
		assertEquals("Paris, France", inductee.getBirthplace());
	}

}
