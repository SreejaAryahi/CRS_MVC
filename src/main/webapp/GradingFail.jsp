<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
  body {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
     background-image: url('https://hatenotecnologia.com.br/wp-content/uploads/2019/09/img_05-2-1536x864.jpg');
      background-size: cover;

    background-repeat: no-repeat;

    background-attachment: fixed;

    background-position: center center;

    padding: 0;
  }
  .card {
    text-align: center;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    max-width: 400px;
  }
  .button {
    display: inline-block;
    padding: 10px 20px;
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }
  .button:hover {
    background-color: #0056b3;
  }
</style>
</head>
<body>
<div class="card">
  <h1>Failed to grade</h1>
  <br><br>
  <a href="ProfessorService.jsp" class="button">Back To Menu</a>
</div>
</body>
</html>