 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title></title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="../../../assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="../../../assets/vendors/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="../../../assets/vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <link rel="stylesheet" href="../../../assets/vendors/select2/select2.min.css" />
    <link rel="stylesheet" href="../../../assets/vendors/select2-bootstrap-theme/select2-bootstrap.min.css" />
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="../../../assets/css/demo_1/style.css" />
    <!-- End layout styles -->
    <link rel="shortcut icon" href="../../../assets/images/favicon.png" />
    <style>
        body {
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            font-family: Arial, sans-serif;
        }

        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-top: 50px;
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
        }

        .custom-header {
            background-color: #343a40;
            color: #fff;
            padding: 10px 0;
            text-align: center;
        }

        /* Custom footer styles */
        .custom-footer {
            background-color: #343a40;
            color: #fff;
            padding: 10px 0;
            text-align: center;
        }

        /* Style for form labels */
        .form-group label {
            font-weight: bold;
        }

        /* Style for form inputs */
        .form-control {
            border: 1px solid #ced4da;
            border-radius: 4px;
            padding: 10px;
            width: 100%;
            box-sizing: border-box;
            margin-bottom: 15px;
        }

        /* Style for select elements */
        select.form-control {
            appearance: none;
            -webkit-appearance: none;
            -moz-appearance: none;
            background: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M7 10l5 5 5-5z"/></svg>') no-repeat right 10px center/15px 15px;
            padding-right: 35px;
        }

        /* Style for file upload */
        .file-upload-default {
            display: none;
        }

        .file-upload-info {
            margin-left: 5px;
            width: calc(100% - 100px);
        }

        .file-upload-browse {
            width: 100px;
        }

        /* Style for buttons */
        .btn {
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
        }

        .btn-primary {
            background-color: #007bff;
            color: #fff;
            border: none;
        }

        .btn-light {
            background-color: #f8f9fa;
            color: #212529;
            border: 1px solid #ced4da;
        }
    </style>
</head>
<body>

<header class="custom-header">  
    <a class="navbar-brand" >Customer Information</a>
    <!-- Home button -->   
</header>

<div class="container">
    <form class="forms-sample" action="/sales/updateCust" method="post">
    <input type="hidden" name="id" value="${cust.id}">
        <div class="form-group">
            <label for="exampleInputName1">Name</label>
            <input type="text" class="form-control" id="exampleInputName1" name="name" value="${cust.name}" />
        </div>

        <div class="form-group">
            <label for="exampleTextarea1">Address</label>
            <textarea class="form-control" id="exampleTextarea1" rows="4" name="address">${cust.address}</textarea>
        </div>

        <div class="form-group">
            <label for="exampleInputEmail3">Contact Number</label>
            <input type="number" class="form-control" id="number" name="number" value="${cust.number}" />
        </div>

        <div class="form-group">
            <label for="PanCard">Pan Number</label>
            <input type="text" class="form-control" id="pan" name="pan" value="${cust.pan}" />
        </div>

        <div class="form-group">
            <label for="aadhaar">Aadhaar Number</label>
            <input type="number" class="form-control" id="aadhaar" name="aadhaar" value="${cust.aadhaar}" />
        </div>

        <div class="form-group">
            <label for="exampleSelectGender">Account Type</label>
            <select class="form-control" id="exampleSelectGender" name="acctype" value="${cust.acctype}">
                <option>Single</option>
                <option>Joint Account</option>
                <option>Company</option>
            </select>
        </div>

       <!-- <div class="form-group">
            <label>File upload</label>
            <input type="file" name="img[]" class="file-upload-default" name="file" />
            <div class="input-group col-xs-12">
                <input type="text" class="form-control file-upload-info" disabled placeholder="Check Norms for Required documents" />
                <span class="input-group-append">
                  <button class="file-upload-browse btn btn-primary" type="button"> Upload </button>
                </span>
            </div>  
        </div>-->

        <div class="form-group">
            <label for="status">Status</label>
            <select class="form-control" id="status" name="status">
                <option value="">Select Status</option>
                <option value="Pending Manager Review">Pending Manager Review</option>
            </select>
        </div>

        <button type="submit" class="btn btn-primary mr-2" value="save"> Submit </button>
        <button class="btn btn-light" onclick="cancel()">Cancel</button>
    </form>
</div>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        document.querySelector('.forms-sample').addEventListener('submit', function(event) {
            var status = document.getElementById('status').value;
            var form = event.target; // Get the form element

            if (status === 'Pending Manager Review') {
                alert('Form submitted for manager Review');
                // Add your logic here if needed
            } else {
                alert('Please select a valid status before submitting.');
                event.preventDefault(); // Prevent form submission
            }
        });
    });
</script>



<footer class="custom-footer">
    <p>&copy; 2024 Customer Information System</p>
</footer>

</body>
</html>
