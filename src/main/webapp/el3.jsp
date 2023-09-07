<%@page import="util.Alpha"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el3.jsp</title>
</head>
<!-- 
1.pageScope 
2.requestScope
3.sessionScope
4.applicationScope 
-->
<body>
<c:set var="num2" value="100"/>
<c:set var="num2" value="200" scope="request"/>
<c:set var="num2" value="300" scope="session"/>
<c:set var="num2" value="400" scope="application"/>
<hr>
num=${num2}<br>
pageScope.num2 = ${pageScope.num2}<br>
requestScope.num2 = ${requestScope.num2}<br>
sessionScope.num2 = ${sessionScope.num2}<br>
applicationScope.num2 = ${applicationScope.num2}<br>
<hr>
pageScope.num2 = <%=pageContext.getAttribute("num2") %><br>
requestScope.num2 = <%=request.getAttribute("num2") %><br>
sessionScope.num2 = <%=session.getAttribute("num2") %><br>
applicationScope.num2 = <%=application.getAttribute("num2") %>
</body>
</html>