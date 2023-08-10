<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Report Card</title>
    <link rel="stylesheet" type="text/css" href="ShowMarks.css">
</head>
<body>
<div class="card">
    <h1 align="center">Report Card</h1>
    <%
    try {
        session = request.getSession();
        Class.forName("com.mysql.cj.jdbc.Driver");

        String url = "jdbc:mysql://localhost:3306/crs";
        String user = "root";
        String pass = "Sreejarac@18";

        Connection con = DriverManager.getConnection(url, user, pass);
        
        int sid = (int) session.getAttribute("sid");

        int cid = 0;
        String pname = "";
        int Assesment1_Score = 0;
        int Assesment2_Score = 0;
        int Practical_Score = 0;
        int Final_Score = 0;
        String Grade = "";
        String cname = "";
        String sname = "";
        PreparedStatement prep = con.prepareStatement("Select * from grade where sid=?");
        prep.setInt(1, sid);
        ResultSet r = prep.executeQuery();
        if (r.next()) {
            Assesment1_Score = r.getInt(2);
            Assesment2_Score = r.getInt(3);
            Practical_Score = r.getInt(4);
            Final_Score = r.getInt(5);
            Grade = r.getString(6);

        }
        PreparedStatement prep1 = con.prepareStatement("Select * from student where sid=?");
        prep1.setInt(1, sid);
        ResultSet r1 = prep1.executeQuery();
        if (r1.next()) {

            cid = r1.getInt(2);
            sname = r1.getString(3);
        }
        PreparedStatement prep2 = con.prepareStatement("Select * from professors where cid=?");
        prep2.setInt(1, cid);
        ResultSet r2 = prep2.executeQuery();
        if (r2.next()) {
            pname = r2.getString(3);
        }
        PreparedStatement prep3 = con.prepareStatement("Select * from course where cid=?");
        prep3.setInt(1, cid);
        ResultSet r3 = prep3.executeQuery();
        if (r3.next()) {
            cname = r3.getString(2);
        }
        %>
        <table>
            <tr>
                <th>Attribute</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>Student Id</td>
                <td><%= sid %></td>
            </tr>
            <tr>
                <td>Student Name</td>
                <td><%= sname %></td>
            </tr>
            <tr>
                <td>Professor Assigned</td>
                <td><%= pname %></td>
            </tr>
            <tr>
                <td>Course Assigned</td>
                <td><%= cname %></td>
            </tr>
            <tr>
                <td>First Assessment Score</td>
                <td><%= Assesment1_Score %></td>
            </tr>
            <tr>
                <td>Second Assessment Score</td>
                <td><%= Assesment2_Score %></td>
            </tr>
            <tr>
                <td>Practical Marks</td>
                <td><%= Practical_Score %></td>
            </tr>
            <tr>
                <td>Final Score</td>
                <td><%= Final_Score %></td>
            </tr>
            <tr>
                <td>Grade Obtained by course</td>
                <td><%= Grade %></td>
            </tr>
        </table>
    <%
    } catch(Exception e){
        e.printStackTrace();
    }
    %>
    </div>
    <div class="button-container">
    <button class="button" onclick="location.href='Welcome.html'">Redirect</button>
</div>
</body>
</html>