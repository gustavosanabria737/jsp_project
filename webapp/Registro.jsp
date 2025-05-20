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
	String nombre = request.getParameter("nombre");
	String apellido = request.getParameter("apellido");
	String usuario = request.getParameter("usuario");
	String contra = request.getParameter("contra");
	String pais = request.getParameter("pais");
	String tecnologia = request.getParameter("tecnologias");
	Class.forName("com.mysql.jdbc.Driver");
	java.sql.Connection connection = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp", "root", "");
	java.sql.Statement statement = connection.createStatement();
	String instructionSQL = "INSERT INTO USUARIOS (NOMBRE, APELLIDO, USUARIO, CONTRASENA, PAIS, TECNOLOGIA) VALUES ('" + nombre + "','" + apellido + "','" + usuario + "','" + contra + "','" + pais + "','" + tecnologia + "')";
	statement.executeUpdate(instructionSQL);
	out.println("Operación correcta");
%>

</body>
</html>