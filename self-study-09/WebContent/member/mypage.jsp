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
	<form action="mypage.do" method="post" name="frm">
		<table align="center">
			<tr>
				<td colspan="2" align="center"> 마이페이지 </td> 
			</tr>
			<tr>
				<td align="center"> 아이디 </td>
				<td> <input type="text" name="id" value="${loginUser.id}" readonly="readonly"> </td>
			</tr>
			<tr>
				<td align="center"> 비밀번호 </td>
				<td> <input type="password" name="pass" value="${loginUser.pass }"> </td>
			</tr>
			<tr>
				<td align="center"> 이름 </td>
				<td> <input type="text" name="name" value="${loginUser.name }"> </td>
			</tr>
			<tr>
				<td align="center"> 권한 </td>
				<c:choose>
					<c:when test="${result == 2 }">
						<td>
							<select name="lev">
								<option value="B" selected> 일반회원 </option>
								<option value="A"> 관리자 </option>
							</select>
						</td>
					</c:when>
					<c:otherwise>
						<td>
							<select name="lev">
								<option value="B"> 일반회원 </option>
								<option value="A" selected> 관리자 </option>
							</select>
						</td>
					</c:otherwise>
				</c:choose>
			</tr>
			<tr>
				<td align="center"> 성별 </td>
				<c:choose>
					<c:when test="${loginUser.gender == 1 }">
						<td>
							<select name="gender">
								<option value="1" selected> 남자 </option>
								<option value="2"> 여자 </option>
							</select>
						</td>
					</c:when>
					<c:otherwise>
						<td>
							<select name="gender">
								<option value="1"> 남자 </option>
								<option value="2" selected> 여자 </option>
							</select>
						</td>
					</c:otherwise>
				</c:choose>
			</tr>
			<tr>
				<td align="center"> 전화번호 </td>
				<td> <input type="text" name="phone" value="${loginUser.phone }"> </td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="수정" onclick="return myPageCheck()">
					<input type="button" value="취소" onclick="location.href='main.jsp'">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>