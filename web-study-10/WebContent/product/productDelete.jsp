<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
<link rel="stylesheet" type="text/css" href="css/shopping.css">
<script type="text/javascript" src="script/product.js"></script>
</head>
<body>
	<div class="wrap" align="center">
		<h1> 상품 삭제 - 관리자 페이지 </h1>
		<form method="post">
			<table>
				<tr>
					<td>
						<c:choose>
							<c:when test="${empty product.pictureurl }">
								<img src="upload/noimage.gif">
							</c:when>
							<c:otherwise>
								<img src="upload/${product.pictureurl }">
							</c:otherwise>
						</c:choose>
					</td>
					<td>
						<table>
							<tr>
								<th style="width: 80px"> 상품명 </th>
								<td> ${product.name } </td>
							</tr>
							<tr>
								<th> 가격 </th>
								<td>${product.price }</td>
							</tr>
							<tr>
								<th>설명 </th>
								<td> ${product.description } </td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			<br>
			<input type="hidden" name="code" value="${product.code }">
			<input type="submit" value="삭제">
			<input type="button" value="목록" onclick="location.href='productList.do'">
		</form>
	</div>
</body>
</html>