<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<link rel="stylesheet"  type="text/css" href="indexStyle.css">
</head>
<body style="background-image:url(https://e1.pxfuel.com/desktop-wallpaper/966/456/desktop-wallpaper-login-page-login.jpg) ;">

<% 
        // Retrieve the session object
        HttpSession session1 = request.getSession(false);

        // Check if the session is not null and the username attribute is set
        if (session != null && session1.getAttribute("username") != null) {
            // Get the username from the session
            String username = (String) session1.getAttribute("username");
%>
      <div class="container">
        <h1>Hello, <%=username%>!</h1>
        <p> you have logged in successfully</p>
        <p> Go to Home page via <a href="logout.jsp">LOGOUT</a> securely.
    </div>
    
    <%
        } else {
            // Redirect to the login page if the session is not valid
            response.sendRedirect("login.jsp");
        }
    %>
</body>
</html>