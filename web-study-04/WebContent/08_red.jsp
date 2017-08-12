<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body bgcolor="red">
	이 파일은 08_red.jsp 입니다.<br><hr>
	forward action tag가 실행되면 이 페이지의 내용은 출력되지 않습니다.<br>
	<jsp:forward page="08_yellow.jsp" />
</body>
</html>