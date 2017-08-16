package com.magic.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.magic.dao.EmployeesDAO;
import com.magic.dto.EmployeesVO;

/**
 * Servlet implementation class CustomJoinServlet
 */
@WebServlet("/custom.do")
public class CustomJoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomJoinServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		EmployeesVO eVo = (EmployeesVO) session.getAttribute("loginUser");
		Integer result = (Integer) session.getAttribute("result");
		if(eVo != null && result == 3) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("member/customJoin.jsp");	
			dispatcher.forward(request, response);
		} else {
			response.sendRedirect("login.do");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		String name = request.getParameter("name");
		String lev = request.getParameter("lev");
		Integer gender = Integer.parseInt(request.getParameter("gender"));
		String phone = request.getParameter("phone");
		
		EmployeesVO eVo = new EmployeesVO();
		eVo.setId(id);
		eVo.setPass(pass);
		eVo.setName(name);
		eVo.setLev(lev);
		eVo.setGender(gender);
		eVo.setPhone(phone);
		
		EmployeesDAO eDao = EmployeesDAO.getInstance();
		eDao.insertMember(eVo);
		
		request.setAttribute("message", "회원 등록에 성공했습니다.");
		request.setAttribute("updateUser", eVo);

		RequestDispatcher dispatcher = request.getRequestDispatcher("member/successJoin.jsp");	
		dispatcher.forward(request, response);
	}
}
