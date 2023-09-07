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
<title>triangle.jsp</title>
</head>
<body>
<!-- 
1.		2.		3.		4.
*		*****   *****   *
**		 ****	****    **
***       ***   ***     ***
****       **   **      ****
*****       *   *       *****
-->
<h1>1.</h1>
<c:set var="star" value="*" />
<c:forEach var = "line" begin="1" end="5">
    <c:forEach var = "column" begin="1" end="5">
        <c:if test="${line == column && line > column}">
        	${star}
        
        </c:if>
	    
	   
	
	</c:forEach>
</c:forEach>
<!-- 
<h1>2.</h1> 

${line}>${column}
-->
<h1>3.</h1>
<h1>4.</h1>



</body>
</html>