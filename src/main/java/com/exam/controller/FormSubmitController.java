package com.exam.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.exam.model.FormSubmit;
import com.exam.service.FormSubmitServiceImpl;

@Controller
public class FormSubmitController {
	
	@Autowired
	FormSubmitServiceImpl formSubmitServiceImpl;
	
	@PostMapping("/formsubmit")
	public ModelAndView formSubmitnumber(HttpServletRequest request) {
		Map<String, Object> model = new HashMap<>();
		String empName = request.getParameter("submitid");
		String selectValue = request.getParameter("selectValue");
		String submitnum = request.getParameter("submitnum");
		
		FormSubmit formSubmit = new FormSubmit();
		formSubmit.setEmName(empName);
		formSubmit.setSelectValue(selectValue);
		formSubmit.setSubmitnum(Integer.parseInt(submitnum));
		
		formSubmitServiceImpl.save(formSubmit);
		return new ModelAndView("pages/empformsubmit", model);
	}
}
