package com.skilldistillery.bootwwehof.controllers;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

import javax.validation.Valid;

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
		return "/index.jsp";
		// return "index"; // if using a ViewResolver.
	}

	@RequestMapping(path = "getInductee.do", method = RequestMethod.GET)
	public ModelAndView getInductee(@RequestParam("iid") int iid) {
		ModelAndView mv = new ModelAndView();

		Inductee inductee = WWEDAO.findById(iid);
		// film is unmanaged after it is outside of the transaction that exists in the
		// DAO

		mv.addObject("inductee", inductee);
		mv.setViewName("WEB-INF/show.jsp");
		return mv;
	}
	
	@RequestMapping(path = "getAllInductees.do", method = RequestMethod.GET)
	public ModelAndView getAllInductees() {
		ModelAndView mv = new ModelAndView();

		List<Inductee> inductees = WWEDAO.findAll();

		mv.addObject("inductees", inductees);
		mv.setViewName("WEB-INF/show.jsp");
		return mv;
	}
	
	@RequestMapping(path = "/", method = RequestMethod.GET)
	public String index(Model model) {

		List<Inductee> inductees = WWEDAO.findAll();
		model.addAttribute("inductees", inductees);

	  return "/index.jsp";
	}
	
	@RequestMapping(path = "addInductee.do")
	public ModelAndView gotoadd(Model model) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/add.jsp");
		
		return mv;
	}
	
	
	@RequestMapping(value="add.do", method=RequestMethod.POST)
	public ModelAndView newHOFinductee(@RequestParam("name")String name, @RequestParam("crowdName")String crowdName, @RequestParam("realName")String realName,
		@RequestParam("inducted") Integer inducted, @RequestParam("birthday") LocalDate birthday, @RequestParam("description")String description,
		@RequestParam("finisher")String finisher, @RequestParam("birthplace")String birthplace)	{
		ModelAndView mv = new ModelAndView();
//		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-mm-dd");
//		LocalDate birthdayParse = LocalDate.parse(birthday, formatter);
		Inductee inductee = new Inductee(name, crowdName, realName, inducted, birthday, description, finisher, birthplace);
		inductee = WWEDAO.addToHallOfFame(inductee);

		mv.addObject("inductee", new Inductee());
		mv.setViewName("/");
		return mv;
	}
	
	@RequestMapping(path="removeInductee.do", method=RequestMethod.POST)
	public ModelAndView removeInductee(@RequestParam("iid") int iid) {
		ModelAndView mv = new ModelAndView();
		WWEDAO.removeFromHallOfFameById(iid);
		mv.setViewName("/");
		return mv;
	}
	
	@RequestMapping(path = "updateInductee.do")
	public ModelAndView gotoupdate(Model model) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/update.jsp");
		
		return mv;
	}
	
	@RequestMapping(value="update.do", method=RequestMethod.POST)
	public ModelAndView updateHOFinductee(@RequestParam("id") int id, @RequestParam("name")String name, @RequestParam("crowdName")String crowdName, @RequestParam("realName")String realName,
		@RequestParam("inducted") Integer inducted, @RequestParam("birthday") String birthday, @RequestParam("description")String description,
		@RequestParam("finisher")String finisher, @RequestParam("birthplace")String birthplace)	{
		ModelAndView mv = new ModelAndView();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-mm-dd");
		LocalDate birthdayParse = LocalDate.parse(birthday, formatter);
		Inductee inductee = new Inductee(name, crowdName, realName, inducted, birthdayParse, description, finisher, birthplace);
		inductee = WWEDAO.updateById(id, inductee);
		
		mv.addObject("inductee", id);
		mv.setViewName("/");
		return mv;
	}
}
