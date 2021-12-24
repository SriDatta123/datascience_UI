package databaseOperations;
import java.sql.*;
import java.util.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Insert
 */
@WebServlet(description = "used to insert data", urlPatterns = { "/InsertData" })
public class Insert extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Insert() {
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
		String result = "Inserted successfully";

		try
		{

		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://"+JDBC.serverAddress+":"+JDBC.serverPort+"/"+JDBC.database+"", JDBC.username, JDBC.password);
		Statement st=conn.createStatement();
		Enumeration<?> paramNames = request.getParameterNames();
		String string = "insert into sitewiseanalyticstracker ";
		String columnNames = "";
		String columnData = "";
		while(paramNames.hasMoreElements()) {
		   String paramName = (String)paramNames.nextElement();
		   String paramValue = (String)request.getParameter(paramName);
		   columnNames = columnNames +"'"+ paramName+"',";
		   columnData = columnData +"'"+ paramValue+"'"+",";
		}
					columnNames = columnNames.substring(0, (columnNames.length()-1));
		columnData = columnData.substring(0, (columnData.length()-1));
		st.execute(string+" values(NULL,"+columnData+");");
		st.close();
		conn.close();
		st.close();
		 result = "Inserted successfully";
		}
		catch(Exception e)
		{
		e.printStackTrace();
		 result = e.toString();
		}
        request.setAttribute("result", result);
        this.getServletContext().getRequestDispatcher("/InputForm.jsp").forward(request, response);

	}

}
