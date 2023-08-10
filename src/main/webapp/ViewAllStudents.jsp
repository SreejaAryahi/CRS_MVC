<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Student Information</title>
    <link rel="stylesheet" href="viewStudent.css">
</head>
<body>
    <div class="card">
        <table>
            <tr>
                <th>Student Id</th>
                <th>Student Name</th>
                <th>Email</th>
                <th>Course</th>
            </tr>
            <%
            session = request.getSession();

            Class.forName("com.mysql.cj.jdbc.Driver");

            String url = "jdbc:mysql://localhost:3306/crs";
            String user = "root";
            String pwd = "Sreejarac@18";

            Connection con = DriverManager.getConnection(url, user, pwd);

            String sql = "select * from student";

            Statement stmt = con.createStatement();
            ResultSet res5 = stmt.executeQuery(sql);

            while (res5.next() == true) {
                out.println("<tr>");
                out.println("<td>" + res5.getInt(1) + "</td>");
                out.println("<td>" + res5.getString(3) + "</td>");
                out.println("<td>" + res5.getString(4) + "</td>");
                out.println("<td>" + res5.getInt(2) + "</td>");
                out.println("</tr>");
            }
            %>
        </table>
    </div>
</body>
</html>