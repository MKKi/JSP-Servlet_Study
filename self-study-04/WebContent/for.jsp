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
		int number = Integer.parseInt(request.getParameter("number"));
		int i=1;
		int sum =0;
	%>
		<h1> 1부터 <%= number %>까지 자연수 합 구하기 </h1>
	<%
		for(; i<number; i++){
			sum+=i;
			out.print(i+"+");
		}
		out.println(number+"="+(sum+i));
	%>
</body>
</html>