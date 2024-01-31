package gestion;
import java.sql.Connection;
import java.sql.DriverManager;
public class DBConnexion{
	
	
    private static String driver = "com.mysql.jdbc.Driver";
    private static String connection = "jdbc:mysql://localhost:3306/disponibiliteetpointage";
    private static String user = "root";            
    private static String password = "";        

    
    
    
	public static Connection GetConnexion() {
		// TODO Auto-generated method stub
        try
        {
            Class.forName(driver);
            Connection con=DriverManager.getConnection(connection,user,password);
            System.out.println("Connecté avec MySQL");  
            return con;
        }
        catch(Exception e)
        {
            System.out.println(e);
            return null;
        }
        
		
	}  

}
