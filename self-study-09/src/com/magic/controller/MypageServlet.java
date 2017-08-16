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
 * Servlet implementation class MypageServlet
 */
@WebServlet("/mypage.do")
public class MypageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MypageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		EmployeesVO eVo = (EmployeesVO) session.getAttribute("loginUser");
		
		if(eVo != null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("member/mypage.jsp");
			dispatcher.forward(request, response);	
		} else {
			response.sendRedirect("member/login.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		
		EmployeesVO eVo = new EmployeesVO();
		eVo.setId(request.getParameter("id"));
		eVo.setPass(request.getParameter("pass"));
		eVo.setName(request.getParameter("name"));
		eVo.setLev(request.getParameter("lev"));
		eVo.setGender(Integer.parseInt(request.getParameter("gender")));
		eVo.setPhone(request.getParameter("phone"));
		
		EmployeesDAO eDao = EmployeesDAO.getInstance();
		eDao.updateMember(eVo);
		
		
		EmployeesVO eVo2 = eDao.getMember(eVo.getId());
		
		session.setAttribute("updateUser", eVo2);
		session.setAttribute("message", "회원 정보가 수정되었습니다.");
		session.setAttribute("loginUser", eVo2);
		
		int result = eDao.userCheck(eVo2.getId(), eVo2.getPass(), eVo2.getLev());
		session.setAttribute("result", result);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("member/successJoin.jsp");
		dispatcher.forward(request, response);
	}

}
