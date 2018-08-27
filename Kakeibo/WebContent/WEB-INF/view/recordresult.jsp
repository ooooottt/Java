<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="dto.Kakeibo" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>記録完了</title>
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

	String day = request.getParameter("day");
	String name = request.getParameter("name");
	String price = request.getParameter("price");

%>


	<p>以下の内容で新規登録しました。</p><br>

	<a>日付：<%=day%></a><br>
	<a>詳細：<%=name%></a><br>
	<a>金額：<%=price%>円</a><br><br>




	<a href="/Kakeibo/Record">新規登録へ</a>

</body>
</html>