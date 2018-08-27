<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>

<meta charset=UTF-8>
<title>ログイン画面</title>


<style>
body{background-image: url('file:///C:/Users/Ogasawara%20Takumi/git/Java/Kakeibo/WebContent/IMAGE/青横線.jpg');
background-attachment : fixed;
background-repeat:repeat;}


p{font-family: 'MS Mincho', sans-serif;
	font-size:30px;
	color:#ffffff;}

a{font-family: 'MS Mincho', sans-serif;
	font-size:25px;
	color:#ffffff;}

h3{font-family: 'MS Mincho', sans-serif;
color:#ffffff;}

</style>
</head>
<body>
<p>ログイン画面</p>
<h3>パスワード=aaaa</h3>

<form action="/Kakeibo/Top" method="post">
<a>名前：<input type="text" name="name"></a><br>
<a>パスワード：<input type="password" name="pass"></a><br><br>
<input type="submit" value="ログイン">
</form>

</body>
</html>