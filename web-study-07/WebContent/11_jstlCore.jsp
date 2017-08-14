<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<c:set var="msg" value="hello" />
	\${msg} : ${msg} <br>
	<c:set var="age">
		30
	</c:set>
	\${age} : ${age } <br>
	
	<c:set var="member" value="<%= new com.mkki.javabeans.MemberBean() %>" />
	<c:set target="${member}" property="name" value="홍길동" />
	<c:set target="${member}" property="userid"> asdf </c:set>
	\${member} : ${member}<hr>
	
	<c:set var="add" value="${1+2}" />
	\${add} : ${add} <br>
	<c:set var="flag" value="${5 lt 10}" />
	\${flag} : ${flag }
</body>
</html>