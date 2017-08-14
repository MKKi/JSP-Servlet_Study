<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	Expression : <%=request.getParameter("id") %><br>
	Expression Language(EL) : ${param.id}
</body>
</html>