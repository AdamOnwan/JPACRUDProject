package com.skilldistillery.bootwwehof.controllers;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import com.skilldistillery.bootwwehof.DAO.WWEDAO;
import com.skilldistillery.wwehof.entities.Inductee;

@Controller
public class WWEController {
	@Autowired
	private WWEDAO WWEDAO;

	@RequestMapping(path = "index.do")
	public String index() {
		return "/index.jsp";
	}

	@RequestMapping(path = "/", method = RequestMethod.GET)
	public String index(Model model) {
		List<Inductee> inductees = WWEDAO.findAll();
		model.addAttribute("inductees", inductees);

		return "/index.jsp";
	}

	@RequestMapping(path = "getInductee.do", method = RequestMethod.GET)
	public ModelAndView getInductee(@RequestParam("iid") int iid) {
		ModelAndView mv = new ModelAndView();
		Inductee inductee = WWEDAO.findById(iid);
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

	@RequestMapping(path = "addInductee.do")
	public ModelAndView gotoadd(Model model) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/add.jsp");
		return mv;
	}

	@RequestMapping(value = "add.do", method = RequestMethod.POST)
	public ModelAndView newHOFinductee(@RequestParam("id") String id, @RequestParam("name") String name,
			@RequestParam("crowdName") String crowdName, @RequestParam("realName") String realName,
			@RequestParam("inducted") Integer inducted, @RequestParam("description") String description,
			@RequestParam("finisher") String finisher, @RequestParam("birthplace") String birthplace) {
		ModelAndView mv = new ModelAndView();
		Inductee inductee = new Inductee(name, crowdName, realName, inducted, description, finisher, birthplace);
		inductee = WWEDAO.addToHallOfFame(inductee);
		mv.addObject("inductee", new Inductee());
		mv.setViewName("/index.jsp");
		return mv;
	}

	@RequestMapping(path = "removeInductee.do", method = RequestMethod.POST)
	public ModelAndView removeInductee(@RequestParam("iid") int iid) {
		ModelAndView mv = new ModelAndView();
		WWEDAO.removeFromHallOfFameById(iid);
		mv.setViewName("/index.jsp");
		return mv;
	}

	@RequestMapping(path = "updateInductee.do")
	public ModelAndView gotoupdate(@RequestParam("iid") int iid) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/index.jsp");
		return mv;
	}

	@RequestMapping(value = "update.do", method = RequestMethod.POST)
	public ModelAndView updateHOFinductee(Inductee inductee) {
		ModelAndView mv = new ModelAndView();
		int id = inductee.getId();
		inductee = WWEDAO.updateById(id, inductee);
		mv.addObject("inductee", inductee);
		mv.setViewName("/index.jsp");
		return mv;
	}
}
