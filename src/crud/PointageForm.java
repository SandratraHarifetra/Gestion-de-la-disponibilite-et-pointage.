package crud;

import gestion.DBConnexion;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PointageForm
 */
@WebServlet("/PointageForm")
public class PointageForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PointageForm() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Date date= new Date();
		System.out.println(date);
		try{
		Connection con = DBConnexion.GetConnexion();
		System.out.println("1");
		String requete = "INSERT INTO pointage VALUES(NULL,'2023-07-04','17:01:04','17:01:04','17:01:04','17:01:04')";
		System.out.println("2");
		PreparedStatement prepState = con.prepareStatement(requete);
		System.out.println("3");
		prepState.executeUpdate();
		System.out.println("Ajoute");
		request.getRequestDispatcher("Pointage.jsp").forward(request, response);
		}
		catch(Exception ex){
			System.out.println("Misy diso ao ambony ao");
			//Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
		}
		
	}

}
