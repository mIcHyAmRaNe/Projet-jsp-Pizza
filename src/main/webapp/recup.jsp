<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>R�cup des donn�es</title>


</head>

<body>


	<h1> R�sultat du formulaire</h1>	
	
	<p> Nom pizza : <%= request.getParameter("nom")%>  </p>
	<p> Description : <%= request.getParameter("description")%>  </p>
	<p> Tarif : <%= request.getParameter("tarif")%> euros </p>



	
</body>
</html>