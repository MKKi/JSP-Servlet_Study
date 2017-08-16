<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
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
	<form action="login.do" method="post" name="frm">
		<table align="center">
			<tr>
				<td colspan="2" align="center"> 로그인 </td> 
			</tr>
			<tr>
				<td align="center"> 아이디 </td>
				<td> <input type="text" name="id"> </td>
			</tr>
			<tr>
				<td align="center"> 비밀번호 </td>
				<td> <input type="password" name="pass"> </td>
			</tr>
			<tr>
				<td align="center"> 레벨 </td>
				<td>
					<select name="lev">
						<option value="B" selected> 일반회원 </option>
						<option value="A"> 관리자 </option>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="로그인" onclick="return loginCheck()">
					<input type="reset" value="취소">
				</td>
			</tr>
			<br>
					<div style="color: red"> ${message } </div>
		</table>
	</form>
</body>
</html>