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
		<h1> 정보 수정 </h1>
		<form method="post" enctype="multipart/form-data" name="frm">
			<input type="hidden" name="code" value="${updatedMovie.code }">
			<input type="hidden" name="noImg" value="${updatedMovie.poster }">
			<table>
				<tr>
					<td>
						<c:choose>
							<c:when test="${empty updatedMovie.poster }">
								<img src="images/noimage.gif">
							</c:when>
							<c:otherwise>
								<img src="images/${updatedMovie.poster }">
							</c:otherwise>
						</c:choose>
					</td>
					<td>
						<table>
							<tr>
								<th> 제목 </th>
								<td> <input type="text" name="title" value="${updatedMovie.title }"> </td>
							</tr>
							<tr>
								<th> 가격 </th>
								<td> <input type="text" name="price" value="${updatedMovie.price }"> 원 </td>
							</tr>
							<tr>
								<th> 감독 </th>
								<td> <input type="text" name="director" value="${updatedMovie.director }"> </td>
							</tr>
							<tr>
								<th> 배우 </th>
								<td> <input type="text" name="actor" value="${updatedMovie.actor }"> </td>
							</tr>
							<tr>
								<th> 시놉시스 </th>
								<td> <textarea name="synopsis">${updatedMovie.synopsis }</textarea> </td>
							</tr>
							<tr>
								<th> 사진 </th>
								<td> <input type="file" name="poster"> </td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			<br>
			<input type="submit" value="수정" onclick="return frmCheck()">
			<input type="button" value="목록" onclick="location.href='movielist.do'">
		</form>
	</div>
</body>
</html>