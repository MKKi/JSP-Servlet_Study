<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<h3> 세션 정보를 얻어오는 메서드 사용 </h3>
	<%
		String id_str = session.getId();
		long lastTime = session.getLastAccessedTime();
		long createdTime = session.getCreationTime();
		//1000으로 나누면 초
		long time_used = (lastTime - createdTime) / 600000;
		int inactive = session.getMaxInactiveInterval() / 60;
		boolean b_new = session.isNew();
	%>
	
	Session ID : <%= id_str %> <br><hr>
	Used Time : <%= time_used %>분<br><hr>
	Inactive Time : <%= inactive %>분 <br><hr>
	Is it new session?
	<%
		if(b_new){
			out.println("YES");
		} else{
			out.println("NO");
		}
	%>
</body>
</html>