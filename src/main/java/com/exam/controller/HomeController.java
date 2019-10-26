package com.exam.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	@GetMapping(value = "/")
	public ModelAndView home() {
		return new ModelAndView("index");
	}
	
	@GetMapping(value = "/dashboard")
	public ModelAndView dashboard() {
		return new ModelAndView("index");
	}
	
	@GetMapping(value = "/register")
	public ModelAndView register() {
		return new ModelAndView("pages/register");
	}
	
	@GetMapping(value = "/productanalysis")
	public ModelAndView productanalysis() {
		return new ModelAndView("pages/productanalysis");
	}
	@GetMapping(value = "/introduce")
	public ModelAndView introduce() {
		return new ModelAndView("pages/introduce");
	}
	
	
}
