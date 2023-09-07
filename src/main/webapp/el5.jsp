<%@page import="util.Alpha"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el5.jsp</title>
</head>
<!-- 
1.pageScope 
2.requestScope
3.sessionScope
4.applicationScope 
-->
<body>
<c:forEach var="i" begin="0" end="10">
	${i}<br>
	${pageScope.i}<br>
	<%= pageContext.getAttribute("i") %><br>
<!--   위 세개는 모두 같은 값을 출력한다. 같은 명령이다 가장 간편한 첫번째(EL)를 쓴다           -->
</c:forEach>



</body>
</html>