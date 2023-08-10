<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Enroll Yourself</title>
<style>
  body {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    height: 100vh;
    margin: 0;
    font-family: Arial, sans-serif;
     background-image: url('https://hatenotecnologia.com.br/wp-content/uploads/2019/09/img_05-2-1536x864.jpg');
      background-size: cover;

    background-repeat: no-repeat;

    background-attachment: fixed;

    background-position: center center;

    margin: 0;

    padding: 0;
  }

  h1, h2 {
    margin-bottom: 20px;
  }

  .options {
    display: flex;
    flex-direction: column;
    align-items: center;
    gap: 10px;
  }

  .options a {
    display: inline-block;
    padding: 10px 20px;
    background-color: #007bff;
    color: #fff;
    text-decoration: none;
    border-radius: 5px;
    transition: background-color 0.3s;
  }

  .options a:hover {
    background-color: #0056b3;
  }
</style>
</head>
<body>
<h1>Enroll Yourself</h1>
<div class="options">
  <a href="RegisterProfessor.jsp">Register Professor</a>
  <a href="ProfessorLogin.jsp">Login Professor</a>
</div>
</body>
</html>>