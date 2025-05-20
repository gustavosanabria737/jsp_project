<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
Datos del navegador: <%=request.getHeader("User-Agent") %>
<br>
Idioma del Cliente: <%=request.getLocale() %>
</body>
</html>