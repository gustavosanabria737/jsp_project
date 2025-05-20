<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String alumnos[] = {"Antonio", "Gustavo", "Raúl"};
	pageContext.setAttribute("losAlumnos", alumnos);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach var="temp" items="${losAlumnos}">
		${temp} <br>
	</c:forEach>
</body>
</html>