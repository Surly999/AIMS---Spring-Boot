<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form</title>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <!-- Custom styles -->
    <style>
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


        .left-frame {
            background-color: #f8f9fa; /* Set background color for left frame */
        }

        .right-frame {
            background-color: #e9ecef; /* Set background color for right frame */
        }

        /* Adjust spacing */
        .form-group {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
  <header class="custom-header">
    <nav class="navbar navbar-dark bg-dark">
      <a class="navbar-brand" href="#">Customer Information Form</a>
      <!-- Home button -->
      <a class="btn btn-light" href="/auditor/audhome" role="button">Home</a>
  </nav>
</header>
    <div class="container-fluid">
        

        <!-- Left frame -->
        <div class="row">
            <div class="col-md-6 left-frame">
                <!-- Existing section to display customer details -->
                
                   
                        <br>
                        <!-- Customer details inputs -->
                        <div class="form-group">
                            <label for="exampleInputName1">Sales Executive ID</label>
                            <input type="text" class="form-control" id="exampleInputName1"  readonly />
                        </div>
                        <div class="form-group">
                            <label for="exampleInputName1">Customer ID</label>
                            <input type="text" class="form-control" id="exampleInputName1"  name="id" value="${cust.id}" readonly />
                        </div>
                        <div class="form-group">
                            <label for="exampleInputName1">Name</label>
                            <input type="text" class="form-control" id="exampleInputName1"  name="name" value="${cust.name}" readonly />
                        </div>
                    
                        <div class="form-group">
                            <label for="exampleTextarea1">Address</label>
                            <textarea class="form-control" id="exampleTextarea1" rows="4" name="address"  readonly>${cust.address}</textarea>
                        </div>
                    
                        <div class="form-group">
                            <label for="exampleInputEmail3">Contact Number</label>
                            <input type="text" class="form-control" id="exampleInputEmail3"  name="number" value="${cust.number}" readonly />
                        </div>
                    
                        <div class="form-group">
                            <label for="panNumber">Pan Number</label>
                            <input type="text" class="form-control" id="panNumber"  name="pan" value="${cust.pan}" readonly />
                        </div>
                    
                        <div class="form-group">
                            <label for="aadhaarNumber">Aadhaar Number</label>
                            <input type="text" class="form-control" id="aadhaarNumber"  name="aadhaar" value="${cust.aadhaar}" readonly />
                        </div>
                    
                        <div class="form-group">
                            <label for="accountType">Account Type</label>
                            <input type="text" class="form-control" id="accountType" name="acctype" value="${cust.acctype}" readonly />
                        </div>
                    
                        <div class="form-group">
                            <label for="fileUpload">File Upload</label>
                            <input type="text" class="form-control" id="fileUpload" disabled placeholder="No file uploaded" />
                        </div>
                  
                
            </div>
         
            <!-- Right frame -->
            <div class="col-md-6 right-frame">
                <!-- Additional Information section -->
               <form class="forms-sample" action="/auditor/audsave" method="post">
                    <br>
                    <!-- Additional information inputs -->
                    <div class="form-group">
                    <input type="hidden" value="${cust.id}" name="id">
                        <label for="status">Status</label>
                        <select class="form-control" id="status" name="status" >
                            <option value="Select Status">Select Status</option>
                            
                            <option value="Pending Manager Review">Pending Manager Review</option>
                           
                            
                        </select>
                        <input type="hidden" name="cid" value="${cust.id}">
                    </div>
                
                
                    <div class="form-group">
                        <label for="complianceDetails">Compliance Details</label>
                        <textarea class="form-control" id="complianceDetails" rows="4" name="compdetails"></textarea>
                    </div>
                
                    <div class="form-group">
                        <label for="verifiedBy">Verified By</label>
                        <input type="text" class="form-control" id="verifiedBy" name="verifiedby" />
                    </div>
                
                    
                
                    <input type="submit" class="btn btn-primary mr-2"/>
                    
                    <button type="reset" class="btn btn-light">Reset</button>
                    
                </form>
                
           <script>
    document.querySelector('.forms-sample').addEventListener('submit', function(event) {
        var status = document.getElementById('status').value;
        var form = event.target; // Get the form element

        if (status === 'Pending Manager Review') {
            alert('Form submitted for Manager Review.');
        } else {
            alert('Please select a valid status before submitting.');
            event.preventDefault(); 
        }
    });
</script>  


                
            </div>
            <!-- End Additional Information section -->
        </div>
    </div>

    <footer class="custom-footer">
      <p>&copy; 2024 Customer Information System</p>
  </footer>

  <!-- Bootstrap JS -->
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


</body>
</html>
