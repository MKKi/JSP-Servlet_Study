<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("name", "page");
	request.setAttribute("name", "request");
	session.setAttribute("name", "session");
	application.setAttribute("name", "application");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	name : ${name }<br>
	page attribute : ${pageScope.name }<br>
	request attribute : ${requestScope.name }<br>
	session attribute : ${sessionScope.name }<br>
	application attribute : ${applicationScope.name }<br>
</body>
</html>