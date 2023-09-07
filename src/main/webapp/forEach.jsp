<%@page import="oracle.net.aso.l"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.Locale"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="util.Alpha"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forEach.jsp</title>
</head>
<body>
<%
/*	Locale[] locales = Locale.getAvailableLocales();
	
	for(var l : locales)
		System.out.println(l.getDisplayCountry() +","+ l.getISO3Language());
*/	   
%>
<c:set var="locales" value="<%=Locale.getAvailableLocales() %>"/> 

 
<c:forEach var="l" items="${locales}" varStatus="status">
	${status.index} ${status.count}. ${l.displayName} ${l.ISO3Language}<br>
</c:forEach>



</body>
</html>