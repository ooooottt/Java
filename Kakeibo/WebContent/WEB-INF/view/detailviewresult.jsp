<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="dto.Kakeibo" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>検索結果</title>
<style>

body{background-image: url('file:///C:/Users/Ogasawara%20Takumi/Desktop/workspace/Kakeibo/WebContent/IMAGE/水玉%20青.jpg');
background-attachment : fixed;
background-repeat:repeat;}

p,a{font-family: 'MS Mincho', sans-serif;
	font-size:25px;
	color:#ffffff;}

</style>
</head>
<body>


<%
	request.setCharacterEncoding("UTF-8");

	Kakeibo k = (Kakeibo)request.getAttribute("Kakeibo");
%>


	<p>検索した日：<%= k.getDay() %></p>
	<p>検索結果</p>
	<p>詳細：<%=k.getName() %></p>
	<p>金額：<%=k.getPrice() %>円</p>


	<a href="/Kakeibo/DetailView">検索画面へ</a>

</body>
</html>