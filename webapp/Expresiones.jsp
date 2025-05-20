<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>
Convirtiendo a mayúsculas: <%=new String("juan").toUpperCase() %>
<br>
La suma de 8 + 5 es <%= 8 + 5 %>
<br>
Ejemplo de scriptlet 
<%
	for(int i = 0; i < 10; i++){
	    out.println("<br>Hola Campeón " + i);
	}
%> 
</h1>
<br>
<h1>
Ejemplo de Declaraciones
<%!
private int resultado;

public int suma(int a, int b){
    
    resultado = a + b;
    return resultado;
}

public int multiplicacion(int a, int b){
    
    resultado = a * b;
    return resultado;
}
%>
<br>
Suma
<%=suma(3, 6) %>
</h1>
</body>
</html>