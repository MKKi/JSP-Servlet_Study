<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
		<h1> 정보 보기 </h1>
		<form action="EmployeesServelt" method="post" name="frm">
			<table>
				<tr>
					<th style="width:60px">아이디</th>
					<td>${employee.id }</td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td>${employee.pass }</td>
				</tr>
				<tr>
					<th>이름</th>
					<td>${employee.name }</td>
				</tr>
				<tr>
					<th>권한</th>
					<c:choose>
						<c:when test='${employee.lev eq "A" }'>
							<td>관리자</td>
						</c:when>
						<c:otherwise>
							<td>일반회원</td>
						</c:otherwise>
					</c:choose>
				</tr>
				<tr>
					<th>성별</th>
					<c:choose>
						<c:when test='${employee.gender eq "1" }'>
							<td>남자</td>
						</c:when>
						<c:otherwise>
							<td>여자</td>
						</c:otherwise>
					</c:choose>
				</tr>
				<tr>
					<th>전화번호</th>
					<td>${employee.phone }</td>
				</tr>
				<tr>
					<th>가입일</th>
					<td><fmt:formatDate value="${employee.enter }" /></td>
				</tr>
			</table>
			<br><br>
			<input type="button" value="수정" onclick="location.href='EmployeesServlet?command=employee_update_form&id=${employee.id}'">
			<input type="button" value="삭제" onclick="location.href='EmployeesServlet?command=employee_delete&id=${employee.id}'">
			<input type="button" value="목록" onclick="location.href='EmployeesServlet?command=employee_list'">
			<input type="button" value="등록" onclick="location.href='EmployeesServlet?command=employee_write_form'">
		</form>
	</div>
</body>
</html>