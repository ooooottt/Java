<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="dto.Kakeibo" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>削除完了</title>
<style>

body{background-image: url('file:///C:/Users/Ogasawara%20Takumi/Desktop/workspace/Kakeibo/WebContent/IMAGE/水玉%20紫.jpg');
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

	<p>データ削除完了 1件</p>

	<a href="/Kakeibo/Delete">削除画面へ</a>

</body>
</html>