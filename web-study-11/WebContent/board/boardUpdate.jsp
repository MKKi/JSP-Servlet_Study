<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
<link rel="stylesheet" type="text/css" href="css/board.css">
<script type="text/javascript" src="script/board.js">s</script>
</head>
<body>
	<div id="wrap" align="center">
		<h1> 게시글 수정 </h1>
		<form method="post" name="frm" action="BoardServlet">
			<input type="hidden" name="num" value="${board.num }">
			<input type="hidden" name="command" value="board_update">
			<table>
				<tr>
					<th>작성자</th>
					<td><input type="text" name="name" value="${board.name }"> * 필수</td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="pass"> * 필수 (게시물 수정/삭제 시 필요합니다.)</td>
				</tr>
				<tr>
					<th>이메일</th>
					<td><input type="text" name="email" value="${board.email }"></td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input type="text" name="title" size="70" value="${board.title }"></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea cols="70" rows="15" name="context">${board.content }</textarea></td>
				</tr>
			</table>
			<br><br>
			<input type="submit" value="등록" onclick="return boardCheck()">
			<input type="reset" value="다시 작성">
			<input type="button" value="목록" onclick="location.href='BoardServlet?command=board_list'">
		</form>
	</div>
</body>
</html>