package com.exam.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.exam.model.EmployeeReg;
import com.exam.service.EmployeeRegServiceImpl;

@Controller
public class HomeController {
	
	@Autowired
	EmployeeRegServiceImpl employeeRegServiceImpl;
	
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
	@GetMapping(value = "/show-productanly")
	public ModelAndView shoeproduct() {
		
		return new ModelAndView("pages/show-productanalysis");
	}
	@GetMapping(value = "/empreg")
	public ModelAndView empRegr() {
		return new ModelAndView("pages/employeereg");
	}
	
	@GetMapping(value = "/empsalary")
	public ModelAndView empSalary() {
		return new ModelAndView("pages/employeesalary");
	}
	
	@GetMapping(value = "/empsubmit")
	public ModelAndView submitNumber() {
		Map<String, Object> model = new HashMap<>();
		List<EmployeeReg> employeeList  = employeeRegServiceImpl.getAll();
        model.put("employee", employeeList);
		return new ModelAndView("pages/empformsubmit",model);
	}
	
	@GetMapping(value = "/reportshow")
	public ModelAndView reportshow() {
		return new ModelAndView("pages/reportshow");
	}
	
	
}
