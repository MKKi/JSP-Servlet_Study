<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<%
		session.setAttribute("s_name1", "session1");
		session.setAttribute("s_name2", "session2");
		session.setAttribute("s_name3", "session3");
		
		out.print("<h3> 세션 값 삭제 전 </h3>");
		Enumeration<String> names = session.getAttributeNames();
		while(names.hasMoreElements()){
			String name = names.nextElement().toString();
			String value = session.getAttribute(name).toString();
			out.println(name + " : " + value + "<br>");
		}
		
		
		session.invalidate();
		
		out.println("<hr><h3> 세션 삭제 후 </h3>");
		if(request.isRequestedSessionIdValid()){
			out.println("Valid Session ID");
		} else {
			out.println("Invalid Session ID");
		}
	%>
</body>
</html>