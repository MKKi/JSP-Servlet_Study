<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="itembean" class="com.mission.javabeans.ItemBean"/>
<jsp:setProperty property="*" name="itembean"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<h3> 입력 완료된 정보 </h3><br>
	상품명 : <jsp:getProperty property="name" name="itembean"/><br>
	가격  : <jsp:getProperty property="price" name="itembean"/><br>
	설명 : <jsp:getProperty property="description" name="itembean"/>
</body>
</html>