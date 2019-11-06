package com.bobo.movie.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bobo.movie.domain.Student;
import com.bobo.movie.service.Service;

@org.springframework.stereotype.Controller
public class Controller {

	@Autowired
	private Service service;
	
	@RequestMapping("list")
	public String getStudentlist(HttpServletRequest request) {
		List<Student> studentlist = service.getStudentlist();
		request.setAttribute("studentlist", studentlist);
		return "list";
	}
}
