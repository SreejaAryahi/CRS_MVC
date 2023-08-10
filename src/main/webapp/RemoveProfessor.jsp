<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Remove Professor</title>
<style>
  body {
    display: flex;
    justify-content: center;
    align-items: center;
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

  .card {
    background-color: #ffffff;
    border-radius: 10px;
    padding: 20px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    width: 300px;
    text-align: center;
  }

  .card label {
    display: block;
    margin-bottom: 10px;
  }

  .card input {
    width: 100%;
    padding: 8px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
  }

  .card button {
    background-color: #007bff;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s;
  }

  .card button:hover {
    background-color: #0056b3;
  }
</style>
</head>
<body>
<div class="card">
  <form action="removeProfessor">
    <label>Enter Professor Id</label><br>
    <input type="text" name="pid"><br>
    <button type="submit">Submit</button>
  </form>
</div>
</body>
</html>