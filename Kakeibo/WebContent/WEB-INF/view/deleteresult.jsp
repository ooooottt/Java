<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="dto.Kakeibo" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>削除完了</title>
<style>

body{background-image: url('file:///C:/Users/Ogasawara%20Takumi/git/Java/Kakeibo/WebContent/IMAGE/薄青丸.jpg');
background-attachment : fixed;
background-repeat:repeat;}

p,a{font-family: 'MS Mincho', sans-serif;
	font-size:25px;
	color:#000000;}

</style>
</head>
<body>

<%
	request.setCharacterEncoding("UTF-8");

	Kakeibo k = (Kakeibo)request.getAttribute("Kakeibo");
%>

	<p>データ削除完了 1件</p>

	<a>日付：<%= k.getDay() %></a><br>
	<a>詳細：<%=k.getName() %></a><br>
	<a>金額：<%=k.getPrice() %>円</a><br>

	<p>以下の内容を削除しました。</p>



	<a href="/Kakeibo/Delete">削除画面へ</a>

</body>
</html>