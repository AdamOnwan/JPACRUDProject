package com.skilldistillery.bootwwehof.DAO;

import java.util.List;

import com.skilldistillery.wwehof.entities.Inductee;

public interface WWEDAO {
	Inductee findById(int id);
	Inductee findByName(String name);
	List<Inductee> findAll();
	Inductee addToHallOfFame(Inductee inductee);
	Inductee updateById(int id, Inductee inductee);
	boolean removeFromHallOfFameById(int id);
	
}
