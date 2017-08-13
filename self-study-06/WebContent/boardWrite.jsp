<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="board" class="com.mission.javabeans.BoardBean" />
<jsp:setProperty property="*" name="board" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<h1> 입력 완료된 정보 </h1><br>
	작성자 : <jsp:getProperty property="name" name="board"/><br>
	비밀번호 : <jsp:getProperty property="pwd" name="board"/><br>
	이메일 : <jsp:getProperty property="email" name="board"/><br>
	글제목 : <jsp:getProperty property="title" name="board"/><br>
	글내용 : <jsp:getProperty property="content" name="board"/><br>
</body>
</html>