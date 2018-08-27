<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="Login.User" %>

    <%User loginUser = (User)session.getAttribute("loginUser");%>

<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>トップページ</title>

<link rel="stylesheet" type="text/css" href="/TimeTable/css/style.css">

<style>
body{background-image: url('file:///C:/Users/Ogasawara%20Takumi/git/Java/Kakeibo/WebContent/IMAGE/緑横線.jpg');
background-attachment : fixed;
background-repeat:repeat;}

p{font-family: 'MS Mincho', sans-serif;
	 font-size:30px;
	 color:lightcyan;}

a{font-family: 'MS Mincho', sans-serif;
	 font-size:28px;
	 color:lightcyan;}


</style>
</head>
<body>

<%if(loginUser != null) { %>
<p>ログインに成功しました</p>
<p>ようこそ <%= loginUser.getName() %> さん</p>
<a href="/Kakeibo/Delete">削除へ</a><br>
<a href="/Kakeibo/DetailView">詳細検索へ</a><br>
<a href="/Kakeibo/Record">新規登録へ</a><br>
<a href="/Kakeibo/Logout">ログアウト</a>

<%}else{ %>
<p>ログインに失敗しました</p>
<a href="/Kakeibo/Login">ログイン画面へ</a>
<% } %>

</body>
</html>