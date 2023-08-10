<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Professors</title>
<link rel="stylesheet" type="text/css" href="viewStudent.css">
</head>
<body>
<div class="card">
  <table>
    <tr>
      <th>Professor Id</th>
      <th>Course Id</th>
      <th>Professor Name</th>
      <th>Professor Experience</th>
    </tr>
    <%
    session = request.getSession();

    Class.forName("com.mysql.cj.jdbc.Driver");

    String url = "jdbc:mysql://localhost:3306/crs";

    String user = "root";

    String pwd = "Sreejarac@18";

    Connection con = DriverManager.getConnection(url, user, pwd);

    String sql = "select * from professors";

    Statement stmt = con.createStatement();
    ResultSet res5 = stmt.executeQuery(sql);

    while (res5.next() == true) {
      out.println("<tr>");
      out.println("<td>" + res5.getInt(1) + "</td>");
      out.println("<td>" + res5.getInt(2) + "</td>");
      out.println("<td>" + res5.getString(3) + "</td>");
      out.println("<td>" + res5.getInt(4) + "</td>");
      out.println("</tr>");
    }
    %>
  </table>
</div>
</body>
</html>