<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<jsp:useBean id="member" class="com.mkki.javabeans.MemberBean" />
	<hr>
	이름 : <jsp:getProperty property="name" name="member"/><br>
	아이디 : <jsp:getProperty property="userid" name="member"/>
	<hr>
	
	<jsp:setProperty property="name" name="member" value="홍길동"/>
	<jsp:setProperty property="userid" name="member" value="asdf"/>
	
	이름 : <jsp:getProperty property="name" name="member"/><br>
	아이디 : <jsp:getProperty property="userid" name="member"/>
</body>
</html>