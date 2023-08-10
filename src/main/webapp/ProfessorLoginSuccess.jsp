<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Professor Login</title>
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
    .card h2 {
        margin-bottom: 30px;
    }
    label {
        display: block;
        margin-bottom: 5px;
        text-align: center;
    }
    input {
        width: 100%;
        padding: 8px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 3px;
    }
    button[type="submit"] {
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 5px;
        padding: 10px 20px;
        cursor: pointer;
    }
    button[type="submit"]:hover {
        background-color: #0056b3;
    }
    .space-between {
        margin-top: 50px; /* Adjust the value to increase or decrease the spacing */
    }
</style>
</head>
<body>
<h1 style="text-align: center;" class="space-between">Professor Login Successful.</h1>
<div class="card">
    <h2>Grade The Respective Student</h2>
    <form action="Grading">
        <label for="sid">Grade Students</label>
        <label for="sid">Enter Student Id</label>
        <input type="text" id="sid" name="sid">
        <label for="assess1">Enter First Assessment Score</label>
        <input type="text" id="assess1" name="Assessment1_Score">
        <label for="assess2">Enter Second Assessment Score</label>
        <input type="text" id="assess2" name="Assessment2_Score">
        <label for="practical">Enter Practical Score</label>
        <input type="text" id="practical" name="Practical_Score">
        <button type="submit">Grade Student</button>
    </form>
</div>
</body>
</html>