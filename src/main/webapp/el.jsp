<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el.jsp</title>
</head>
<body>
<%
	pageContext.setAttribute("xxx", 100);
    pageContext.setAttribute("a", null);
    
    int num = 200;
%>
<%-- ${num}  이렇게는 안됨.. 아무것도 안나옴--%> 
${xxx}
${a}
${a eq null}
${a.ch}
${a.fg}
<hr>
</body>
</html>