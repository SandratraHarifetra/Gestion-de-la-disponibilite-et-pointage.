package crud;

import gestion.DBConnexion;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class VoirDisponibilites
 */
@WebServlet("/VoirDisponibilites")
public class VoirDisponibilites extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VoirDisponibilites() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String test = request.getParameter("test");
		System.out.println(test);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		
		try{
			String Id = request.getParameter("test");
			Connection con = DBConnexion.GetConnexion();
			String requete = "SELECT * FROM disponibilites WHERE Id=?";
			
			PreparedStatement prepState = con.prepareStatement(requete);
			prepState.setString(1, Id);
			ResultSet resultat = (ResultSet) prepState.executeQuery();
			System.out.println(resultat);
			System.out.println("mandeha ilay requete");
			HttpSession session = request.getSession(true);
			session.setAttribute("resultat", resultat);
			response.sendRedirect("VoirDisponibilite.jsp");
			
			
		}catch(Exception e){
			System.out.println("ERREUR : " + e);
			
		}
	}

}
