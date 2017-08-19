<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
<link rel="stylesheet" type="text/css" href="css/employee.css">
<script type="text/javascript" src="script/employee.js"></script>
</head>
<body>
	<div id="wrap" align="center">
		<h1> 리스트 </h1>
		<table class="list">
			<tr>
				<td colspan="5" style="text-align: right; border:white">
					<a href="EmployeesServlet?command=employee_write_form">정보 등록</a>
				</td>
			</tr>
			<tr>
				<th>아이디</th><th>이름</th><th>권한</th><th>성별</th><th>전화번호</th>
			</tr>
			<c:forEach var="employee" items="${eList }">
				<tr>
					<td> ${employee.id } </td>
					<td><a href="EmployeesServlet?command=employee_view&id=${employee.id }">${employee.name }</a></td>
					<c:choose>
						<c:when test='${employee.lev eq "A" }'>
							<td>관리자</td>
						</c:when>
						<c:otherwise>
							<td>일반회원</td>
						</c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test='${employee.gender eq "1" }'>
							<td>남자</td>
						</c:when>
						<c:otherwise>
							<td>여자</td>
						</c:otherwise>
					</c:choose>
					<td> ${employee.phone } </td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>