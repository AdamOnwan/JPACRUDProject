package com.skilldistillery.bootwwehof.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.wwehof.entities.Inductee;

@Transactional
@Service
public class WWEDAOJPAImpl implements WWEDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public Inductee findByName(String name) {
		return em.find(Inductee.class, name);
	}

	@Override
	public List<Inductee> findAll() {
		String jpql = null;
		jpql = "SELECT s FROM Inductee s";

		List<Inductee> results = em.createQuery(jpql, Inductee.class).getResultList();
		em.close();
		return results;
	}

	@Override
	public Inductee findById(int id) {
		return em.find(Inductee.class, id);
	}
}
