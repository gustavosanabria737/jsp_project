<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
Agencia de viajes
<%
	String ciudad = "Madrid";
	Cookie[] cookies = request.getCookies();
	if(cookies != null){
	    for(Cookie temp : cookies){
	        if("viajes.ciudad".equals(temp.getName())){
	            ciudad = temp.getValue();
	            break;
	        }
	    }
	}
%>
<h3>Vuelos a <%= ciudad %></h3>
<p>Ejemplo</p>
<p>Ejemplo 2</p>
<p>Ejemplo 3</p>

</body>
</html>