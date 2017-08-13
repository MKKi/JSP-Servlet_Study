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
		Cookie[] cookies = request.getCookies();
		for(Cookie cookie : cookies){
			out.println(cookie.getName()+" : "+cookie.getValue()+"<br>");
		}
	%>
</body>
</html>