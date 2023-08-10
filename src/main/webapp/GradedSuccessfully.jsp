<%@page import="java.awt.Label"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Graded Successfully</title>
<style>
    body {
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        margin: 0;
        background-image: url('https://hatenotecnologia.com.br/wp-content/uploads/2019/09/img_05-2-1536x864.jpg');
      background-size: cover;

    background-repeat: no-repeat;

    background-attachment: fixed;

    background-position: center center;

    margin: 0;

    padding: 0;
    }
    .card {
        border: 1px solid #ccc;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        width: 300px;
        text-align: center;
        background-color: #fff;
    }
    .button {
        display: inline-block;
        padding: 10px 20px;
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 5px;
        text-decoration: none;
    }
</style>
</head>
<body>
<div class="card">
    <h1>Student Graded Successfully</h1>
    <br>
    <br>
    <%
    try {
        session=request.getSession();
        Class.forName("com.mysql.cj.jdbc.Driver");

        String url = "jdbc:mysql://localhost:3306/crs";
        String user = "root";
        String pass = "Sreejarac@18";

        Connection con = DriverManager.getConnection(url, user, pass);
        
        int sid = (int) session.getAttribute("sid");
        int cid = 0;
        String pname = "";
        String cname = "";
        String sname = "";
        
        PreparedStatement prep = con.prepareStatement("Select * from student where sid=?");
        prep.setInt(1, sid);
        ResultSet r1 = prep.executeQuery();
        if (r1.next()) {
            cid = r1.getInt(2);
            sname = r1.getString(3);
        }

        PreparedStatement prep1 = con.prepareStatement("Select * from professors where c_id=?");
        prep1.setInt(1, cid);
        ResultSet r2 = prep1.executeQuery();
        if (r2.next()) {
            pname = r2.getString(3);
        }

        PreparedStatement prep2 = con.prepareStatement("Select * from course where cid=?");
        prep2.setInt(1, cid);
        ResultSet r3 = prep2.executeQuery();
        if (r3.next()) {
            cname = r3.getString(2);
        }

        out.println("Professor " + pname + " graded " + sname + ", who was enrolled in a " + cname + " course, with an excellent score.");
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
    <br>
    <button class="button" onclick="window.location.href='Welcome.html'">Back To Menu</button>
</div>
</body>
</html>