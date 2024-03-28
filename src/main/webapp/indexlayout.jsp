<%@taglib prefix="t" tagdir="webapp/WEB-INF/tags" %>
<%@page import="jsp_Projet_pizza.Dbconnect"%>
<%@page import="java.sql.*"%>
<%@ page import="jsp_Projet_pizza.Pizza" %>
<%@ page import="jsp_Projet_pizza.PizzaDAO" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"     pageEncoding="ISO-8859-1"%>

 <c:set var="bodyContent">
 <div class="container">
  <h2>Liste des Pizzas dao</h2>

  <div class="row">
           <% 
            for ( Pizza unePizza :PizzaDAO.getAllPizzas())
            {
            %>
			<div class="col-md-4 col-sm-6 col-xs-10">
		      <div class="thumbnail" >
		          <img src="images/<%=unePizza.getNropizza()%>.jpg" class="zoom" alt="Lights" style="width:100%; height:70%">
		          <div class="caption" style="text-align: center;">
		          <p> <b>Le titre : <%=unePizza.getNompizza() %> </b> </p>
		          <p> Tarif : <%=unePizza.getPrixpizza() %> euros </p>
		          <p style="text-align: left;"> blablabla la description </p>
		        </div>
		        <input class="button" type="button" value="Modifier" style="position: relative;">
		          <a class="btn btn-primary  "  href="onepizza.jsp?numpizza=<%=unePizza.getNropizza()%>"  >Editer la pizza</a>
		         <a class="btn btn-primary btn-warning  "  href="modifonepizza3.jsp?numpizza=<%=unePizza.getNropizza()%>"  >Modifier la pizza</a>
		         </div>
		     <p style="border-bottom:3px solid black; position: relative; top: -20px;"></p>
		    </div>

		<% 
            }
            %>
		
	 
  
</div>  
</div>
 
 </c:set>
 
 
 <t:simple_layout title="My page">
 
 
 <jsp:attribute name="head_area">

  <script>
    function hello() {
        alert("Hello World");
    }
  </script>
</jsp:attribute>
<jsp:attribute name="body_area">

    ${bodyContent}
</jsp:attribute>
</t:simple_layout>
 