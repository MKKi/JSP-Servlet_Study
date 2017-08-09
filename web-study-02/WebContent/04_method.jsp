<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>서블릿</title>
</head>
<body>
	<form method="get" action="MethodServlet">
		<input type="submit" value="get방식 호출" />
	</form>
	<br/>
	<form method="post" action="MethodServlet">
		<input type="submit" value="post방식 호출" />
	</form>
</body>
</html>