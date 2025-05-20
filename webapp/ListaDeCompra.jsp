<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h2>Selecciona los artículos de la canasta familiar</h2>
  <form action="ListaDeCompra.jsp">
    <label>
      <input type="checkbox" name="articulos" value="arroz"> Arroz
    </label><br>

    <label>
      <input type="checkbox" name="articulos" value="frijoles"> Frijoles
    </label><br>

    <label>
      <input type="checkbox" name="articulos" value="aceite"> Aceite
    </label><br>

    <label>
      <input type="checkbox" name="articulos" value="huevos"> Huevos
    </label><br>

    <label>
      <input type="checkbox" name="articulos" value="azucar"> Azúcar
    </label><br>

    <label>
      <input type="checkbox" name="articulos" value="leche"> Leche
    </label><br><br>

    <button type="submit">Enviar</button>
  </form>
  <h2>Carro de la Compra: </h2>
  <%@ page import="java.util.*" %>
  <%
  	List<String> ListaElementos = (List<String>)session.getAttribute("misElementos");
  	if (ListaElementos == null){
  	    ListaElementos = new ArrayList<String>();
  	    session.setAttribute("misElementos", ListaElementos);
  	}
  
	  String elementos[] = request.getParameterValues("articulos");
	  if(elementos != null){
     		for(String temp:elementos){
     	   		 ListaElementos.add(temp);
     	    	//out.println("<li>"+temp+"</li>");
     		}
  		}
	  
	  for(String temp : ListaElementos){
	      out.println("<li>" + temp + "</li>");
	  }
	  
  %>
</body>
</html>