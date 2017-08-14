<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<!-- 표현언어(EL, Expression Language) -->
	${"Hello"} <br>
	<!-- 표현식(Expression) -->
	<%= "Hello" %> <br>
	<!-- 스크립트릿 -->
	<% out.println("Hello"); %> <br>
</body>
</html>