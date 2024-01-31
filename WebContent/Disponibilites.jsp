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
			<%User user= (User)session.getAttribute("user");%>
			<% if(user.getRole().equals("admin")){ %>
					  <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3">
					        <h1 class="h2">Liste des demandes de disponibilité</h1>
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
				              <th>Date de demande</th>
				              <th>Semaine de</th>
				              <th>Actions</th>
				            </tr>
				          </thead>
				          <tbody>
				            <% 
				    	try{
				    	Connection con= DBConnexion.GetConnexion();
				      	ResultSet rs= (ResultSet) con.createStatement().executeQuery("SELECT * from disponibilites ORDER BY DateDemande");      	
				      	%>
				          		<%
				          		while(rs.next()){
				          		%>
				          							              <tr>
				              <td><%=rs.getString(2) %></td>
				              <td><%=rs.getString(3)%></td>
				              <td><%=rs.getString(4)%></td>
				              <td>
				              <form method="post" action="VoirDisponibilites">
				              	<input type="hidden" name="test" id="test" value="<%=rs.getString(1) %>">
				              	<button class="btn btn-primary" type="submit">Voir les details</button>
				              </form>
				              		
				              </td>
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
				<h2 class="mb-4">Mes disponibilités</h2>
			        <div class="d-flex justify-content-center">
			        <div class="col-md-8 order-md-1">
			        
	<!-- 			        FORM -->
 
				      <form class="needs-validation" novalidate="">
				
				          <div class="mb-3">
				            <label for="country">Niveau</label>
				            <select class="custom-select d-block w-100" id="country" required="">
				              <option value="">Choisir le niveau...</option>
				              <option></option>
				              <option>L1 - Gestion</option>
				              <option>L1 - Informatique</option>
				         	  <option>L2 - Gestion</option>
				              <option>L2 - Informatique</option>
				              <option>L3 - Gestion - AE</option>
				              <option>L3 - Gestion - CF</option>
				              <option>L3 - Informatique - ASR</option>
				              <option>L3 - Informatique - DAI</option>
				              
				              <option></option>
				            </select>
				            <div class="invalid-feedback">
				              Ne peut pas être vide
				            </div>
				          </div>
				
				          <div class="mb-3">
				            <label for="country">Element Constitutive(EC)</label>
				            <select class="custom-select d-block w-100" id="country" required="">
				              <option value="">Choisir une element constitutive...</option>
				              <option>Comptabilité</option>
				              <option>IHM</option>
				              <option>Algorithme</option>
				            </select>
				            <div class="invalid-feedback">
				              Ne peut pas être vide
				            </div>
				          </div>
				
				
				        <div class="row">
				          <div class="col-md-6 mb-3">
				            <label for="country">Jour</label>
				            <select class="custom-select d-block w-100" id="country" required="">
				              <option value="">Choisir le jour...</option>
				              <option>Lundi</option>
				              <option>Mardi</option>
				              <option>Mercredi</option>
				              <option>Jeudi</option>
				              <option>Vendredi</option>
				              <option>Samedi</option>
				            </select>
				            <div class="invalid-feedback">
				              Ne peut pas être vide
				            </div>
				          </div>
				          <div class="col-md-6 mb-3">
				            <label for="state">Horaire</label>
				            <select class="custom-select d-block w-100" id="state" required="">
				              <option value="">Choisir l'horaire...</option>
				              <option>7h - 8h</option>
				            </select>
				            <div class="invalid-feedback">
				              Ne peut pas être vide
				            </div>
				          </div>

				        </div>

				        <hr class="mb-4">
						<div class="btn-group d-flex justify-content-around" >
				        <button class="btn btn-primary btn-lg" type="submit">Envoyer</button>
				        <button class="btn btn-danger btn-lg" type="submit">Annuler</button>
				        </div>
				      </form>
				   </div>
    
    <!-- 			        FORM -->
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