<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLDecoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body bgcolor="pink">
	<h3> 사용자로 로그인 </h3>
	<%= URLDecoder.decode(request.getParameter("userName"), "UTF-8") %>
	<%= request.getParameter("userid") %>님 환영합니다.
</body>
</html>