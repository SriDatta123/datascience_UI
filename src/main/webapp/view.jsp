<html>

<%@page import="java.sql.*,java.util.*,databaseOperations.*"%>
<%@page import="java.sql.*,java.util.*,databaseOperations.Select"%>
<head>

<style type="text/css">


/* The Table Attributes */
table {
  text-align: center;
  width: 700px;
  margin: 20px auto;
  font-family: sans-serif;
  border-bottom: 5px solid #009688;
  
}

th {
  background-color: #404040;
  color: white;
}
/* Attributes of Each Cell */
tr {
  background-color: #eee;
}

th, td {


  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}
td{
    overflow-wrap: break-word;
}
tr:hover {
background-color: lightgreen;
}
</style>


</head>



<body>

<div>

<table id="dev-table">


<%
try {

Select s = new Select();
	ResultSet rs = s.getTableData();
	ResultSetMetaData rsmd = rs.getMetaData();
	int columnsNumber = rsmd.getColumnCount();
	out.println("<thead>");
	
	out.println("<tr><th>&nbsp;</th>");
	 for (int i = 1; i <= columnsNumber; i++) {

 		out.println("<th>");
 		out.println(rsmd.getColumnName(i));
 		out.println("</th>");
         
     }
	out.println("</tr></thead><tbody>");
	
	
	while (rs.next()) {
		out.println("<tr>");

		 for (int i = 1; i <= columnsNumber; i++) {
	           
	   		out.println("<td>");
	   		out.println(rs.getObject(i));
	   		out.println("</td>");
	           
	       }
		out.println("</tr>");
	}
	out.println("</tbody>");
} catch (Exception e) {
	System.out.print(e);
	e.printStackTrace();
}
%>
</table>
</div>

</body></html>