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
		Cookie cookie = new Cookie("username", " ");
		cookie.setMaxAge(0);
	%>
	<script type="text/javascript">
		alert("로그아웃");
		location.href="loginForm.jsp";
	</script>
</body>
</html>