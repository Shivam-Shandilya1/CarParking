package conn;

import java.sql.*;
;

public class DB {

	public static Connection getconn() throws SQLException, ClassNotFoundException{
		
		Class.forName("com.mysql.jdbc.Driver");
		  Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/multistoried_a_parking_system","root","root");
		 return con; 		
	}
}
