<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib uri="jakarta.tags.core" prefix="c" %>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Customer Details</title>
<style>
  /* Table Styles */
  table {
    width: 105%;
    border-collapse: collapse;
  }

  th, td {
    padding: 10px;
    text-align: left;
    border-bottom: 1px solid #ddd;
  }

  th {
    background-color: #f2f2f2;
    font-weight: bold;
  }

  tr:hover {
    background-color: #f5f5f5;
  }

  .edit-btn {
    padding: 5px 10px;
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 3px;
    cursor: pointer;
  }

  .edit-btn:hover {
    background-color: #0056b3;
  }
</style>
</head>
<body>

<table>
  <thead>
    <tr>
      <th>Customer ID</th>
      <th>Name</th>
      <th>Address</th>
      <th>Contact</th>
      <th>PAN</th>
      <th>Aadhaar</th>
      <th>Account Type</th>
      <th>Status</th>
      
    </tr>
  </thead>
  <tbody>
  
  <c:forEach var="cust" items="${custDet}">
    <tr>
      <td>${cust.id}</td>
      <td>${cust.name}</td>
      <td>${cust.address}</td>
      <td>${cust.number}</td>
      <td>${cust.pan}</td>
      <td>${cust.aadhaar}</td>
      <td>${cust.acctype}</td>
      <td>${cust.status}</td>
      
    </tr>
    </c:forEach>
  </tbody>
</table>

</body>
</html>
