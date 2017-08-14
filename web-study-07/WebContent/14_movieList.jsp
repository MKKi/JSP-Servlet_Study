<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<%
		String[] movieList = {"타이타닉", "해리포터", "혹성탈출", "킹콩" };
		pageContext.setAttribute("movieList", movieList);
	%>
	<c:forEach var="movie" items="${movieList}">
		${movie}<br>
	</c:forEach>
</body>
</html>