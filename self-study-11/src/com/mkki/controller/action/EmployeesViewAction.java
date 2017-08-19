package com.mkki.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mkki.dao.EmployeesDAO;
import com.mkki.dto.EmployeesVO;

public class EmployeesViewAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/employees/employeesView.jsp";
		String id = request.getParameter("id");
		
		EmployeesDAO eDao = EmployeesDAO.getInstance();
		EmployeesVO eVo = eDao.selectEmployeeById(id);
		
		request.setAttribute("employee", eVo);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
