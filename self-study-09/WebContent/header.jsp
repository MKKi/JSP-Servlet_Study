<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
<style type="text/css">
	td {
		border: 1px solid black;
		text-align: center;
		width: 200px;
	}
	table.mainMenu td.login:hover {
		background-color: grey;
	}
</style>
</head>
<body>
	<table class = "mainMenu" align="center">
		<c:if test="${empty loginUser }">
			<tr>
				<td></td> <td></td>
				<td class="login"> <a href="login.do" style="text-decoration: none">로그인</a> </td>
				<td> 사원등록<br>(관리자 로그인 필요) </td>
				<td> 마이페이지<br>(로그인 필요)</td>
			</tr>
		</c:if>
		<c:if test="${!empty loginUser }">
			<tr>
				<td> ${loginUser.name }님 반갑습니다.</td>
				<td> 레벨 : ${loginUser.lev }</td>
				<td class="login"> <a href="logout.do" style="text-decoration: none">로그아웃</a> </td>
				<c:choose>
					<c:when test="${result eq 3 }">
						<td> <a href="custom.do" style="text-decoration: none">사원등록</a> </td>
					</c:when>
					<c:when test="${result eq 2 }">
						<td> 사원등록<br>(관리자 로그인 필요) </td>
					</c:when>
				</c:choose>
				<td> <a href="mypage.do" style="text-decoration: none">마이페이지</a> </td>
		</c:if>
	</table>
</body>
</html>