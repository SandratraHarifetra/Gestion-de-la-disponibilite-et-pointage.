<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
  	<title>Accueil</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="Ressources/css/style.css">
	<link href="Ressources/loginStyle.css" rel="stylesheet">
	<link href="Ressources/bootstrap.min.css" rel="stylesheet">
  </head>
  <body>
		
		<div class="wrapper d-flex align-items-stretch">
			<%@include file="SideBar.jsp" %>
        	<!-- Page Content  -->
			<div id="content" class="p-4 p-md-5 pt-5">
					<form class="form-signin mt-5" action="Login" method="post">
							  <h1 class="h3 mb-3 font-weight-normal">Authentification</h1>
									<% if(request.getAttribute("msg")!=null) {%>
											<div class="alert alert-<%=request.getAttribute("typemsg").toString().equals("erreur") ? "danger" : "primary"%> role=alert">
									<%= request.getAttribute("msg") %>
											</div>
									<% }%>
							  <label for="inputEmail" class="sr-only">Adresse email</label>
							  <input type="email" name="email" id="inputEmail" class="form-control" placeholder="Votre email" required autofocus>
							  <label for="inputPassword" class="sr-only">Password</label>
							  <input type="password" name="password" id="inputPassword" class="form-control mt-3" placeholder="Votre mot de passe" required>
							  <div class="checkbox mb-3">
								<label>
								  <input type="checkbox" value="remember-me"> Enregistre moi
								</label>
							  </div>
							  <button class="btn btn-lg btn-primary btn-block" type="submit">Se connecter</button>
							  <p class="mt-5 mb-3 text-muted">&copy;Année 2023</p>
					</form>
			</div>
		</div>

    <script src="Ressources/js/jquery.min.js"></script>
    <script src="Ressources/js/popper.js"></script>
    <script src="Ressources/js/bootstrap.min.js"></script>
    <script src="Ressources/js/main.js"></script>
  </body>
</html>