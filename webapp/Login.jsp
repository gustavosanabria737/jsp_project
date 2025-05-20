<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%

	String usuario = request.getParameter("usuario");
	String contra = request.getParameter("contra");

	Class.forName("com.mysql.jdbc.Driver");
	try{
		java.sql.Connection connection = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp", "root", "");
		PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM USUARIOS WHERE USUARIO = ? AND CONTRASENA = ?",     ResultSet.TYPE_SCROLL_INSENSITIVE,
		        ResultSet.CONCUR_READ_ONLY);
		preparedStatement.setString(1, usuario);
		preparedStatement.setString(2, contra);	
		ResultSet  resultSet = preparedStatement.executeQuery();
		if(resultSet.absolute(1))//comprueba si existe un registro
			out.println("Operación correcta");
		else
			out.println("No existe el usuario");	    
	}catch(Exception e){
	    e.printStackTrace();
	    out.println("Ha habido un error: " + e.getMessage());
	}
%>
</body>
</html>