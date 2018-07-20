<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="dto.Kakeibo" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>記録完了</title>
<style>

body{background-image: url('file:///C:/Users/Ogasawara%20Takumi/git/Java/Kakeibo/WebContent/IMAGE/水玉%20緑.jpg');
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


	<p>新規登録 1件</p>

	<a href="/Kakeibo/Record">新規登録へ</a>

</body>
</html>