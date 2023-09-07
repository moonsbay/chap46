<%@page import="util.Alpha"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el2.jsp</title>
</head>
<body>
<%
	var a = new Alpha();
	pageContext.setAttribute("alpha", a);
	
	var b = pageContext.getAttribute("alpha");
%>
${alpha}
<hr>
<%  
/*
   Scope Object 4가지
*/
	pageContext.setAttribute("num", 100);
	request.setAttribute("num", 200);
	session.setAttribute("num", 300);
	application.setAttribute("num", 400);
// EL이 위의 순서대로 찾아서 처음에 있는 값을 num에 입력  이렇게 하면 num에는 100나옴 이게 없다면 200 이것도 없으면 300이런식이다 
// 세번째 session은 한 번 입력하면 웹브라우져 살아있는동안 남아있으므로 여기서 지워도.. num에는 300이 남아있다 
%>
num = ${num}<br>
num2 = ${num2}
<hr>
pageScope = ${pageScope.num}<br>
requestScope = ${requestScope.num}<br>
sessionScope = ${sessionScope.num}<br>
applicationScope = ${applicationScope.num}  
      
</body>
</html>