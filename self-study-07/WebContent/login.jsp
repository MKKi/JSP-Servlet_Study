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
	${param.id }님이
	<c:choose>
		<c:when test="${param.usertype eq 1 }">
			사용자로 
		</c:when>
		<c:otherwise>
			관리자로 
		</c:otherwise>
	</c:choose>
	로그인하셨습니다.
</body>
</html>