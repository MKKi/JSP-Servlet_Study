<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
<link rel="stylesheet" type="text/css" href="css/movie.css">
<script type="text/javascript" src="script/movie.js"></script>
</head>
<body>
	<div class="wrap" align="center">
		<h1> 정보 등록 </h1>
		<form method="post" enctype="multipart/form-data" name="frm">
			<table>
				<tr>
					<th> 제목 </th>
					<td> <input type="text" name="title"> </td>
				</tr>
				<tr>
					<th> 가격 </th>
					<td> <input type="text" name="price"> 원 </td>
				</tr>
				<tr>
					<th> 감독 </th>
					<td> <input type="text" name="director"> </td>
				</tr>
				<tr>
					<th> 배우 </th>
					<td> <input type="text" name="actor"> </td>
				</tr>
				<tr>
					<th> 시놉시스 </th>
					<td> <textarea name="synopsis"></textarea> </td>
				</tr>
				<tr>
					<th> 사진 </th>
					<td> <input type="file" name="poster"> </td>
				</tr>
			</table>
			<br>
			<input type="submit" value="등록" onclick="return frmCheck()">
			<input type="reset" value="취소">
			<input type="button" value="목록" onclick="location.href='movielist.do'">
		</form>
	</div>
</body>
</html>