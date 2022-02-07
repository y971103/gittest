<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL</title>
<style>
	/* CSS 주석 */
	table {
		border: 1px solid black;
	}
	td {
		border: 1px solid black;
		padding: 10px;
		width: 100px;
	}
</style>
<script>
	//Javascript 주석
	/* Javascript 주석 */
</script>
</head>
<body>
<!-- HTML주석 -->
<%-- JSP 주석 --%>
	<h1>[ JSTL 코어 라이브러리 ]</h1>
	<p>${requestScope.number}</p>
	<p>${number * 2}</p>
	<p>${number == 2}</p>
	<p>${number % 2}</p>
	<p>${str}</p>
	<p>${list}</p>
	<p>${phone}</p>
	<p>${data}</p>
	
	<p>* if태그</p>
	<c:if test="${number != 0}">
		<p>출력될 내용</p>
	</c:if>
	
	<p>* if태그 - 문자열 비교</p>
	<c:if test="${str == 'abc'}">
		<p>str의 값은 abc입니다.</p>
	</c:if>
	
	<p>* choose</p>
	
	<c:choose>
		<c:when test="${number == 1}">
			<p>number의 값은 1이다</p>
		</c:when>
		<c:when test="${number == 2}">
			<p>number의 값은 2이다</p>
		</c:when>
		<c:otherwise>
			<p>number의 값은 그 외의 값이다</p>
		</c:otherwise>
	</c:choose>
	
	<p>* forEach</p>
	
	<c:forEach var="cnt" begin="1" end="5">
		<p>반복되는 내용 ${cnt}</p>
	</c:forEach>
	
	<c:forEach var="i" begin="0" end="${list.size() - 1}">
		<p>${list.get(i)}</p>
	</c:forEach>
	
	<c:forEach var="value" items="${list}">
		<p>${value}</p>
	</c:forEach>
	
	<p>* forEach의 활용</p>
	<select>
		<c:forEach var="i" begin="1" end="12">
			<option>${i}</option>
		</c:forEach>
	</select>월
	<select>
		<c:forEach var="i" begin="1" end="31">
			<option>${i}</option>
		</c:forEach>
	</select>일<br>
	
	<p>* forTokens</p>
	<table>
		<c:forTokens var="value" items="${phone}" delims="-">
			<tr>
				<td>${value}</td>
			</tr>
		</c:forTokens>
	</table>
	
	<p>* out</p>
	<p><c:out value="${data}"></c:out></p>
	
	<p>* url</p>
	<!-- 현재 경로가  http://localhost:8888/web2/jstl -->
	<p><img src="/resources/image/ko.png"></p>
	<p><img src="resources/image/ko.png"></p>
	<p><img src="<c:url value="/resources/image/ko.png" />"></p>
	
</body>
</html>