<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>서블릿</title>
</head>
<body>
	<h3>get</h3>
	<form method="get" action="InfoServlet">
		이름 : <input type="text" name="name"><br>
		주소 : <input type="text" name="addr"><br>
		<input type="submit" value="전송">
	</form>
	<h3>post</h3>
	<form method="post" action="InfoServlet">
		이름 : <input type="text" name="name"><br>
		주소 : <input type="text" name="addr"><br>
		<input type="submit" value="전송">
	</form>
</body>
</html>