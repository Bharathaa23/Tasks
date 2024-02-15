
<%@ page import="java.sql.*" %>
<%@ page import="javax.naming.*, javax.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="com.company.util.DBUtil" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"  type="text/css" href="fetchdata.css">
</head>
<body>
    <h2>Fetch Data</h2>
    <form method="GET" action="">
        <input type="text" name="searchTerm" placeholder="Search by username">
        <button type="submit">Search</button>
    </form>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Username</th>
            <th>Email</th>
        </tr>
    
    <%
        // Initialize variables
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        String searchTerm = request.getParameter("searchTerm");
        
        try {  
        	conn=DBUtil.getConnection();
            stmt = conn.createStatement(); 
            
            // Create SQL query
            String sql = "SELECT id,username,email FROM users";
            if (searchTerm != null && !searchTerm.isEmpty()) {
                sql += " WHERE username = '"+ searchTerm + "'" ;
            }
            
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
               
            	out.println("<tr>");
                out.println("<td>" + rs.getInt("id") + "</td>");
                out.println("<td>" + rs.getString("username") + "</td>");
                out.println("<td>" + rs.getString("email") + "</td>");
                out.println("</tr>");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Close resources
            try{
            	if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            }
            catch (SQLException e){
            	e.printStackTrace();
            }
        }
    %>
    </table>
</body>
</html>
