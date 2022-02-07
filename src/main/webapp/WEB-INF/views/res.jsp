<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리소스 사용</title>
<!-- src/main/webapp/resources/css/default.css 파일 불러오기 -->
<link rel="stylesheet" href="resources/css/default.css">
<!-- src/main/webapp/resources/js/test.js 파일 불러오기 -->
<script src="resources/js/test.js"></script>
</head>
<body>
	<h1>[ 리소스 사용 ]</h1>
	<p>이미지 넣기</p>
	<!-- 현재 페이지의 URL : http://localhost:8888/web2/res -->
	<!-- 프로젝트 내에서 이미지의 경로 : src/main/webapp/resources/image/ok.png -->
	<p><img src="resources/image/ok.png"></p>
	
	<p>외부 CSS파일 사용</p>
	
	<p><a href="javascript:test()">외부 JS파일 사용</a></p>
	
</body>
</html>