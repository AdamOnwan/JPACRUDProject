package com.skilldistillery.wwehof.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.wwehof.entities.Inductee;

@Transactional
@Service
public class WWEDAOJPAImpl implements WWEDAO {

	private EntityManager em;

	@Override
	public Inductee findByName(String name) {
		// TODO Auto-generated method stub
		return em.find(Inductee.class, name);
	}

	@Override
	public List<Inductee> findAll() {
		String jpql = null;
		jpql = "SELECT s FROM Film s";

		List<Inductee> results = em.createQuery(jpql, Inductee.class).getResultList();
		em.close();
		return results;
	}
}
