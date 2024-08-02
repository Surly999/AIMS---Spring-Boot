<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib uri="jakarta.tags.core" prefix="c" %>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Customer Information</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
    }

    table {
        width: 138%;
        border-collapse: collapse;
        margin-bottom: 20px;
    }

    th, td {
        padding: 10px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }

    th {
        background-color: #f2f2f2;
    }

    tr:hover {
        background-color: #e5e5e5;
    }

    .button {
        display: inline-block;
        padding: 10px 20px;
        background-color: #4CAF50;
        color: white;
        border: none;
        cursor: pointer;
        border-radius: 5px;
        text-decoration: none;
    }

    .button:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
<c:if test="${empty cust}">
    <p>No data Pending for Audit</p>
</c:if>


<table>
    <thead>
        <tr>
            <th>Sales Executive ID</th>
            <th>Customer ID</th>
             <th>Name</th>            
            <th>Account Type</th>          
            <th>Status</th>
            
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
    
    <c:forEach var="cu" items="${cust}">
        <tr>
            <td>Exe_id</td>
            <td>${cu.id}</td>
             <td>${cu.name}</td>
            <td>${cu.acctype}</td>                   
            <td>${cu.status}</td>
            
            <td><a href="managercheckbyid/${cu.id}" class="button">Check Form</a></td>
        </tr>
        </c:forEach>
        
        <!-- Add more rows as needed -->
    </tbody>
</table>
<script type="text/javascript">
function auditcheckbyidscript(id) {
    window.location.href = "/managercheckbyid/" + id; // Redirect to customer details page
}

</script>
</body>
</html>
