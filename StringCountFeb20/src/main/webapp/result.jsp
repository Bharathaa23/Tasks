<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Character count</title>
<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h2>Character Count</h2>
    <form action="CharacterCounterServlet" method="post" id="characterForm">
        <label for="inputString">Enter a string:</label><br>
        <input type="text" id="inputString" name="inputString" value="<%= (request.getParameter("inputString") != null) ? request.getParameter("inputString") : "" %>" required><br><br>
        <input type="submit" value="Count">
    </form>
    
    <div  class="container"> 
    <h2>Character Counter Result</h2>
    <p>Alphabets: <%= request.getAttribute("alphabetCount") %></p>
    <p>Digits: <%= request.getAttribute("digitCount") %></p>
    <p>Special Symbols: <%= request.getAttribute("specialCount") %></p>
    </div>
    
</body>
</html>
 
 
 
 
 
<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Character Counter</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <h2>Character Counter</h2>
    <form action="CharacterCounterServlet" method="post" id="characterForm">
        <label for="inputString">Enter a string:</label><br>
        <input type="text" id="inputString" name="inputString" value="<%= request.getParameter("inputString") %>" required><br><br>
        <input type="submit" value="Count">
    </form>
    
    <div class="container"> 
        <h2>Character Counter Result</h2>
        <p>Alphabets: <%= request.getAttribute("alphabetCount") %></p>
        <p>Digits: <%= request.getAttribute("digitCount") %></p>
        <p>Special Symbols: <%= request.getAttribute("specialCount") %></p>
    </div>
</body>
</html>
 --%>
