<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String ciudad = request.getParameter("ciudad");
Cookie cookie = new Cookie("viajes.ciudad", ciudad);
cookie.setMaxAge(3600);
response.addCookie(cookie);
%>
<a href="AgenciaViajes.jsp">Ir a la agencia de viajes</a>
</body>
</html>