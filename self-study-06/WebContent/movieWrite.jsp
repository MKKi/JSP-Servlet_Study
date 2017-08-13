<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="moviebean" class="com.mission.javabeans.MovieBean" />
<jsp:setProperty property="*" name="moviebean"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<h1> 입력 완료된 정보 </h1><br>
	제목 : <jsp:getProperty property="title" name="moviebean"/><br>
	가격 : <jsp:getProperty property="price" name="moviebean"/><br>
	감독 : <jsp:getProperty property="director" name="moviebean"/><br>
	출연배우 : <jsp:getProperty property="actor" name="moviebean"/><br>
	시놉시스 : <textarea><jsp:getProperty property="synopsis" name="moviebean"/></textarea><br>
	장르 : 
	<%
		if(request.getParameter("genre") != null){
			int i = Integer.parseInt(request.getParameter("genre"));

			switch(i){
				case 1:
					out.print("로맨스");
					break;
				case 2:
					out.print("스릴러");
					break;
				case 3:
					out.print("액션");
					break;
				case 4:
					out.print("공포");
					break;
				case 5:
					out.print("코메디");
					break;
			}
		} else{
			out.println("선택된 장르가 없습니다.");
		}
	%>
</body>
</html>