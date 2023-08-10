<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Course Registration</title>
    <link rel="stylesheet" href="addCourse.css">
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
        }
        .registration-form {
            border: 1px solid #ccc;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            width: 300px;
        }
    </style>
</head>
<body>
    <form action="addCourses" class="registration-form">
        <div class="container">
            <h1>Add Course</h1>
            <label for="cid">Enter Course ID</label>
            <input type="text" id="cid" name="cid" required>
            
            <label for="cname">Course Name</label>
            <input type="text" id="cname" name="cname" required>
            
            <label for="dur_months">Course Duration</label>
            <input type="text" id="dur_months" name="dur_months" required>
            
            <label for="fees">Fees</label>
            <input type="text" id="fees" name="fees" required>
            
            <button type="submit">Add Course</button>
        </div>
    </form>
</body>
</html>