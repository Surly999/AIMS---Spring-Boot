
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Norm Submission Form</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
    }
    .container {
        max-width: 700px; /* Increased width */
        margin: 50px auto;
        padding: 20px;
        background: #fff;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    h2 {
        text-align: center;
    }
    label {
        font-weight: bold;
    }
    input[type="text"],
    textarea,
    select {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }
    textarea {
        height: 100px;
    }
    input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        padding: 12px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        width: 100%;
        font-size: 16px;
    }
    input[type="submit"]:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>

<div class="container">
    <h2>Norm Submission Form</h2>
    <form action="addnorm" method="post">
        <label for="norm_title">Norm Title:</label>
        <input type="text" id="norm_title" name="normtitile" required>

        <label for="required_documents">Required Documents:</label>
        <textarea id="required_documents" name="normdesc" required></textarea>

        <label>Type of Norms</label><br><br>
        <input type="radio" id="primary" name="normtype" value="Primary" required>
        <label for="primary">Primary</label>
        <input type="radio" id="secondary" name="normtype" value="Secondary">
        <label for="secondary">Secondary</label><br>
        <br><br>
        <label for="account_type">Account Type:</label>
        <br><br>
        <select id="account_type" name="acctype" required>
            <option value="single">Single</option>
            <option value="joint">Joint</option>
            <option value="company">Company</option>
        </select>
        <br>
        <label for="commencement_date">Date of Commencement:</label>
        <input type="date" id="commencement_date" name="normdate" required>
<br><br><br><br>
        <input type="submit" value="Submit">
    </form>
</div>

</body>
</html>
    