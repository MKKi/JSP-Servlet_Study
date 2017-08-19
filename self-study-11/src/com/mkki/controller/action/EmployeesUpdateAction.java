package com.mkki.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mkki.dao.EmployeesDAO;
import com.mkki.dto.EmployeesVO;

public class EmployeesUpdateAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		EmployeesVO eVo = new EmployeesVO();
		eVo.setId(request.getParameter("id"));
		eVo.setGender(request.getParameter("gender"));
		eVo.setLev(request.getParameter("lev"));
		eVo.setName(request.getParameter("name"));
		eVo.setPass(request.getParameter("pass"));
		eVo.setPhone(request.getParameter("phone"));
		
		EmployeesDAO eDao = EmployeesDAO.getInstance();
		eDao.updateEmployees(eVo);
		
		new EmployeesListAction().execute(request, response);
	}
}
