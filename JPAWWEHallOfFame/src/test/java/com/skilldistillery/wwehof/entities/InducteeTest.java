package com.skilldistillery.wwehof.entities;

import static org.junit.jupiter.api.Assertions.*;

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
	private Inductees inductees;

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
		inductees = em.find(Inductees.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		inductees = null;
	}

	@Test
	void test() {
		assertNotNull(inductees);
		assertEquals("André the Giant", inductees.getName());
	}

}
