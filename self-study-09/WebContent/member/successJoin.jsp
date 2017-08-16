<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
<script type="text/javascript" src="script/magic.js"></script>
<style type="text/css">
	td{
	 	border: 1px solid black;
	 	width: 200px;
	 	text-align: center;
	 }
</style>
</head>
<body>
	<form>
		<table align="center">
			<tr>
				<td colspan="2" align="center"> 사원 정보<br> <div style="color: red"> ${message } </div> </td> 
			</tr>
			<tr>
				<td align="center"> 아이디 </td>
				<td> ${updateUser.id } </td>
			</tr>
			<tr>
				<td align="center"> 비밀번호 </td>
				<td> ${updateUser.pass } </td>
			</tr>
			<tr>
				<td align="center"> 이름 </td>
				<td> ${updateUser.name } </td>
			</tr>
			<tr>
				<td align="center"> 권한 </td>
				<c:choose>
					<c:when test="${result == 3 }">
						<td> 관리자 </td>
					</c:when>
					<c:otherwise>
						<td> 일반회원 </td>
					</c:otherwise>
				</c:choose>
			</tr>
			<tr>
				<td align="center"> 성별 </td>
				<c:choose>
					<c:when test="${updateUser.gender == 1}">
						<td> 남자 </td>
					</c:when>
					<c:otherwise>
						<td> 여자 </td>
					</c:otherwise>
				</c:choose>
			</tr>
			<tr>
				<td align="center"> 전화번호 </td>
				<td> ${updateUser.phone } </td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="button" value="메인 페이지로 이동" onclick="location.href='main.jsp'">
 				</td>
			</tr>
		</table>
	</form>
</body>
</html>