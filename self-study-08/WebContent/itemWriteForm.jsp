<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<h1> 정보입력 폼 </h1>
	<form action="itemWriteResult.jsp" method="post">
		<label for="name"> 상품명 </label>
		<input type="text" id="name" name="name"><br>
		<label for="price"> 가격 </label>
		<input type="text" id="price" name="price"><br>
		<label for="description">설명</label>
		<textarea id="description" name="description"></textarea><br><br>
		
		<input type="submit" value="전송">
		<input type="reset" value="취소">
	</form>
</body>
</html>