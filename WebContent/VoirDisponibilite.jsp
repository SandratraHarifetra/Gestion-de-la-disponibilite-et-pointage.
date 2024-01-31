<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
	<%@ page import="java.text.*" %>
	<%@ page import="java.sql.*" %>
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
	<%
	System.out.println(session);
	if(session.getAttribute("resultat")==null){
		System.out.println("Tsisy valiny");
	}
	else{
		System.out.println("Misy valiny");
	}
	
	ResultSet resultat = (ResultSet)session.getAttribute("resultat");
	%>
	<table class="table mt-4">
						

				
	<% while(resultat.next()){ %>
			<h2 class="text-center">Les disponibilitées de <a href=""><%=resultat.getString(2) %></a> durant la semaine de <a href=""><%=resultat.getString(3) %></a></h2>

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
									  	<input <% if((resultat.getString(5))!=null){%>checked<%}%> name="_7_8_AM_Lundi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(14))!=null){%>checked<%}%> name="_7_8_AM_Mardi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(23))!=null){%>checked<%}%> name="_7_8_AM_Mercredi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(32))!=null){%>checked<%}%> name="_7_8_AM_Jeudi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(41))!=null){%>checked<%}%> name="_7_8_AM_Vendredi" class="form-check-input" value="defaultCheck1" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(50))!=null){%>checked<%}%> name="_7_8_AM_Samedi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
						    </tr>
						    <tr>
						      <th scope="row">8 - 9 AM</th>
				
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(6))!=null){%>checked<%}%> name="_8_9_AM_Lundi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(15))!=null){%>checked<%}%> name="_8_9_AM_Mardi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(24))!=null){%>checked<%}%> name="_8_9_AM_Mercredi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(33))!=null){%>checked<%}%> name="_8_9_AM_Jeudi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(42))!=null){%>checked<%}%> name="_8_9_AM_Vendredi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
								<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(51))!=null){%>checked<%}%> name="_8_9_AM_Samedi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
						      
						      
						    </tr>
						    <tr>
						      <th scope="row">9 - 10 AM</th>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(7))!=null){%>checked<%}%> name="_9_10_AM_Lundi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(16))!=null){%>checked<%}%> name="_9_10_AM_Mardi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(25))!=null){%>checked<%}%> name="_9_10_AM_Mercredi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(34))!=null){%>checked<%}%> name="_9_10_AM_Jeudi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(43))!=null){%>checked<%}%> name="_9_10_AM_Vendredi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(52))!=null){%>checked<%}%> name="_9_10_AM_Samedi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
						    </tr>
						    <tr>
						      <th scope="row">10 - 11 AM</th>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(8))!=null){%>checked<%}%> name="_10_11_AM_Lundi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(17))!=null){%>checked<%}%> name="_10_11_AM_Mardi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(26))!=null){%>checked<%}%> name="_10_11_AM_Mercredi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(35))!=null){%>checked<%}%> name="_10_11_AM_Jeudi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(44))!=null){%>checked<%}%> name="_10_11_AM_Vendredi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(53))!=null){%>checked<%}%> name="_10_11_AM_Samedi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
						      
						      
						    </tr>
						    <tr>
						      <th scope="row">11 - 12 AM</th>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(9))!=null){%>checked<%}%> name="_11_12_AM_Lundi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(18))!=null){%>checked<%}%> name="_11_12_AM_Mardi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(27))!=null){%>checked<%}%> name="_11_12_AM_Mercredi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(36))!=null){%>checked<%}%> name="_11_12_AM_Jeudi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(45))!=null){%>checked<%}%> name="_11_12_AM_Vendredi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(54))!=null){%>checked<%}%> name="_11_12_AM_Samedi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
						      
						      
						    </tr>
						    <tr>
						    	<th colspan="7" class="text-center table-primary">Après-Midi</th>
						    </tr>
						    <tr>
						      <th scope="row">1 - 2 PM</th>
						      	<td>
							      	<div  class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(10))!=null){%>checked<%}%> name="_1_2_PM_Lundi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(19))!=null){%>checked<%}%> name="_1_2_PM_Mardi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(28))!=null){%>checked<%}%> name="_1_2_PM_Mercredi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(37))!=null){%>checked<%}%> name="_1_2_PM_Jeudi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(46))!=null){%>checked<%}%> name="_1_2_PM_Vendredi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(55))!=null){%>checked<%}%> name="_1_2_PM_Samedi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled> 	  
									</div>
								</td>	      
						    </tr>
						    <tr>
						      <th scope="row">2 - 3 PM</th>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(11))!=null){%>checked<%}%> name="_2_3_PM_Lundi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(20))!=null){%>checked<%}%> name="_2_3_PM_Mardi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(29))!=null){%>checked<%}%> name="_2_3_PM_Mercredi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(38))!=null){%>checked<%}%> name="_2_3_PM_Jeudi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(47))!=null){%>checked<%}%> name="_2_3_PM_Vendredi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(56))!=null){%>checked<%}%> name="_2_3_PM_Samedi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>		      
						    </tr>
						    <tr>
						      <th scope="row">3 - 4 PM</th>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(12))!=null){%>checked<%}%> name="_3_4_PM_Lundi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(21))!=null){%>checked<%}%> name="_3_4_PM_Mardi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(30))!=null){%>checked<%}%> name="_3_4_PM_Mercredi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(39))!=null){%>checked<%}%> name="_3_4_PM_Jeudi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(48))!=null){%>checked<%}%> name="_3_4_PM_Vendredi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(57))!=null){%>checked<%}%> name="_3_4_PM_Samedi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>      
						    </tr>
						    <tr>
						      <th scope="row">4 - 5 PM</th>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(13))!=null){%>checked<%}%> name="_4_5_PM_Lundi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(22))!=null){%>checked<%}%> name="_4_5_PM_Mardi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(31))!=null){%>checked<%}%> name="_4_5_PM_Mercredi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(40))!=null){%>checked<%}%> name="_4_5_PM_Jeudi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(49))!=null){%>checked<%}%> name="_4_5_PM_Vendredi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>
						      	<td>
							      	<div class="form-check d-flex justify-content-center">
									  	<input <% if((resultat.getString(58))!=null){%>checked<%}%> name="_4_5_PM_Samedi" class="form-check-input" type="checkbox" id="defaultCheck1" disabled>	  
									</div>
								</td>		      
						    </tr>

						  </tbody>
						
						

	<%} %>
	</table>
	</div>
	</div>
</body>
</html>