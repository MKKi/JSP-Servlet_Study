<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
<style type="text/css">
td {
	border: 0;
}

#firstRow {
	font-weight: bold;
	background-color: gray;
}
</style>
</head>
<body>
	<form action="boardWrite.jsp" method="post">
		<h1> 게시판 글쓰기 </h1>
		<table border="1">
			<tr>
				<td id="firstRow"> 작성자 </td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td id="firstRow">비밀번호</td>
				<td><input type="password" name="pwd"> (게시물 수정/삭제 시 필요합니다.)</td>
			</tr>
			<tr>
				<td id="firstRow">이메일</td>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td id="firstRow">글제목</td>
				<td><input type="text" name="title"></td>
			</tr>
			<tr>
				<td id="firstRow">글내용</td>
				<td><textarea name="content" rows="20" cols="80"></textarea></td>
			</tr>
		</table>
	
		<input type="submit" value="등록">
		<input type="reset" value="다시작성">
	</form>
</body>
</html>