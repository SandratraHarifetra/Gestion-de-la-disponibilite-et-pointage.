<%@ page import="gestion.User"  %>
	<link rel="stylesheet" href="Ressources/fontawesome/css/all.css">
	<script href="Ressources/fontawesome/js/all.js"></script>
	
	<nav id="sidebar">
		<div class="custom-menu">
					<button type="button" id="sidebarCollapse" class="btn btn-primary">
	          <i class="fa fa-bars"></i>
	          <span class="sr-only">Toggle Menu</span>
	        </button>
        </div>
	  		<h1><a href="index.html" class="logo text-center">INFOCENTRE</a></h1>
        <ul class="list-unstyled components mb-5">
            <% if(session.getAttribute("user")==null){ %>
		          <li>
		            <a href="EDT.jsp"><span class="fa fa-calendar-days mr-3"></span> Emploi du temps</a>
		          </li>
			<%}else{ User user= (User)session.getAttribute("user");%>
							<li>
									<a href="MonProfil.jsp" ><span class="fa fa-user mr-3"></span> <%=user.getEmail() %> </a>
			 				</li>
			 		<% if(user.getRole().equals("admin")){ %>
					          <li>
					            	<a href="EDT.jsp"><span class="fa fa-calendar-days mr-3"></span> Emploi du temps</a>
					          </li>
					          <li>
					            	<a href="Enseignants.jsp"><span class="fa fa-users   mr-3"></span> Listes des profs</a>
					          </li>
					          <li>
					              	<a href="Pointage.jsp"><span class="fa fa-bullseye mr-3"></span> Listes des pointages</a>
					          </li>
					          <li>
					            	<a href="Disponibilites.jsp"><span class="fa fa-calendar-check"></span> Listes des disponibilités</a>
					          </li>      
          			<%}else if(user.getRole().equals("prof")){%>
          					  <li>
		            				<a href="EDT.jsp"><span class="fa fa-calendar-days mr-3"></span> Emploi du temps</a>
		          			  </li>
					          <li>
					            	<a href="EDTForm.jsp"><span class="fa fa-calendar-check"></span> Mes disponibilités</a>
					          </li>
					          <li>
					            	<a href="Pointage.jsp"><span class="fa fa-bullseye mr-3"></span> Mes pointages</a>
					          </li>
					 <%}else{%>
					 		  <li>
		            				<a href="EDT.jsp"><span class="fa fa-calendar-days mr-3"></span> Emploi du temps</a>
		          			  </li>
					<%}%>
			<%}%>
	      <% if(session.getAttribute("user")==null){ %>
				<li>
				<a href="Connexion.jsp"><span class="fa fa-sign-in mr-3"></span> Se connecter</a>
				</li>
		  <%}else{
					User user= (User)session.getAttribute("user");	
		  %>
		  <li>
            <a href="Logout"><span class="fa fa-sign-out mr-3"></span> Se deconnecter </a>
          </li>

		   <%}%>
		   
        </ul>

    	</nav>