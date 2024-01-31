<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   
    <%@ page import="gestion.User"  %>
    <%@ page import="gestion.DBConnexion"  %>
    <%@ page import="java.sql.*"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
  	<title>Fiche de pointage</title>
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
			<%User user= (User)session.getAttribute("user");%>
			<% if(user.getRole().equals("admin")){ %>
					      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3">
					        <h1 class="h2">Fiche de pointages</h1>
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
				              <th>Nom</th>
				              <th>Date</th>
				              <th>Entree Matin</th>
				              <th>Sortie Matin</th>
				              <th>Entree Après-Midi</th>
				              <th>Sortie Après-Midi</th>
				            </tr>
				          </thead>
				          <tbody>
<% 
				    	try{
				    	Connection con= DBConnexion.GetConnexion();
				      	ResultSet rs= (ResultSet) con.createStatement().executeQuery("SELECT * FROM pointage");      	
				      	%>
				          		<%
				          		while(rs.next()){
				          		%>
				          	<tr>
				              <td><%=rs.getString(2) %></td>
				              <td><%=rs.getString(3)%></td>
				              <td><%=rs.getString(4)%></td>			 
				              <td><%=rs.getString(5) %></td>
				              <td><%=rs.getString(6) %></td>
				              <td><%=rs.getString(7) %></td>

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
				 <%}else if(user.getRole().equals("prof")){%>
				 		<div class="d-flex justify-content-center">
				 			<div class="col-md-8 order-md-1">
				 				<h4 class="mb-3 mt-5 text-center">Matin</h4>
							    <hr class="mb-4">
							    
							    <form action="PointageForm" method="POST">
								<div class="row">
								          <div class="col-md-6 mb-3 d-flex justify-content-center">
												<button type="submit" id="MEntrant" name="MEntrant" class="btn btn-primary" >Entrant</button>
								          </div>
								          <div class="col-md-6 mb-3 d-flex justify-content-center">
												<button type="submit" name="MSortant"  class="btn btn-success">Sortant</button>
								          </div>
		
						        </div>
							    
							    <h4 class="mb-3 mt-5 text-center">Après-Midi</h4>
							    <hr class="mb-4">
								<div class="row">
								          <div class="col-md-6 mb-3 d-flex justify-content-center">
												<button type="submit" name="AEntrant" class="btn btn-primary" >Entrant</button>
								          </div>
								          <div class="col-md-6 mb-3 d-flex justify-content-center">
												<button type="submit" name="ASortant" class="btn btn-success">Sortant</button>
								          </div>
								</div>
								</form>
								          
					<div class="table-responsive mt-5">
				        <table class="table table-striped table-sm">
				          <thead>
				            <tr>
				              <th>Nom</th>
				              <th>Date</th>
				              <th>Entree Matin</th>
				              <th>Sortie Matin</th>
				              <th>Entree Après-Midi</th>
				              <th>Sortie Après-Midi</th>
				            </tr>
				          </thead>
				          <tbody>
				            <tr>
				              <td>Harifetra</td>
				              <td>12-07-23</td>
				              <td>8:00 AM</td>
				              <td>12:00 AM</td>
				              <td>1:00 PM</td>
				              <td>5:00 PM</td>
				            </tr>



				          </tbody>
				        </table>
				      </div>
		
						        </div>
							</div>
        					
						</div>
				<%}%>
			</div>
		</div>

    <script src="Ressources/js/jquery.min.js"></script>
    <script src="Ressources/js/popper.js"></script>
    <script src="Ressources/js/bootstrap.min.js"></script>
    <script src="Ressources/js/main.js"></script>
  </body>
</html>