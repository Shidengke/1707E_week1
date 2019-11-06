package com.bobo.movie.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.bobo.movie.dao.Mapper;
import com.bobo.movie.domain.Student;
import com.bobo.movie.service.Service;

@org.springframework.stereotype.Service
public class ServiceimpI implements Service {

	@Autowired
	private Mapper mapper;
	
	public List<Student> getStudentlist() {
		// TODO Auto-generated method stub
		return mapper.getStudentlist();
	}

}
