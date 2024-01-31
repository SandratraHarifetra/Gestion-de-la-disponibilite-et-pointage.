package crud;

import gestion.DBConnexion;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class DisponibiliteForm
 */
@WebServlet("/DisponibiliteForm")
public class DisponibiliteForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DisponibiliteForm() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		request.getRequestDispatcher("EDTForm.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try{
			String format = "yyyy-MM-dd";
			SimpleDateFormat date = new SimpleDateFormat(format);
			String now = date.format(new Date());
			System.out.println(now);
			String Enseignant = request.getParameter("enseignant");
			
			
			System.out.println(date);
			String Semaine = request.getParameter("semaine");
		// Lundi
			String Lundi1 = request.getParameter("_7_8_AM_Lundi");
			String Lundi2 = request.getParameter("_8_9_AM_Lundi");
			String Lundi3 = request.getParameter("_9_10_AM_Lundi");
			String Lundi4 = request.getParameter("_10_11_AM_Lundi");
			String Lundi5 = request.getParameter("_11_12_AM_Lundi");
			String Lundi6 = request.getParameter("_1_2_PM_Lundi");
			String Lundi7 = request.getParameter("_2_3_PM_Lundi");
			String Lundi8 = request.getParameter("_3_4_PM_Lundi");
			String Lundi9 = request.getParameter("_4_5_PM_Lundi");
		
		// Mardi
			String Mardi1 = request.getParameter("_7_8_AM_Mardi");
			String Mardi2 = request.getParameter("_8_9_AM_Mardi");
			String Mardi3 = request.getParameter("_9_10_AM_Mardi");
			String Mardi4 = request.getParameter("_10_11_AM_Mardi");
			String Mardi5 = request.getParameter("_11_12_AM_Mardi");
			String Mardi6 = request.getParameter("_1_2_PM_Mardi");
			String Mardi7 = request.getParameter("_2_3_PM_Mardi");
			String Mardi8 = request.getParameter("_3_4_PM_Mardi");
			String Mardi9 = request.getParameter("_4_5_PM_Mardi");
			

		
		// Mercredi
			String Mercredi1 = request.getParameter("_7_8_AM_Mercredi");
			String Mercredi2 = request.getParameter("_8_9_AM_Mercredi");
			String Mercredi3 = request.getParameter("_9_10_AM_Mercredi");
			String Mercredi4 = request.getParameter("_10_11_AM_Mercredi");
			String Mercredi5 = request.getParameter("_11_12_AM_Mercredi");	
			String Mercredi6 = request.getParameter("_1_2_PM_Mercredi");
			String Mercredi7 = request.getParameter("_2_3_PM_Mercredi");
			String Mercredi8 = request.getParameter("_3_4_PM_Mercredi");
			String Mercredi9 = request.getParameter("_4_5_PM_Mercredi");
	
			
		// Jeudi
			String Jeudi1 = request.getParameter("_7_8_AM_Jeudi");
			String Jeudi2 = request.getParameter("_8_9_AM_Jeudi");
			String Jeudi3 = request.getParameter("_9_10_AM_Jeudi");
			String Jeudi4 = request.getParameter("_10_11_AM_Jeudi");
			String Jeudi5 = request.getParameter("_11_12_AM_Jeudi");
			String Jeudi6 = request.getParameter("_1_2_PM_Jeudi");
			String Jeudi7 = request.getParameter("_2_3_PM_Jeudi");
			String Jeudi8 = request.getParameter("_3_4_PM_Jeudi");
			String Jeudi9 = request.getParameter("_4_5_PM_Jeudi");
		
		// Vendredi
			String Vendredi1 = request.getParameter("_7_8_AM_Vendredi");
			String Vendredi2 = request.getParameter("_8_9_AM_Vendredi");
			String Vendredi3 = request.getParameter("_9_10_AM_Vendredi");
			String Vendredi4 = request.getParameter("_10_11_AM_Vendredi");
			String Vendredi5 = request.getParameter("_11_12_AM_Vendredi");
			String Vendredi6 = request.getParameter("_1_2_PM_Vendredi");
			String Vendredi7 = request.getParameter("_2_3_PM_Vendredi");
			String Vendredi8 = request.getParameter("_3_4_PM_Vendredi");
			String Vendredi9 = request.getParameter("_4_5_PM_Vendredi");
		
		// Samedi
			String Samedi1 = request.getParameter("_7_8_AM_Samedi");
			String Samedi2 = request.getParameter("_8_9_AM_Samedi");
			String Samedi3 = request.getParameter("_9_10_AM_Samedi");
			String Samedi4 = request.getParameter("_10_11_AM_Samedi");
			String Samedi5 = request.getParameter("_11_12_AM_Samedi");
			String Samedi6 = request.getParameter("_1_2_PM_Samedi");
			String Samedi7 = request.getParameter("_2_3_PM_Samedi");
			String Samedi8 = request.getParameter("_3_4_PM_Samedi");
			String Samedi9 = request.getParameter("_4_5_PM_Samedi");

			
				Connection con = DBConnexion.GetConnexion();

				String requete = "INSERT INTO disponibilites VALUES(NULL,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
				
				PreparedStatement prepState = con.prepareStatement(requete);
				
				prepState.setString(1, Enseignant);
				prepState.setString(2, Semaine);
				prepState.setString(3, now);
				prepState.setString(4, Lundi1);
				prepState.setString(5, Lundi2);
				prepState.setString(6, Lundi3);
				prepState.setString(7, Lundi4);
				prepState.setString(8, Lundi5);
				prepState.setString(9, Lundi6);
				prepState.setString(10, Lundi7);
				prepState.setString(11, Lundi8);
				prepState.setString(12, Lundi9);
				
				prepState.setString(13, Mardi1);
				prepState.setString(14, Mardi2);
				prepState.setString(15, Mardi3);
				prepState.setString(16, Mardi4);
				prepState.setString(17, Mardi5);
				prepState.setString(18, Mardi6);
				prepState.setString(19, Mardi7);
				prepState.setString(20, Mardi8);
				prepState.setString(21, Mardi9);
				
				
				prepState.setString(22, Mercredi1);
				prepState.setString(23, Mercredi2);
				prepState.setString(24, Mercredi3);
				prepState.setString(25, Mercredi4);
				prepState.setString(26, Mercredi5);
				prepState.setString(27, Mercredi6);
				prepState.setString(28, Mercredi7);
				prepState.setString(29, Mercredi8);
				prepState.setString(30, Mercredi9);
				
				prepState.setString(31, Jeudi1);
				prepState.setString(32, Jeudi2);
				prepState.setString(33, Jeudi3);
				prepState.setString(34, Jeudi4);
				prepState.setString(35, Jeudi5);
				prepState.setString(36, Jeudi6);
				prepState.setString(37, Jeudi7);
				prepState.setString(38, Jeudi8);
				prepState.setString(39, Jeudi9);
				
				prepState.setString(40, Vendredi1);
				prepState.setString(41, Vendredi2);
				prepState.setString(42, Vendredi3);
				prepState.setString(43, Vendredi4);
				prepState.setString(44, Vendredi5);
				prepState.setString(45, Vendredi6);
				prepState.setString(46, Vendredi7);
				prepState.setString(47, Vendredi8);
				prepState.setString(48, Vendredi9);
			
				prepState.setString(49, Samedi1);
				prepState.setString(50, Samedi2);
				prepState.setString(51, Samedi3);
				prepState.setString(52, Samedi4);
				prepState.setString(53, Samedi5);
				prepState.setString(54, Samedi6);
				prepState.setString(55, Samedi7);
				prepState.setString(56, Samedi8);
				prepState.setString(57, Samedi9);
				

				
				

				prepState.executeUpdate();
				System.out.println("Ajoute avec success");
				request.setAttribute("msg", "Votre demande de disponibilité est envoyé avec succès !!!");
				request.setAttribute("typemsg", "success");
				request.getRequestDispatcher("EDTForm.jsp").forward(request, response);
				}
				catch(Exception ex){
					System.out.println("Misy diso ao ambony ao"+ex);
					//Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
				}

	}

}
