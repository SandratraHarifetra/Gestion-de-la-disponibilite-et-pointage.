package login;

import gestion.Connexion;
import gestion.User;

import java.sql.*;

import gestion.DBConnexion;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.logging.Level;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.istack.internal.logging.Logger;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.getServletContext().getRequestDispatcher("navbar.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try{
			String Email = request.getParameter("email");
			String Password = request.getParameter("password");
			Connection con = DBConnexion.GetConnexion();
			String requete = "SELECT * FROM utilisateur WHERE email=? AND password=?";
			
			PreparedStatement prepState = con.prepareStatement(requete);
			prepState.setString(1, Email);
			prepState.setString(2, Password);
			ResultSet resultat = (ResultSet) prepState.executeQuery();
			if(resultat.next()){
				//int id, String email, String role, String password

				User user=new User(resultat.getInt("Id"), resultat.getString("Email"), resultat.getString("Role"), resultat.getString("Password"), resultat.getString("Matricule"), resultat.getString("Nom"), resultat.getString("Prenoms"), resultat.getString("ElementConstitutive"), resultat.getString("Niveau"), resultat.getString("Contact"));
				
				request.getSession().setAttribute("user", user);
				
				request.getRequestDispatcher("index.jsp").forward(request, response);
				
			}else{
				request.setAttribute("msg", "Erreur d'identification ");
				request.setAttribute("typemsg", "erreur");
				request.getRequestDispatcher("Connexion.jsp").forward(request, response);
				
			}
			
			


		}
		catch(Exception ex){
			System.out.println("Misy diso ao ambony ao");
			//Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
		}
		
		
//		
//		String Email = request.getParameter("email");
//		String Password = request.getParameter("password");
//		
//		HttpSession session = request.getSession();
//		session.setAttribute("Email", Email);
//		this.getServletContext().getRequestDispatcher("navbar.jsp").forward(request, response);
//		
	}

}
