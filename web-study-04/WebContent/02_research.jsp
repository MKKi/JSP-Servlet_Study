<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
<style type="text/css">
	b {
		font-size: 16pt;
	}
</style>
</head>
<body>
	<h2>설문 조사</h2>
	<%
		request.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("name");
		out.println("이름 : <b>" + name + "</b><br>");
		
		String gender = request.getParameter("gender");
		out.print("성별  : <b>");
		if(gender.equals("male")){
			out.print("남자</b><br>");
		} else{
			out.print("여자</b><br>");
		}
		
		String seasonArr[] = request.getParameterValues("season");
		out.println("좋아하는 계절 : <b>");
		for(String season : seasonArr){
			int n = Integer.parseInt(season);
			switch(n){
				case 1:
					out.println("봄 ");
					break;
				case 2:
					out.println("여름 ");
					break;
				case 3:
					out.println("가을 ");
					break;
				case 4:
					out.println("겨율  ");
					break;
			}
		}
		out.print("</b><br><br>");
		out.print("<a href='javascript:history.go(-1)'> 다시 </a>");
	%>
</body>
</html>