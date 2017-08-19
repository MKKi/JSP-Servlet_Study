package com.mkki.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mkki.dao.EmployeesDAO;
import com.mkki.dto.EmployeesVO;

public class EmployeesListAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/employees/employeesList.jsp";
		
		EmployeesDAO eDao = EmployeesDAO.getInstance();
		
		List<EmployeesVO> eList = eDao.selectAllEmployees();
		
		request.setAttribute("eList", eList);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
