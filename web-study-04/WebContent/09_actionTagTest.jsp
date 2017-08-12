<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<%
	String userID = request.getParameter("userid");
	String userPwd = request.getParameter("userpwd");
	String loginCheck = request.getParameter("loginCheck");
	
	if(loginCheck.equals("user")){
%>
	<jsp:forward page="09_userMain.jsp">
		<jsp:param name="userName" value='<%= URLEncoder.encode("고객", "UTF-8") %>' />
	</jsp:forward>
<%
	} else {
%>
	<jsp:forward page="09_managerMain.jsp">
		<jsp:param name="userName" value='<%= URLEncoder.encode("관리자", "UTF-8") %>' />
	</jsp:forward>
<% } %>