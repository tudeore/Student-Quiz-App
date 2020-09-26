package com.examservice.exam.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.examservice.exam.entity.QuetionsEntity;
import com.examservice.exam.services.ExamServiceImpl;

@Controller
public class ExamController {
	
	@Autowired
	ExamServiceImpl exam;
	
	@RequestMapping("/")
	public String home() {
		return "index.jsp";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "login.jsp";
	}
	
	@RequestMapping("/logout-success")
	public String logout() {
		return "login.jsp";
	}
	
	
	@RequestMapping("/exam")
	public ModelAndView Exam() {
		List<QuetionsEntity> model = new ArrayList<QuetionsEntity>();
		model = exam.sendQuestion();
		ModelAndView m1 =  new ModelAndView();
		m1.addObject("model", model);
		m1.setViewName("exam.jsp");
		return m1;
	}
	
	@GetMapping("/details")
	//@RequestMapping(value = "/details",method = RequestMethod.GET)
	public @ResponseBody ModelAndView result(@RequestParam String question1,@RequestParam String question2,
			@RequestParam String question3,@RequestParam String question4,@RequestParam String question5,
			@RequestParam String question6,@RequestParam String question7,@RequestParam String question8,
			@RequestParam String question9,@RequestParam String question10) {
		ModelAndView m1 =  new ModelAndView();
		List<String> result;
		Map QandA = new HashMap<String, String>();
		QandA.put("question0", question1);
		QandA.put("question1", question2);
		QandA.put("question2", question3);
		QandA.put("question3", question4);
		QandA.put("question4", question5);
		QandA.put("question5", question6);
		QandA.put("question6", question7);
		QandA.put("question7", question8);
		QandA.put("question8", question9);
		QandA.put("question9", question10);
		result = exam.Result(QandA);
		result.get(3);
		m1.addObject("result",result);
		m1.setViewName("result.jsp");
		return m1;
		
	}	
}
