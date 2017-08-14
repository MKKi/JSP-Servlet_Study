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
		int num1 = (Integer) request.getAttribute("num1");
		int num2 = (Integer) request.getAttribute("num2");
		int add = (Integer) request.getAttribute("add");
	%>
	
	<%= num1 %> + <%= num2 %> = <%= add %>
	<hr>
	
	EL Expression<br>
	<!-- EL에서는 {} 안에 기술한 이름을 '속성'으로 인식한다. -->
	${num1 } + ${num2 } = ${add}
</body>
</html>