<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
  body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
     background-image: url('https://hatenotecnologia.com.br/wp-content/uploads/2019/09/img_05-2-1536x864.jpg');
      background-size: cover;

    background-repeat: no-repeat;

    background-attachment: fixed;

    background-position: center center;

    margin: 0;

    padding: 0;
  }
  .card {
    width: 300px;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
    background-color: white;
    text-align: center;
    transition: transform 0.3s, box-shadow 0.3s;
  }
  .card:hover {
    transform: translateY(-5px);
    box-shadow: 0px 6px 8px rgba(0, 0, 0, 0.2);
  }
  .card h1 {
    margin-top: 0;
  }
  .card a {
    text-decoration: none;
    color: #333;
    display: block;
    margin-top: 20px;
    padding: 10px 20px;
    border-radius: 5px;
    background-color: #007BFF;
    color: white;
    transition: background-color 0.3s;
  }
  .card a:hover {
    background-color: #0056b3;
  }
</style>
</head>
<body>
<div class="card">
  <h1>Failed to add student</h1>
  <a href="Welcome.html">Back To Manage</a>
</div>
</body>
</html>