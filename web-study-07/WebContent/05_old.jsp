<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	Java Code<br>
	result of using '==' operator : <%= request.getParameter("id")=="a" %><br>
	result of using equals() method : <%= request.getParameter("id").equals("a") %>
</body>
</html>