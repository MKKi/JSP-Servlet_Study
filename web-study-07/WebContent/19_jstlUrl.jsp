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
	<!-- var Attribute 생략 시 바로 출력 -->
	<c:import url="http://localhost:8181/web-study-07/02_el.jsp" var="data" />
	${data }
</body>
</html>