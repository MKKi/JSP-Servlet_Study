<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	Context Path : <%= request.getContextPath() %> <br>
	Method : <%= request.getMethod() %> <br>
	URL : <%= request.getRequestURL() %> <br>
	URI : <%= request.getRequestURI() %> <br>
	Server Name : <%= request.getServerName() %> <br>
	Protocol : <%= request.getProtocol() %> <br>
</body>
</html>