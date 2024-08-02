<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib uri="jakarta.tags.core" prefix="c" %>


<html>
    <head>
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

        </style>
 <!-- Required meta tags -->
 <meta charset="utf-8" />
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
 <title>Plus Admin</title>
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
    </head>
    <body>
        <header class="custom-header">
           
              <a class="navbar-brand" >Customer Information</a>
              <!-- Home button -->
              
          </nav>
        </header>

      <div class="col-12 grid-margin stretch-card">
        <div class="card">
          <div class="card-body">
        <form class="forms-sample" action="/manager/managerUpdateStatus" method="post">
            <div class="form-group">
              <label for="exampleInputName1">Name</label>
              <input type="text" class="form-control" value="${cust.name}" readonly/>
            </div>

            <div class="form-group">
              <label for="exampleTextarea1">Address</label>
              <textarea
                class="form-control"
                id="exampleTextarea1"
                rows="4" name="address" readonly
              >${cust.address}</textarea>
            </div>

            <div class="form-group">
              <label for="exampleInputEmail3">Contact Number</label>
              <input type="number" class="form-control" name="number" value="${cust.number}" readonly/>
            </div>
            <!-- <div class="form-group">
              <label for="exampleInputPassword4">Password</label>
              <input type="password" class="form-control" id="exampleInputPassword4" placeholder="Password" />
            </div> -->
             <div class="form-group">
              <label for="PanCard">Pan Number</label>
              <input type="text" class="form-control" name="pan" value="${cust.pan}" readonly />
            </div>
             <div class="form-group">
              <label for="aadhaar">Aadhaar Number</label>
              <input type="number" class="form-control" id="aadhaar" name="aadhaar" value="${cust.aadhaar}" readonly/>
            </div>
            <div class="form-group">
              <label for="exampleSelectGender">Account Type</label>
              <select class="form-control" id="exampleSelectGender" name="acctype" value="${cust.acctype}" readonly >
                <option>Single</option>
                <option>Joint Account</option>
                <option>Company</option>
              </select>
            </div>
            
             <div class="form-group">
              <label for="des">Descrepancy</label>
              <input type="text" class="form-control" id="compdetails" name="compdetails" value="${aud.compdetails}" readonly/>
            </div>
            
            
            
            <div class="form-group">
              <label>File upload</label>
              <input type="file" name="img[]" class="file-upload-default" name="file"/>
              <div class="input-group col-xs-12">
                <input type="text" class="form-control file-upload-info" disabled placeholder="Check Norms for Required documents" />
                <span class="input-group-append">
                  <button class="file-upload-browse btn btn-primary" type="button"> Upload </button>
                </span>
              </div>
            </div>
            <input type="hidden" name="id" value="${cust.id}">
            <div class="form-group">
              <label for="status">Status</label>
              <select class="form-control" id="status" name="status">
                <option value="">Select Status</option>
                <option value="Revert for update">Revert for update</option>
                <option value="Approved">Approved</option>
                
              </select>
              
              
              <script>
    document.addEventListener('DOMContentLoaded', function() {
        document.querySelector('.forms-sample').addEventListener('submit', function(event) {
            var status = document.getElementById('status').value;
            var form = event.target; // Get the form element

            if (status === 'Revert for update') 
            {
                alert('Form reverted for futher update....');
                
            } 
            else if (status === 'Approved') 
            {
                alert('Application is Approved');
            }
            else {
                alert('Please select a valid status before submitting.');
                event.preventDefault(); // Prevent form submission
            }
        });
    });
</script>


              
              
              
              
            </div>
            
           
            <button type="submit" class="btn btn-primary mr-2"> Submit </button>
            <button class="btn btn-light" onclick="cancel()">Cancel</button>
          </form>
        </div>
      </div>
    </div>

    <footer class="custom-footer">
        <p>&copy; 2024 Customer Information System</p>
    </footer>
  
    </body>
</html>