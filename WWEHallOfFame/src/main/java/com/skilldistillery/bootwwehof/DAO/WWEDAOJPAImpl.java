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

	@Override
	public Inductee addToHallOfFame(Inductee inductee) {
		em.persist(inductee);
		em.flush();

		return inductee;
	}

	@Override
	public Inductee updateById(int updateId, Inductee inductee) {
		Inductee foundInductee = em.find(Inductee.class, updateId);
		foundInductee.setName(inductee.getName());
		foundInductee.setCrowdName(inductee.getCrowdName());
		foundInductee.setRealName(inductee.getRealName());
		foundInductee.setInducted(inductee.getInducted());
		foundInductee.setBirthday(inductee.getBirthday());
		foundInductee.setDescription(inductee.getDescription());
		foundInductee.setFinisher(inductee.getFinisher());
		foundInductee.setBirthplace(inductee.getBirthplace());
		
		em.flush();

		return foundInductee;
	}

	@Override
	public boolean removeFromHallOfFameById(int id) {
		
		if(em != null) {
		Inductee inductee = em.find(Inductee.class, id);
		em.remove(inductee);
		em.flush();
		
		return true; 
		} else return false;
	}
}
