package com.exam.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SendMessageController {

	@Autowired
	JavaMailSender javaMailSender;
	
	@RequestMapping("/sendEmail")
    public ModelAndView sendEmail(@RequestParam("email") String email, @RequestParam("sub") String sub,
            @RequestParam("body") String body, Map<String, String> map) {
        
        SimpleMailMessage massage = new SimpleMailMessage();
        massage.setTo(email);
        massage.setSubject(sub);
        massage.setText(body);
        System.out.println("OKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKK");
        javaMailSender.send(massage);
        map.put("massage", "Email Send SuccessFull");
        return new ModelAndView("pages/introduce", map);
    }
}
