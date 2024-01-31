<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="gestion.User"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
  	<title>Emploi du temps</title>
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
			<% if(session.getAttribute("user")==null){ %>
					<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3">
					        <h1 class="h2">Emploi du temps</h1>
						        <div class="btn-toolbar mb-2 mb-md-0 justifi">
						        	<div>
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
							            </select>
									</div>

						        </div>
						</div>
						<table class="table">
						  <thead class="table-primary">
						    <tr>
						      <th scope="col">Horaires</th>
						      <th scope="col">Lundi</th>
						      <th scope="col">Mardi</th>
						      <th scope="col">Mercredi</th>
						      <th scope="col">Jeudi</th>
						      <th scope="col">Vendredi</th>
						      <th scope="col">Samedi</th>
						    </tr>
						  </thead>
						  <tbody>
						    <tr>
						      <th scope="row">7 - 8 AM</th>
						      <td>Annimations pstorales</td>
						      <td>Algorithme</td>
						      <td>PostgreSQL</td>
						      <td>MySQL</td>
						      <td>Oracle</td>
						      <td>Recherche personel</td>
						    </tr>
						    <tr>
						      <th scope="row">8 - 9 AM</th>
						      <td>Annimations pstorales</td>
						      <td>Algorithme</td>
						      <td>PostgreSQL</td>
						      <td>Algorithme</td>
						      <td>PostegreSQL</td>
						      <td>Recherche</td>
						      
						      
						    </tr>
						    <tr>
						      <th scope="row">9 - 10 AM</th>
						      <td>Annimations pstorales</td>
						      <td>Comptabilité</td>
						      <td>IHM</td>
						      <td>Algorithme</td>
						      <td>PostegreSQL</td>
						      <td>Recherche</td>
						    </tr>
						    <tr>
						      <th scope="row">10 - 11 AM</th>
						      <td>Annimations pstorales</td>
						      <td>Comptabilité</td>
						      <td>IHM</td>
						      <td>Algorithme</td>
						      <td>PostegreSQL</td>
						      <td>Recherche</td>
						      
						      
						    </tr>
						    <tr>
						      <th scope="row">11 - 12 AM</th>
						      <td>Annimations pstorales</td>
						      <td>Comptabilité</td>
						      <td>IHM</td>
						      <td>Algorithme</td>
						      <td>PostegreSQL</td>
						      <td>Recherche</td>
						      
						      
						    </tr>
						    <tr>
						    	<th colspan="7" class="text-center table-primary">Après-Midi</th>
						    </tr>
						    <tr>
						      <th scope="row">1 - 2 PM</th>
						      <td>Annimations pstorales</td>
						      <td>Comptabilité</td>
						      <td>IHM</td>
						      <td>Algorithme</td>
						      <td>PostegreSQL</td>
						      <td>Recherche</td>	      
						    </tr>
						    <tr>
						      <th scope="row">2 - 3 PM</th>
						      <td>Annimations pstorales</td>
						      <td>Comptabilité</td>
						      <td>IHM</td>
						      <td>Algorithme</td>
						      <td>PostegreSQL</td>
						      <td>Recherche</td>		      
						    </tr>
						    <tr>
						      <th scope="row">3 - 4 PM</th>
						      <td>Annimations pstorales</td>
						      <td>Comptabilité</td>
						      <td>IHM</td>
						      <td>Algorithme</td>
						      <td>PostegreSQL</td>
						      <td>Recherche</td>	      
						    </tr>
						    <tr>
						      <th scope="row">4 - 5 PM</th>
						      <td>Annimations pstorales</td>
						      <td>Comptabilité</td>
						      <td>IHM</td>
						      <td>Algorithme</td>
						      <td>PostegreSQL</td>
						      <td>Recherche</td>		      
						    </tr>

						  </tbody>
						</table>
						</div>
			
			
			<%}else{%>
					<% if((user.getRole().equals("admin")) && session.getAttribute("user")!=null){ %>
			        
			        <h2 class="mb-4">Génération d'une emploi du temps</h2>
			        <div class="d-flex justify-content-center">
			        <div>
			            			<% if(request.getAttribute("msg")!=null) {%>
											<div class="text-center alert alert-<%=request.getAttribute("typemsg").toString().equals("erreur") ? "danger" : "success"%> role=alert">
									<%= request.getAttribute("msg") %>
											</div>
									<% }%>
			        
	<!-- 			        FORM -->
 
					<form action="EDTFORM" method="POST">
					<div class="row">
					          <div class="col-md-6 mb-3">
					            <label for="firstName">Niveau : </label>
					            <input type="text" name="niveau" class="form-control" id="firstName" placeholder="" value="" required="">
					          </div>
					          <div class="col-md-6 mb-3">
					            <label for="lastName">Semaine de : </label>
					            <input type="date" name="semaine" class="form-control" id="lastName" placeholder="" value="" required="">
					          </div>
					</div>
						<table class="table mt-4">
						  <thead class="table-primary">
						    <tr>
						      <th scope="col">Horaires</th>
						      <th scope="col">Lundi</th>
						      <th scope="col">Mardi</th>
						      <th scope="col">Mercredi</th>
						      <th scope="col">Jeudi</th>
						      <th scope="col">Vendredi</th>
						      <th scope="col">Samedi</th>
						    </tr>
						  </thead>
						  <tbody>
						  
						    <tr>
						      <th scope="row">7 - 8 AM</th>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_7_8_AM_Lundi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_7_8_AM_Mardi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_7_8_AM_Mercredi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_7_8_AM_Jeudi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_7_8_AM_Vendredi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_7_8_AM_Samedi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
						    </tr>
						    <tr>
						      <th scope="row">8 - 9 AM</th>
				
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_8_9_AM_Lundi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_8_9_AM_Mardi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_8_9_AM_Mercredi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_8_9_AM_Jeudi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_8_9_AM_Vendredi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
								<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_8_9_AM_Samedi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
						      
						      
						    </tr>
						    <tr>
						      <th scope="row">9 - 10 AM</th>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_9_10_AM_Lundi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_9_10_AM_Mardi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_9_10_AM_Mercredi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_9_10_AM_Jeudi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_9_10_AM_Vendredi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_9_10_AM_Samedi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
						    </tr>
						    <tr>
						      <th scope="row">10 - 11 AM</th>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_10_11_AM_Lundi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_10_11_AM_Mardi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_10_11_AM_Mercredi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_10_11_AM_Jeudi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_10_11_AM_Vendredi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_10_11_AM_Samedi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
						      
						      
						    </tr>
						    <tr>
						      <th scope="row">11 - 12 AM</th>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_11_12_AM_Lundi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_11_12_AM_Mardi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_11_12_AM_Mercredi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_11_12_AM_Jeudi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_11_12_AM_Vendredi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_11_12_AM_Samedi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
						      
						      
						    </tr>
						    <tr>
						    	<th colspan="7" class="text-center table-primary">Après-Midi</th>
						    </tr>
						    <tr>
						      <th scope="row">1 - 2 PM</th>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_1_2_PM_Lundi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_1_2_PM_Mardi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_1_2_PM_Mercredi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_1_2_PM_Jeudi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_1_2_PM_Vendredi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_1_2_PM_Samedi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>	      
						    </tr>
						    <tr>
						      <th scope="row">2 - 3 PM</th>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_2_3_PM_Lundi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_2_3_PM_Mardi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_2_3_PM_Mercredi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_2_3_PM_Jeudi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_2_3_PM_Vendredi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_2_3_PM_Samedi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>		      
						    </tr>
						    <tr>
						      <th scope="row">3 - 4 PM</th>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_3_4_PM_Lundi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_3_4_PM_Mardi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_3_4_PM_Mercredi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_3_4_PM_Jeudi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_3_4_PM_Vendredi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_3_4_PM_Samedi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>      
						    </tr>
						    <tr>
						      <th scope="row">4 - 5 PM</th>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_4_5_PM_Lundi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_4_5_PM_Mardi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_4_5_PM_Mercredi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_4_5_PM_Jeudi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_4_5_PM_Vendredi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_4_5_PM_Samedi" class="form-control" type="text" id="defaultCheck1">	  
									</div>
								</td>		      
						    </tr>

						  </tbody>
						</table>
						
						
							<div class="btn-group">
								<button class="btn btn-primary" >Envoyer</button>
								<button class="btn btn-danger" >Annuler</button>
							</div>
						</form>
				   </div>
    
    <!-- 			        FORM -->
    				</div>
    				<%}else if (user.getRole().equals("prof")){%>
						    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3">
					        <h1 class="h2">Emploi du temps</h1>
						        <div class="btn-toolbar mb-2 mb-md-0 justifi">
						        	<div>
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
							            </select>
									</div>
							          <div class="btn-group mr-2">
								            <a href="EDTForm.jsp" type="button" class="btn btn-sm btn-outline-secondary">Ajouter mes disponibilités</a>
							          </div>
						        </div>
						</div>
						<table class="table">
						  <thead class="table-primary">
						    <tr>
						      <th scope="col">Horaires</th>
						      <th scope="col">Lundi</th>
						      <th scope="col">Mardi</th>
						      <th scope="col">Mercredi</th>
						      <th scope="col">Jeudi</th>
						      <th scope="col">Vendredi</th>
						      <th scope="col">Samedi</th>
						    </tr>
						  </thead>
						  <tbody>
						    <tr>
						      <th scope="row">7 - 8 AM</th>
						      <td>Annimations pstorales</td>
						      <td>Comptabilité</td>
						      <td>IHM</td>
						      <td>Algorithme</td>
						      <td>PostegreSQL</td>
						      <td>Recherche</td>
						    </tr>
						    <tr>
						      <th scope="row">8 - 9 AM</th>
						      <td>Annimations pstorales</td>
						      <td>Comptabilité</td>
						      <td>IHM</td>
						      <td>Algorithme</td>
						      <td>PostegreSQL</td>
						      <td>Recherche</td>
						      
						      
						    </tr>
						    <tr>
						      <th scope="row">9 - 10 AM</th>
						      <td>Annimations pstorales</td>
						      <td>Comptabilité</td>
						      <td>IHM</td>
						      <td>Algorithme</td>
						      <td>PostegreSQL</td>
						      <td>Recherche</td>
						    </tr>
						    <tr>
						      <th scope="row">10 - 11 AM</th>
						      <td>Annimations pstorales</td>
						      <td>Comptabilité</td>
						      <td>IHM</td>
						      <td>Algorithme</td>
						      <td>PostegreSQL</td>
						      <td>Recherche</td>
						      
						      
						    </tr>
						    <tr>
						      <th scope="row">11 - 12 AM</th>
						      <td>Annimations pstorales</td>
						      <td>Comptabilité</td>
						      <td>IHM</td>
						      <td>Algorithme</td>
						      <td>PostegreSQL</td>
						      <td>Recherche</td>
						      
						      
						    </tr>
						    <tr>
						    	<th colspan="7" class="text-center table-primary">Après-Midi</th>
						    </tr>
						    <tr>
						      <th scope="row">1 - 2 PM</th>
						      <td>Annimations pstorales</td>
						      <td>Comptabilité</td>
						      <td>IHM</td>
						      <td>Algorithme</td>
						      <td>PostegreSQL</td>
						      <td>Recherche</td>	      
						    </tr>
						    <tr>
						      <th scope="row">2 - 3 PM</th>
						      <td>Annimations pstorales</td>
						      <td>Comptabilité</td>
						      <td>IHM</td>
						      <td>Algorithme</td>
						      <td>PostegreSQL</td>
						      <td>Recherche</td>		      
						    </tr>
						    <tr>
						      <th scope="row">3 - 4 PM</th>
						      <td>Annimations pstorales</td>
						      <td>Comptabilité</td>
						      <td>IHM</td>
						      <td>Algorithme</td>
						      <td>PostegreSQL</td>
						      <td>Recherche</td>	      
						    </tr>
						    <tr>
						      <th scope="row">4 - 5 PM</th>
						      <td>Annimations pstorales</td>
						      <td>Comptabilité</td>
						      <td>IHM</td>
						      <td>Algorithme</td>
						      <td>PostegreSQL</td>
						      <td>Recherche</td>		      
						    </tr>

						  </tbody>
						</table>
						</div>
					<%}%>
			
			<% } %>
			
			
			</div>
		</div>
		</div>
		</div>

    <script src="Ressources/js/jquery.min.js"></script>
    <script src="Ressources/js/popper.js"></script>
    <script src="Ressources/js/bootstrap.min.js"></script>
    <script src="Ressources/js/main.js"></script>
  </body>
</html>