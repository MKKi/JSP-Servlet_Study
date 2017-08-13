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
	
	이름 : <%= member.getName() %><br>
	아이디 : <%= member.getUserid() %><br><hr>
	
	<%
		member.setName("홍길동");
		member.setUserid("asdf");
	%>
	이름 : <%= member.getName() %><br>
	아이디 : <%= member.getUserid() %>
</body>
</html>