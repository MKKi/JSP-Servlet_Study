<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<%
		String appPath = application.getContextPath();
		String filePath = application.getRealPath("06_application.jsp");
	%>
	Context Path for this application<br>
	<b><%= appPath %></b><hr>
	File Path for this application<br>
	<b><%= filePath %></b>
</body>
</html>