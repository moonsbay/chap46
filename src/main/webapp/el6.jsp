<%@page import="util.Alpha"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el6.jsp</title>
</head>
<!-- 
1.pageScope 
2.requestScope
3.sessionScope
4.applicationScope 
-->
<body>
<jsp:useBean id="alpha" class="util.Alpha"/>
alpha.line = ${alpha.line} | <jsp:getProperty property="line" name="alpha"/> | <%=alpha.getLine() %><br>
alpha.column = ${alpha.column} | <jsp:getProperty property="column" name="alpha"/> | <%=alpha.getColumn() %><br>
alpha.fg = ${alpha.fg} | <jsp:getProperty property="fg" name="alpha"/> | <%=alpha.getFg() %><br>
alpha.bg = ${alpha.bg} | <jsp:getProperty property="bg" name="alpha"/> | <%=alpha.getBg() %><br>
alpha.ch = ${alpha.ch} | <jsp:getProperty property="ch" name="alpha"/> | <%=alpha.getCh() %><br>
<hr>
<c:set var="alpha2" value="<%=new Alpha()%>"/>

alpha2.line = ${alpha2.line} | <%=((Alpha)(pageContext.getAttribute("alpha2"))).getLine() %><br>
alpha2.column = ${alpha2.column} | <%=((Alpha)(pageContext.getAttribute("alpha2"))).getColumn() %><br>
alpha2.fg = ${alpha2.fg} | <%=((Alpha)(pageContext.getAttribute("alpha2"))).getFg() %><br>
alpha2.bg = ${alpha2.bg} | <%=((Alpha)(pageContext.getAttribute("alpha2"))).getBg() %><br>
alpha2.ch = ${alpha2.ch} | <%=((Alpha)(pageContext.getAttribute("alpha2"))).getCh() %><br>



</body>
</html>