<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	Using Expression<br>
	<%
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
	%>
	<%= num1 %> + <%= num2 %> = <%= num1+num2 %> <hr>
	
	Using EL<br>
	${param.num1} + ${param.num2} = ${param.num1+param.num2 }
</body>
</html>