<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<h3> 정보 입력 폼 </h3>
	<form action="itemWrite.jsp" method="post">
		<table>
			<tr>
				<td>상품명</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>가격</td>
				<td><input type="text" name="price"></td>
			</tr>
			<tr>
				<td>설명</td>
				<td><input type="text" name="description"></td>
			</tr>
		</table>
		<input type="submit" value="전송">
		<input type="reset" value="취소">
	</form>
</body>
</html>