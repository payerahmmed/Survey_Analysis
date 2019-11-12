package com.exam.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.file.Files;
import java.util.Date;
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
import com.exam.model.Productanalysis;
import com.exam.service.ProductanalysisServiceImpl;

@Controller
public class ProductanalysisController {

	@Autowired
	ProductanalysisServiceImpl productanalysisServiceImpl;

	@Autowired
	private ServletContext servletContext;
	
	@Autowired
	SimpleReportFiller simpleReportFiller;
	
	@PostMapping("/productAnalysis")

	public ModelAndView productSurvey(HttpServletRequest request) {

		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String age = request.getParameter("age");
		String profession = request.getParameter("profession");
		String luxShop = request.getParameter("luxShop");
		String howOften = request.getParameter("howOften");
		String flavorUse[] = request.getParameterValues("flavorUse[]");
		String flavor = request.getParameter("flavor");
		String notflavor = request.getParameter("notflavor");
		String luxSize = request.getParameter("luxSize");
		String namySize[] = request.getParameterValues("namySize[]");
		String prices = request.getParameter("prices");
		String aboutPrice[] = request.getParameterValues("aboutPrice[]");
		String thinkprice = request.getParameter("thinkprice");
		String familyUse = request.getParameter("familyUse");
		String satisfied[] = request.getParameterValues("satisfied[]");
		String seeAd = request.getParameter("seeAd");
		String whereSee[] = request.getParameterValues("whereSee[]");
		String likeUse = request.getParameter("likeUse");
		String whyU = request.getParameter("whyU");
		String always = request.getParameter("always");
		
		
		Productanalysis productanalysis = new Productanalysis();

		productanalysis.setName(name);
		productanalysis.setGender(gender);
		productanalysis.setAge(age);
		productanalysis.setProfession(profession);;
		productanalysis.setLuxShop(luxShop);
		productanalysis.setHowOften(howOften);
		productanalysis.setFlavorUse(flavorUse);
		productanalysis.setFlavor(flavor);
		productanalysis.setNotflavor(notflavor);
		productanalysis.setLuxSize(luxSize);
		productanalysis.setNamySize(namySize);
		productanalysis.setPrices(prices);
		productanalysis.setAboutPrice(aboutPrice);
		productanalysis.setThinkprice(thinkprice);
		productanalysis.setFamilyUse(familyUse);
		productanalysis.setSatisfied(satisfied);
		productanalysis.setSeeAd(seeAd);
		productanalysis.setWhereSee(whereSee);
		productanalysis.setLikeUse(likeUse);
		productanalysis.setWhyU(whyU);
		productanalysis.setAlways(always);
		productanalysis.setCreatedDate(new Date());

		productanalysisServiceImpl.save(productanalysis);
		return new ModelAndView("pages/productanalysis");
	}

	@GetMapping("/show-productanalysis")
	public ModelAndView showAll() {
		Map<String, Object> model = new HashMap<>();
		List<Productanalysis> entityList = productanalysisServiceImpl.getAll();
		model.put("userList", entityList);
		return new ModelAndView("pages/show-productanalysis", model);
	}

	@GetMapping("/productanalysis/edit/{id}")
	public ModelAndView edit(@PathVariable long id) {
		Map<String, Object> model = new HashMap<>();
		Productanalysis entity = productanalysisServiceImpl.getById(id);
		model.put("userEntity", entity);
		return new ModelAndView("pages/edit-productanalysis", model);
	}

	@GetMapping("/productanalysis/delete/{id}")
	public ModelAndView delete(@PathVariable long id) {
		Map<String, Object> model = new HashMap<>();
		productanalysisServiceImpl.delete(id);

		return new ModelAndView("redirect:/show-productanalysis", model);
	}

	@PostMapping("/productAnalysisUpdate")

