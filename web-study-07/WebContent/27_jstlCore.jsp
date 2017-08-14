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
		java.util.List<String> seasonList = new java.util.ArrayList<>();
		seasonList.add("봄");
		seasonList.add("여름");
		seasonList.add("가을");
		seasonList.add("겨울");
		request.setAttribute("list", seasonList);
	%>
	<select name="season">
		<c:forEach var="season" items="${list }">
			<option value="${season }"> ${season} </option>
		</c:forEach>
	</select>
</body>
</html>