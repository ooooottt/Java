<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Kakeibo" %>
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

<a>一覧</a>

<a href="/Kakeibo/Delete">削除</a><br>
<a href="/Kakeibo/DetailView">詳細検索</a><br>
<a href="/Kakeibo/Record">新規登録</a><br>
<a href="/Kakeibo/Logout">ログアウト</a>

</body>
</html>