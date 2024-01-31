<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="gestion.User"  %>
    <%@ page import="gestion.DBConnexion"  %>
    <%@ page import="java.sql.*"  %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
  	<title>Les enseignants</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="Ressources/css/style.css">
	<link rel="stylesheet" href="Ressources/css/bootstrap.min.css">
  </head>
  <body>
		
		<div class="wrapper d-flex align-items-stretch">
			<%@include file="SideBar.jsp" %>
        	<!-- Page Content  -->
			<div id="content" class="p-4 p-md-5 pt-5">
					      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3">
					        <h1 class="h2">Liste des enseignants</h1>
						        <div class="btn-toolbar mb-2 mb-md-0">
							          <div class="btn-group mr-2">
								            <button type="button" class="btn btn-sm btn-outline-secondary">Exporter</button>
							          </div>
						        </div>
					      </div>
			        
				      <div class="table-responsive">

				        <table class="table table-striped table-sm">
				          <thead>
				            <tr>
				              <th>Matricule</th>
				              <th>Nom</th>
				              <th>Email</th>
				              <th>Contact</th>
				              <th>Elements Constitutives</th>
				              <th>Niveau</th>
				              <th>Action</th>
				              
				            </tr>
				          </thead>
				          <tbody>
				    	<% 
				    	try{
				    	Connection con= DBConnexion.GetConnexion();
				      	ResultSet rs= (ResultSet) con.createStatement().executeQuery("SELECT * from utilisateur");      	
				      	%>
				          		<%
				          		while(rs.next()){
				          		%>
				          							              <tr>
				              <td><%=rs.getInt(2) %></td>
				              <td><%=rs.getString(3) +" "+ rs.getString(4)%></td>
				 
				              <td><%=rs.getString(7) %></td>
				              <td><%=rs.getString(8) %></td>
				              <td><%=rs.getString(5) %></td>
				              <td><%=rs.getString(6) %></td>
				              
				              <td><a href="">Voir son profil</a></td>
				            </tr>
				          		<% }
				          			rs.close();
				          			con.close();
				    	}catch(Exception e){
				    		System.out.println("Erreur : " + e);
				    	}
				          		%>
				          	
				  

				          </tbody>
				        </table>
				      </div>
			</div>
		</div>

    <script src="Ressources/js/jquery.min.js"></script>
    <script src="Ressources/js/popper.js"></script>
    <script src="Ressources/js/bootstrap.min.js"></script>
    <script src="Ressources/js/main.js"></script>
  </body>
</html>