package com.infy;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.infy.domain.Student;

@Controller
public class MyController {
	@RequestMapping(value="/addStudent",method=RequestMethod.GET)
	public String showForm(ModelMap m,@ModelAttribute Student student, BindingResult result){
		m.addAttribute("student",student);
		return "addStudentForm";
	}
	@RequestMapping(value="/addStudent",method=RequestMethod.POST)
	public String submitForm(@ModelAttribute Student student, BindingResult result){
		System.out.println(student.getStudentName());
		//m.addAttribute("message","Hello Charchit");
		return "addStudentForm";
	}
}
