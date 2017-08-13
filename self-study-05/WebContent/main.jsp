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
		Cookie[] ck = null;
		ck = request.getCookies();
		String username="";
		if(ck != null){
			for(Cookie c : ck){
				if(c.getName().equals("username")) username=c.getValue();
			}
	%>
		<%= username %>님 반갑습니다 <br>
		<form action="logout.jsp" method="post">
			<input type="submit" value="로그아웃">
		</form>
	<%
		} else {
	%>
	<h2> 로그인에 실패하셨습니다. </h2>
	<p> <a href="loginForm.jsp"> 돌아가기 </a> </p>
	<% } %>
</body>
</html>