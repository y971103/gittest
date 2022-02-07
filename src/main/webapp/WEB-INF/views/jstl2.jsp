<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>jstl 함수 사용</h1>
	<p>원본 문자열: ${str}</p>
	<p>substring: ${fn:substring(str,4,7) }</p>
	<p>toUpperCase: ${fn:toUpperCase(str)}</p>
	<p>toLowerCase: ${fn:toLowerCase(str)}</p>
	<p>length: ${fn:length(str)}</p>
	<p>split: <!-- str을 공백을 기준으로 나눈다. abc ABC 가나다라 이렇게 되있어서 배열이 총 3칸이 생긴다 -->
		<c:set var="ar" value="${fn:split(str,' ')}"/>
		<c:forEach var="item" items="${ar}">
			${item}
		</c:forEach>
		</p>
	<p></p>
</body>
</html>