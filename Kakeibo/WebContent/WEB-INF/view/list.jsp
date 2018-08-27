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

body{background-image: url('file:///C:/Users/Ogasawara%20Takumi/git/Java/Kakeibo/WebContent/IMAGE/水玉%20白青.png');
background-attachment : fixed;
background-repeat:repeat;}

a{font-family: 'MS Mincho', sans-serif;
	font-size:25px;
	color:#000000;}

</style>
</head>
<body>

<a>一覧</a><br>


	<%


	request.setCharacterEncoding("UTF-8");
	@SuppressWarnings("unchecked")
	ArrayList<Kakeibo> list = (ArrayList<Kakeibo>)request.getAttribute("param");
	%>

	<%for(int a = 0; a<list.size(); a++){ %>
	<a><%= list.get(a).getDay() %></a>
	<a><%= list.get(a).getName() %></a>
	<a><%= list.get(a).getPrice() %></a><br>
	<%} %>




<a href="/Kakeibo/Delete">削除</a><br>
<a href="/Kakeibo/DetailView">詳細検索</a><br>
<a href="/Kakeibo/Record">新規登録</a><br>
<a href="/Kakeibo/Logout">ログアウト</a>

</body>
</html>