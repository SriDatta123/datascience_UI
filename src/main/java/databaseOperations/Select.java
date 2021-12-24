package databaseOperations;
import java.sql.*;
public class Select {

	
	
	public ResultSet getTableData() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://"+JDBC.serverAddress+":"+JDBC.serverPort+"/"+JDBC.database+"", JDBC.username, JDBC.password);
			Statement st = conn.createStatement();

			ResultSet rs = st.executeQuery("SELECT * FROM sitewiseanalyticstracker");

			return rs;
		} catch (Exception e) {
			System.out.print(e);
			e.printStackTrace();
			return null;
		}

		
		
	}
	
}
