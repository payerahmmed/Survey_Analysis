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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.exam.jasperreports.SimpleReportExporter;
import com.exam.jasperreports.SimpleReportFiller;
import com.exam.model.EmployeeReg;
import com.exam.model.EmployeeSalary;
import com.exam.model.FormSubmit;
import com.exam.service.EmployeeRegServiceImpl;
import com.exam.service.EmployeeSalaryServiceImpl;
import com.exam.service.FormSubmitServiceImpl;
@Controller
public class EmployeeSalaryController {
	@Autowired
	EmployeeSalaryServiceImpl employeeSalaryServiceImpl;
	@Autowired
	EmployeeRegServiceImpl employeeRegServiceImpl;
	@Autowired
	FormSubmitServiceImpl formSubmitServiceImpl;
	@Autowired
	private ServletContext servletContext;
	
	@Autowired
	SimpleReportFiller simpleReportFiller;
	
	
	@PostMapping("/show-emp")
	public ModelAndView showAll(HttpServletRequest request) {
		Map<String, Object> model = new HashMap<>();
		String lId = request.getParameter("id");
		Long id=Long.parseLong(lId);
		String selectValue = request.getParameter("selectValue");
		System.out.println(id);
		 EmployeeReg entity = employeeRegServiceImpl.getById(id);
		 System.out.println(entity);
		 model.put("employee", entity);
		 List<FormSubmit> entityList = formSubmitServiceImpl.getAllbyName(entity.getEname(),selectValue);
		  model.put("fromsub", entityList);
		  int fromsu=0;
		  int fromfee=0;
		  if (entityList.get(0).getSubmitnum()>50) {
			  fromsu=entityList.get(0).getSubmitnum()-50;
			  fromfee=fromsu*50;
		}else {
			 fromsu=0;
			 fromfee=0;
		}
		  model.put("frombonus", fromsu);
		  model.put("fromfee", fromfee);
		  System.out.println();
		return new ModelAndView("pages/employeesalary", model);
	}
	
	@PostMapping("/totalsalary")
	public ModelAndView empTotalSalary(HttpServletRequest request) {
		String eName = request.getParameter("eName");
		String eEmail = request.getParameter("eEmail");
		String eaddress = request.getParameter("eaddress");
		double eBasicSalary = Double.parseDouble(request.getParameter("eBasicSalary"));
		int eExtrafromFee = Integer.parseInt(request.getParameter("eExtrafromfee"));
		int  eTrans =Integer.parseInt(request.getParameter("eTrans")) ;
		int eLunch =Integer.parseInt(request.getParameter("eLunch")) ;
		int eOthers =Integer.parseInt(request.getParameter("eOthers")) ;
		double totalSalary = eBasicSalary+eExtrafromFee+eTrans+eLunch+eOthers;
		          
		EmployeeSalary employeeSalary = new EmployeeSalary();
		
		employeeSalary.seteName(eName);
		employeeSalary.seteEmail(eEmail);
		employeeSalary.setEaddress(eaddress);
		employeeSalary.seteBasicSalary(eBasicSalary);
		employeeSalary.seteExtrafromFee(eExtrafromFee);
		employeeSalary.seteTrans( eTrans);
		employeeSalary.seteLunch(eLunch);
		employeeSalary.seteOthers(eOthers);
		employeeSalary.setTotalSalary(totalSalary);
		employeeSalary=employeeSalaryServiceImpl.save(employeeSalary);
		
		return new ModelAndView("pages/employeesalary");
	}
	
	@PostMapping("/salaryre")
	public String pdf(HttpServletResponse response, HttpServletRequest request) {
		response.setContentType("application/pdf");
		try {
			SimpleReportExporter simpleExporter = new SimpleReportExporter();

			simpleReportFiller.setReportFileName("salaryreport.jrxml");
			simpleReportFiller.compileReport();

			Map<String, Object> parameters = new HashMap<>();

			simpleReportFiller.setParameters(parameters);
			simpleReportFiller.fillReport();
			simpleExporter.setJasperPrint(simpleReportFiller.getJasperPrint());

			simpleExporter.exportToPdf("salaryreport.pdf", "olonsoft");

			File file = new File("src/main/resources/reports/salaryreport.pdf");
			response.setHeader("Content-Type", servletContext.getMimeType(file.getName()));
			response.setHeader("Content-Length", String.valueOf(file.length()));
			response.setHeader("Content-Disposition", "inline; filename=\"salaryreport.pdf\"");
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
