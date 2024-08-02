<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="jakarta.tags.core" prefix="c" %>
    
    
    
    <!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>KYC Norms</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
    }
    table {
        width: 139%;
        border-collapse: collapse;
        margin: 20px 0;
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
        background-color: #f5f5f5;
    }
    .btn {
        padding: 8px 16px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 14px;
        text-transform: uppercase;
    }
    .btn-edit {
        background-color: #4CAF50;
        color: white;
    }
    .btn-delete {
        background-color: #f44336;
        color: white;
    }
</style>
</head>
<body>

<table>
    <thead>
        <tr>
            <th>Norm ID</th>
            <th>Title</th>
            <th>Description</th>
            <th>Type</th>
            <th>Account Type</th>
            <th>Effective from</th>
            
        </tr>
    </thead>
    <tbody>
    
         <c:forEach var="aud" items="${NormsDet}">
        <tr>
            <td>${aud.nid}</td>
            <td>${aud.normtitile}</td>
            <td>${aud.normdesc}</td>
            <td>${aud.normtype}</td>
            <td>${aud.acctype}</td>
            <td>${aud.normdate}</td>
            
        </tr>
        </c:forEach>
        
        
    </tbody>
</table>

</body>
</html>
    