<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<%
	String id = "asdf";
	String pwd = "1234";
	String name = "홍길동";
	request.setCharacterEncoding("UTF-8");
	if(id.equals(request.getParameter("id")) && pwd.equals(request.getParameter("pwd"))){
		response.sendRedirect("04_main.jsp?name="+URLEncoder.encode(name, "UTF-8"));
	} else {
		response.sendRedirect("04_loginForm.jsp");
	}
%>
	