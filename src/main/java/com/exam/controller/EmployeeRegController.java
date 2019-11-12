package com.exam.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.file.Files;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.exam.jasperreports.SimpleReportExporter;
import com.exam.jasperreports.SimpleReportFiller;
import com.exam.model.EmployeeReg;
import com.exam.service.EmployeeRegServiceImpl;

@Controller
public class EmployeeRegController {

	@Autowired
	EmployeeRegServiceImpl employeeRegServiceImpl;
	@Autowired
	private ServletContext servletContext;
	
	@Autowired
	SimpleReportFiller simpleReportFiller;

	@PostMapping("/employeereg")
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
		String salary = request.getParameter("salary");

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
		employeeReg.setSalary(Double.parseDouble(salary));
		
		employeeRegServiceImpl.save(employeeReg);
		return new ModelAndView("pages/employeereg");
	}
	
	
	@PostMapping("/employe")
	public String whitparameter(HttpServletResponse response, HttpServletRequest request) {
		response.setContentType("application/pdf");
		String id = request.getParameter("userId");
		Long uid = Long.parseLong(id);
		
		try {
			SimpleReportExporter simpleExporter = new SimpleReportExporter();

			simpleReportFiller.setReportFileName("report6.jrxml");
			simpleReportFiller.compileReport();

			Map<String, Object> parameters = new HashMap<>();
			
			
			parameters.put("empId", uid);
			simpleReportFiller.setParameters(parameters);
			simpleReportFiller.fillReport();
			simpleExporter.setJasperPrint(simpleReportFiller.getJasperPrint());

			simpleExporter.exportToPdf("report6.pdf", "olonsoft");

			File file = new File("src/main/resources/reports/report6.pdf");
			response.setHeader("Content-Type", servletContext.getMimeType(file.getName()));
			response.setHeader("Content-Length", String.valueOf(file.length()));
			response.setHeader("Content-Disposition", "inline; filename=\"report6.pdf\"");
			Files.copy(file.toPath(), response.getOutputStream());
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}
