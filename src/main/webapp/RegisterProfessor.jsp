<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Professor Registration</title>
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

  form {
    background-color: #ffffff;
    border-radius: 10px;
    padding: 20px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    width: 300px;
  }

  form label {
    display: block;
    margin-bottom: 5px;
  }

  form input {
    width: 100%;
    padding: 8px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
  }

  form button {
    background-color: #007bff;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s;
  }

  form button:hover {
    background-color: #0056b3;
  }
</style>
</head>
<body>
<form action="professorR">
  <label>Professor Registration</label> 
  <label>User Name</label> <br>
  <input type="text" name="user_name"> 
  <label>Password</label> <br>
  <input type="password" name="pass1"> 
  <label>Enter Professor Id</label> 
  <input type="text" name="pid"> 
  <label>Enter Course Id</label> 
  <input type="text" name="cid"> 
  <label>Professor Name</label>
  <input type="text" name="pname"> 
  <label>Experience</label>
  <input type="text" name="exp"> 
  <button type="submit">Register</button>
</form>
</body>
</html>