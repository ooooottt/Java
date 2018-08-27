<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>詳細検索</title>
<style>

body{background-image: url('file:///C:/Users/Ogasawara%20Takumi/git/Java/Kakeibo/WebContent/IMAGE/薄水色丸.jpg');
background-attachment : fixed;
background-repeat:repeat;}

h1{font-family: 'MS Mincho', sans-serif;
color:#000000;
}

p,a,form{font-family: 'MS Mincho', sans-serif;
	font-size:25px;
	color:#000000;
}

</style>
</head>
<body>

<h1>詳細検索</h1><br>

<form action="/Kakeibo/DetailViewResult" method="get">
		日付検索：<input type="text" name="key"><br><br>
		<input type="submit" value="検索"><br><br>
	</form>

<a href="/Kakeibo/Delete">削除</a><br>
<a href="/Kakeibo/Record">新規登録</a><br>
<a href="/Kakeibo/List">一覧表示</a><br>
<a href="/Kakeibo/Logout">ログアウト</a>

</body>
</html>