	public ModelAndView productSurveyUpdate(HttpServletRequest request) {

		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String age = request.getParameter("age");
		String profession = request.getParameter("profession");
		String luxShop = request.getParameter("luxShop");
		String howOften = request.getParameter("howOften");
		String flavorUse[] = request.getParameterValues("flavorUse[]");
		String flavor = request.getParameter("flavor");
		String notflavor = request.getParameter("notflavor");
		String luxSize = request.getParameter("luxSize");
		String namySize[] = request.getParameterValues("namySize[]");
		String prices = request.getParameter("prices");
		String aboutPrice[] = request.getParameterValues("aboutPrice[]");
		String thinkprice = request.getParameter("thinkprice");
		String familyUse = request.getParameter("familyUse");
		String satisfied[] = request.getParameterValues("satisfied[]");
		String seeAd = request.getParameter("seeAd");
		String whereSee[] = request.getParameterValues("whereSee[]");
		String likeUse = request.getParameter("likeUse");
		String whyU = request.getParameter("whyU");
		String always = request.getParameter("always");
		String id = request.getParameter("userId");

		Productanalysis productanalysis = new Productanalysis();
		
		productanalysis.setId(Long.parseLong(id));
		productanalysis.setName(name);
		productanalysis.setGender(gender);
		productanalysis.setAge(age);
		productanalysis.setProfession(profession);;
		productanalysis.setLuxShop(luxShop);
		productanalysis.setHowOften(howOften);
		productanalysis.setFlavorUse(flavorUse);
		productanalysis.setFlavor(flavor);
		productanalysis.setNotflavor(notflavor);
		productanalysis.setLuxSize(luxSize);
		productanalysis.setNamySize(namySize);
		productanalysis.setPrices(prices);
		productanalysis.setAboutPrice(aboutPrice);
		productanalysis.setThinkprice(thinkprice);
		productanalysis.setFamilyUse(familyUse);
		productanalysis.setSatisfied(satisfied);
		productanalysis.setSeeAd(seeAd);
		productanalysis.setWhereSee(whereSee);
		productanalysis.setLikeUse(likeUse);
		productanalysis.setWhyU(whyU);
		productanalysis.setAlways(always);

		productanalysisServiceImpl.update(productanalysis);
		return new ModelAndView("redirect:/show-productanalysis");
	}
	
	@PostMapping("/filterByDate")
	public ModelAndView filterByDate(HttpServletRequest request ) {
		Map<String, Object> model = new HashMap<>();
		String firstDate = request.getParameter("firstDate");
		String lastDate = request.getParameter("lastDate");
		String selectValue = request.getParameter("selectValue");
		System.out.println(selectValue);
		if(firstDate == null || lastDate == null ) {
			List<Productanalysis> entityList = productanalysisServiceImpl.getAll();
			model.put("userList", entityList);
			return new ModelAndView("pages/show-productanalysis", model);
		}		System.err.println(firstDate+":::::::::::::::::"+lastDate);
		List<Productanalysis> entityList = productanalysisServiceImpl.filterByDate(firstDate, lastDate, selectValue);
		model.put("userList", entityList);
		return new ModelAndView("pages/show-productanalysis", model);
	}
	
	@PostMapping("/pdf")
	public String pdf(HttpServletResponse response, HttpServletRequest request) {
		response.setContentType("application/pdf");
		try {
			SimpleReportExporter simpleExporter = new SimpleReportExporter();

			simpleReportFiller.setReportFileName("report1.jrxml");
			simpleReportFiller.compileReport();

			Map<String, Object> parameters = new HashMap<>();

			simpleReportFiller.setParameters(parameters);
			simpleReportFiller.fillReport();
			simpleExporter.setJasperPrint(simpleReportFiller.getJasperPrint());

			simpleExporter.exportToPdf("report1.pdf", "olonsoft");

			File file = new File("src/main/resources/reports/report1.pdf");
			response.setHeader("Content-Type", servletContext.getMimeType(file.getName()));
			response.setHeader("Content-Length", String.valueOf(file.length()));
			response.setHeader("Content-Disposition", "inline; filename=\"report1.pdf\"");
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
