<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>post parameter</title>
</head>
<body>
	<form action="write" method="post">
	이름: <input type="text" name="name"><br>  <!--name을 제대로 정의 해줘야 값을 사용 가능하다 -->
	전화번호: <input type="text" name="phone"><br>
	통신사: <input type="radio" name="com" value="kt">KT
		  <input type="radio" name="com" value="lg">LG
		  <input type="radio" name="com" value="sk">SKT
		  <input type="submit" value="전송하기"><br>
	</form>
</body>
</html>