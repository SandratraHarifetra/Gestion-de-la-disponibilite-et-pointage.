<nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
  <a class="navbar-brand col-md-3 col-lg-2 mr-0 px-3" href="#">INFOCENTRE</a>
  <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-toggle="collapse" data-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  
  <ul class="navbar-nav px-3">
    <%@ page import="gestion.User"  %>
	<% if(session.getAttribute("user")==null){ %>
	<li class="nav-item text-nowrap">
	<a class="nav-link" href="Connexion.jsp">Se connecter</a>
	</li>
	<%}else{
		User user= (User)session.getAttribute("user");	
	%>
	<a class="nav-link">Bonjour <%=user.getEmail() %> !</a>
	<a class="nav-link" href="Logout">Se deconnecter</a>
	<%}%>
      
    </li>
  </ul>
</nav>