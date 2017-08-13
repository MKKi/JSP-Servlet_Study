<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<h1> 정보 등록	</h1><br>
	<form action="movieWrite.jsp" method="post">
		<table>
			<tr>
				<td>제목</td>
				<td><input type="text" name="title"></td>
			</tr>
			<tr>
				<td>가격</td>
				<td><input type="text" name="price"></td>
			</tr>
			<tr>
				<td>감독</td>
				<td><input type="text" name="director"></td>
			</tr>
			<tr>
				<td>배우</td>
				<td><input type="text" name="actor"></td>
			</tr>
			<tr>
				<td>시놉시스</td>
				<td><textarea name="synopsis"></textarea></td>
			</tr>
			<tr>
				<td>장르</td>
				<td>
					<select name="genre">
						<option value="1">로맨스</option>
						<option value="2">스릴러</option>
						<option value="3" selected="selected">액션</option>
						<option value="4">공포</option>
						<option value="5">코메디</option>
					</select>
				</td>
			</tr>
			
		</table>
		<input type="submit" value="확인">
		<input type="reset" value="취소">
	</form>
</body>
</html>