<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Kakeibo" %>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>一覧表示</title>
<style>

body{background-image: url('file:///C:/Users/Ogasawara%20Takumi/git/Java/Kakeibo/WebContent/IMAGE/薄水色丸.jpg');
background-attachment : fixed;
background-repeat:repeat;}

a{font-family: 'MS Mincho', sans-serif;
	font-size:25px;
	color:#000000;}

h1{font-family: 'MS Mincho', sans-serif;}

table{font-family: 'MS Mincho', sans-serif;
	   font-size:25px;}

</style>
</head>
<body>

<h1>一覧</h1><br>


	<%
	request.setCharacterEncoding("UTF-8");
	@SuppressWarnings("unchecked")
	ArrayList<Kakeibo> list = (ArrayList<Kakeibo>)request.getAttribute("param");
	%>

	<table  border="1"  align="center">
	<tr bgcolor="#f0f8ff">
	<th>日付</th>
	<th>内容</th>
	<th>金額</th>
	</tr>

	<%for(int a = 0; a<list.size(); a++){ %>
	<tr bgcolor="#f0f8ff">
	<th><%= list.get(a).getDay() %></th>
	<th><%= list.get(a).getName() %></th>
	<th><%= list.get(a).getPrice() %></th>
	</tr>
	<%} %>

</table>



<a href="/Kakeibo/Delete">削除</a><br>
<a href="/Kakeibo/DetailView">詳細検索</a><br>
<a href="/Kakeibo/Record">新規登録</a><br>
<a href="/Kakeibo/Logout">ログアウト</a>

</body>
</html>