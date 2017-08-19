package com.mkki.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mkki.dao.EmployeesDAO;

public class EmployeesDeleteAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		
		EmployeesDAO eDao = EmployeesDAO.getInstance();
		eDao.deleteEmployee(id);
		
		new EmployeesListAction().execute(request, response);
	}

}
