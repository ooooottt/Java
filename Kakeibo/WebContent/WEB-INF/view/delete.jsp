<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>データ削除</title>
<style>

body{background-image: url('file:///C:/Users/Ogasawara%20Takumi/git/Java/Kakeibo/WebContent/IMAGE/水玉%20紫.jpg');
background-attachment : fixed;
background-repeat:repeat;}

h1{font-family: 'MS Mincho', sans-serif;
color:#ffffff;}

p,a,form{font-family: 'MS Mincho', sans-serif;
	font-size:30px;
	color:#ffffff;}

</style>
</head>
<body>


<h1>データ削除</h1>

<form action="/Kakeibo/DeleteResult" method="get">
		削除ID：<input type="text" name="key"><br><br>
		<input type="submit" value="削除"><br><br><br>
	</form>


<a href="/Kakeibo/DetailView">詳細検索</a><br>
<a href="/Kakeibo/Record">新規登録</a>

</body>
</html>