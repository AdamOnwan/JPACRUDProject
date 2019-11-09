package com.skilldistillery.bootwwehof.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.bootwwehof.DAO.WWEDAO;
import com.skilldistillery.wwehof.entities.Inductee;

@Controller
public class WWEController {
	@Autowired
	private WWEDAO WWEDAO;

//	@RequestMapping(path = "/")
//	public ModelAndView index() {
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("/WEB-INF/index.jsp");
//		List<Inductee> inductees = WWEDAO.findAll();
//		mv.addObject(inductees);
//		return mv;
//	}

		@RequestMapping(path = "/")
	public String index() {
		return "WEB-INF/index.jsp";
		// return "index"; // if using a ViewResolver.
	}

	@RequestMapping(path = "getInductee.do", method = RequestMethod.GET)
	public ModelAndView getInductee(@RequestParam("iid") int iid) {
		ModelAndView mv = new ModelAndView();

		Inductee inductee = WWEDAO.findById(iid);
		// film is unmanaged after it is outside of the transaction that exists in the
		// DAO

		mv.addObject("inductee", inductee);
		mv.setViewName("WEB-INF/inductee/show.jsp");
		return mv;
	}
	
	@RequestMapping(path = "getAllInductees.do", method = RequestMethod.GET)
	public ModelAndView getAllInductees() {
		ModelAndView mv = new ModelAndView();

		List<Inductee> inductees = WWEDAO.findAll();

		mv.addObject("inductees", inductees);
		mv.setViewName("WEB-INF/inductee/show.jsp");
		return mv;
	}
	
	@RequestMapping(path = "/", method = RequestMethod.GET)
	public String index(Model model) {

		List<Inductee> inductees = WWEDAO.findAll();
		model.addAttribute("inductees", inductees);

	  return "/WEB-INF/index.jsp";
	}

}
