package com.exam.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.file.Files;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.exam.jasperreports.SimpleReportExporter;
import com.exam.jasperreports.SimpleReportFiller;
import com.exam.model.Registration;
import com.exam.service.RegistrationServiceImpl;

@Controller
public class Registrationcontroller {
	
	@Autowired
	RegistrationServiceImpl registrationServiceImpl;
	
	@Autowired
	private ServletContext servletContext;
	
	@Autowired
	SimpleReportFiller simpleReportFiller;

	@PostMapping("/userRegistration")
	public ModelAndView userRegistration(HttpServletRequest request) {

		String username = request.getParameter("name");
		String firstName = request.getParameter("fname");
		String lastName = request.getParameter("lname");
		String useremail = request.getParameter("email");
		String userpassword = request.getParameter("password");
		String usercontact = request.getParameter("contact");
		String usergender = request.getParameter("gender");
		String userage = request.getParameter("age");
		String useraddress = request.getParameter("address");

		Registration reg = new Registration();

		reg.setUsername(username);
		reg.setFirstname(firstName);
		reg.setLastname(lastName);
		reg.setEmail(useremail);
		reg.setPassword(userpassword);
		reg.setContact(Integer.parseInt(usercontact));
		reg.setGender(usergender);
		reg.setAge(Integer.parseInt(userage));
		reg.setAddress(useraddress);

		registrationServiceImpl.save(reg);

		return new ModelAndView("pages/register");

	}

	@GetMapping("/show-registartion")
	public ModelAndView showAll() {
		Map<String, Object> model = new HashMap<>();
		List<Registration> entityList = registrationServiceImpl.getAll();
		model.put("userList", entityList);
		return new ModelAndView("pages/show-registartion", model);
	}

	@GetMapping("/registration/edit/{id}")
	public ModelAndView edit(@PathVariable long id) {
		Map<String, Object> model = new HashMap<>();
		Registration entity = registrationServiceImpl.getById(id);
		model.put("userEntity", entity);
		return new ModelAndView("pages/edit-registration", model);
	}

	@PostMapping("/userupdate")
	public ModelAndView userRegistrationUpdate(HttpServletRequest request) {

		String username = request.getParameter("name");
		String firstName = request.getParameter("fname");
		String lastName = request.getParameter("lname");
		String useremail = request.getParameter("email");
		String userpassword = request.getParameter("password");
		String usercontact = request.getParameter("contact");
		String usergender = request.getParameter("gender");
		String userage = request.getParameter("age");
		String useraddress = request.getParameter("address");
		String id = request.getParameter("userId");

		Registration reg = new Registration();
		
		reg.setId(Long.parseLong(id));
		reg.setUsername(username);
		reg.setFirstname(firstName);
		reg.setLastname(lastName);
		reg.setEmail(useremail);
		reg.setPassword(userpassword);
		reg.setContact(Integer.parseInt(usercontact));
		reg.setGender(usergender);
		reg.setAge(Integer.parseInt(userage));
		reg.setAddress(useraddress);

		registrationServiceImpl.update(reg);

		return new ModelAndView("redirect:/show-registartion");
	}

	@GetMapping("/registration/delete/{id}")
	public ModelAndView delete(@PathVariable long id) {
		Map<String, Object> model = new HashMap<>();
		registrationServiceImpl.delete(id);

		return new ModelAndView("redirect:/show-registartion", model);
	}
	@PostMapping("/report")
	public String whitparameter(HttpServletResponse response, HttpServletRequest request) {
		response.setContentType("application/pdf");
		String username = request.getParameter("username");
		try {
			SimpleReportExporter simpleExporter = new SimpleReportExporter();

			simpleReportFiller.setReportFileName("report4.jrxml");
			simpleReportFiller.compileReport();

			Map<String, Object> parameters = new HashMap<>();
			
			parameters.put("userName", username);
			simpleReportFiller.setParameters(parameters);
			simpleReportFiller.fillReport();
			simpleExporter.setJasperPrint(simpleReportFiller.getJasperPrint());

			simpleExporter.exportToPdf("report4.pdf", "olonsoft");

			File file = new File("src/main/resources/reports/report4.pdf");
			response.setHeader("Content-Type", servletContext.getMimeType(file.getName()));
			response.setHeader("Content-Length", String.valueOf(file.length()));
			response.setHeader("Content-Disposition", "inline; filename=\"report4.pdf\"");
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
