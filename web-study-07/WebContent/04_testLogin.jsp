<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	당신이 입력한 비밀번호 입니다.(Using Expression) <hr>
	아이디 : <%= request.getParameter("id") %><br>
	비밀번호 : <%= request.getParameter("pwd") %><br><br>
	
	당신이 입력한 비밀번호 입니다.(Using Expression Language)<hr>
	아이디 : ${param.id}<br>
	비밀번호  : ${param["pwd"] }
</body>
</html>