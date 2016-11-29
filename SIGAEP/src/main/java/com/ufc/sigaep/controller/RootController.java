package com.ufc.sigaep.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ufc.sigaep.dao.ICursoDAO;
import com.ufc.sigaep.model.Curso;

@Controller
public class RootController {

	@Autowired
	ICursoDAO cursoDao;
	
	@RequestMapping("/")
	public String home(HttpSession session){
		List<Curso> cursos = cursoDao.findAll();
		session.setAttribute("cursos", cursos);
		return "home";
	}
	
}
