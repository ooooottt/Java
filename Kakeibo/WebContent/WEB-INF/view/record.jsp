<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>新規記録</title>
<style>

body{background-image: url('file:///C:/Users/Ogasawara%20Takumi/Desktop/workspace/Kakeibo/WebContent/IMAGE/水玉%20緑.jpg');
background-attachment : fixed;
background-repeat:repeat;}

h1,h4{font-family: 'MS Mincho', sans-serif;
color:#ffffff;}

p,a,form{font-family: 'MS Mincho', sans-serif;
	font-size:25px;
	color:#ffffff;}

</style>
</head>
<body>

<h1>新規登録</h1>

<p>登録したい情報を入力してください。</p>
<h4>※すべて入力してからボタンを押してください。</h4>


<form action="/Kakeibo/RecordResult" method="get">
		日付：<input type="text" name="day"><br>
		内容：<input type="text" name="name"><br>
		出費･収入：<input type="text" name="price"><br><br>
		<input type="submit" value="登録"><br><br>
	</form>

<a href="/Kakeibo/Delete">削除</a><br>
<a href="/Kakeibo/DetailView">詳細検索</a>

</body>
</html>