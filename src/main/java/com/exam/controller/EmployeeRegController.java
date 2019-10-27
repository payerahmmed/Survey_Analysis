package com.exam.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.exam.model.EmployeeReg;
import com.exam.service.EmployeeRegServiceImpl;

@Controller
public class EmployeeRegController {

	@Autowired
	EmployeeRegServiceImpl employeeRegServiceImpl;

	@PostMapping("/employeeReg")
	public ModelAndView employeeRegistration(HttpServletRequest request) {

		String ename = request.getParameter("ename");
		String email = request.getParameter("email");
		String efather = request.getParameter("efather");
		String emother = request.getParameter("emother");
		String gender = request.getParameter("gender");
		String qualification = request.getParameter("qualification");
		String password = request.getParameter("password");
		String eage = request.getParameter("eage");
		String econtact = request.getParameter("econtact");
		String address = request.getParameter("address");

		EmployeeReg employeeReg = new EmployeeReg();

		employeeReg.setEname(ename);
		employeeReg.setEmail(email);
		employeeReg.setEfather(efather);
		employeeReg.setEmother(emother);
		employeeReg.setGender(gender);
		employeeReg.setQualification(qualification);
		employeeReg.setPassword(password);
		employeeReg.setEage(Integer.parseInt(eage));
		employeeReg.setEcontact(Integer.parseInt(econtact));
		employeeReg.setAddress(address);
		return new ModelAndView("pages/employeereg");
	}
}
