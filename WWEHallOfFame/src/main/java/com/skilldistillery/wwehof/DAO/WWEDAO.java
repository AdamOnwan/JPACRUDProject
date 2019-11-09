package com.skilldistillery.wwehof.DAO;

import java.util.List;

import com.skilldistillery.wwehof.entities.Inductee;

public interface WWEDAO {
	Inductee  findByName(String name);
	List<Inductee> findAll();
	
}
