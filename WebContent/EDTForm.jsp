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
			<% if(user.getRole().equals("admin")){ %>
			        <h2 class="mb-4">Génération d'une emploi du temps</h2>
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
						<div class="btn-group d-flex justify-content-center" >
				        <button class="btn btn-primary btn-lg" type="submit">Enregistrer</button>
				        <button class="btn btn-danger btn-lg" type="submit">Annuler</button>
				        </div>
				      </form>
				   </div>
    
    <!-- 			        FORM -->
    				</div>
    				<%}else{%>
    								<% if(request.getAttribute("msg")!=null) {%>
											<div class="text-center alert alert-<%=request.getAttribute("typemsg").toString().equals("erreur") ? "danger" : "success"%> role=alert">
									<%= request.getAttribute("msg") %>
											</div>
									<% }%>
    				<form action="DisponibiliteForm" method="POST">
					<div class="row">
					          <div class="col-md-6 mb-3">
					            <label for="firstName">Enseignant : </label>
					            <input type="text" name="enseignant" class="form-control" id="firstName" placeholder="" value="" required="">
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
									  	<input name="_7_8_AM_Lundi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_7_8_AM_Mardi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_7_8_AM_Mercredi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_7_8_AM_Jeudi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_7_8_AM_Vendredi" class="form-check-input" value="defaultCheck1" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_7_8_AM_Samedi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>
						    </tr>
						    <tr>
						      <th scope="row">8 - 9 AM</th>
				
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_8_9_AM_Lundi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_8_9_AM_Mardi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_8_9_AM_Mercredi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_8_9_AM_Jeudi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_8_9_AM_Vendredi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>
								<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_8_9_AM_Samedi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>
						      
						      
						    </tr>
						    <tr>
						      <th scope="row">9 - 10 AM</th>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_9_10_AM_Lundi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_9_10_AM_Mardi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_9_10_AM_Mercredi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_9_10_AM_Jeudi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_9_10_AM_Vendredi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_9_10_AM_Samedi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>
						    </tr>
						    <tr>
						      <th scope="row">10 - 11 AM</th>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_10_11_AM_Lundi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_10_11_AM_Mardi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_10_11_AM_Mercredi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_10_11_AM_Jeudi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_10_11_AM_Vendredi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_10_11_AM_Samedi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>
						      
						      
						    </tr>
						    <tr>
						      <th scope="row">11 - 12 AM</th>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_11_12_AM_Lundi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_11_12_AM_Mardi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_11_12_AM_Mercredi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_11_12_AM_Jeudi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_11_12_AM_Vendredi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_11_12_AM_Samedi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
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
									  	<input name="_1_2_PM_Lundi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_1_2_PM_Mardi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_1_2_PM_Mercredi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_1_2_PM_Jeudi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_1_2_PM_Vendredi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_1_2_PM_Samedi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>	      
						    </tr>
						    <tr>
						      <th scope="row">2 - 3 PM</th>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_2_3_PM_Lundi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_2_3_PM_Mardi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_2_3_PM_Mercredi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_2_3_PM_Jeudi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_2_3_PM_Vendredi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_2_3_PM_Samedi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>		      
						    </tr>
						    <tr>
						      <th scope="row">3 - 4 PM</th>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_3_4_PM_Lundi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_3_4_PM_Mardi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_3_4_PM_Mercredi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_3_4_PM_Jeudi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_3_4_PM_Vendredi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_3_4_PM_Samedi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>      
						    </tr>
						    <tr>
						      <th scope="row">4 - 5 PM</th>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_4_5_PM_Lundi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_4_5_PM_Mardi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_4_5_PM_Mercredi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_4_5_PM_Jeudi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_4_5_PM_Vendredi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input name="_4_5_PM_Samedi" class="form-check-input" type="checkbox" id="defaultCheck1">	  
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
					<%}%>
			</div>
		</div>

    <script src="Ressources/js/jquery.min.js"></script>
    <script src="Ressources/js/popper.js"></script>
    <script src="Ressources/js/bootstrap.min.js"></script>
    <script src="Ressources/js/main.js"></script>
  </body>
</html>