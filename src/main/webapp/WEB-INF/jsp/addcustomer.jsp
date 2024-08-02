<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>

<html>
    <head>
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

      <div class="col-12 grid-margin stretch-card">
        <div class="card">
          <div class="card-body">
        <form class="forms-sample" action="addcust" method="post" enctype="multipart/form-data">
            <div class="form-group">
              <label for="exampleInputName1">Name</label>
              <input type="text" class="form-control" id="exampleInputName1" placeholder="Name" name="name"/>
            </div>

            <div class="form-group">
              <label for="exampleTextarea1">Address</label>
              <textarea
                class="form-control"
                id="exampleTextarea1"
                rows="4" name="address"
              ></textarea>
            </div>

            <div class="form-group">
              <label for="exampleInputEmail3">Contact Number</label>
              <input type="number" class="form-control" id="number" placeholder="+91**********" name="number"/>
            </div>
            <!-- <div class="form-group">
              <label for="exampleInputPassword4">Password</label>
              <input type="password" class="form-control" id="exampleInputPassword4" placeholder="Password" />
            </div> -->
             <div class="form-group">
              <label for="PanCard">Pan Number</label>
              <input type="text" class="form-control" id="pan" placeholder="10 characters, including letters and digits" name="pan" />
            </div>
             <div class="form-group">
              <label for="aadhaar">Aadhaar Number</label>
              <input type="number" class="form-control" id="aadhaar" placeholder="12 Digit Number" name="aadhaar" />
            </div>
            <div class="form-group">
              <label for="exampleSelectGender">Account Type</label>
              <select class="form-control" id="exampleSelectGender" name="acctype">
                <option>Single</option>
                <option>Joint Account</option>
                <option>Company</option>
              </select>
            </div>
            
            
            
            <div class="form-group">
              <label for="status">Status</label>
              <select class="form-control" id="status" name="status">
                <option value="">Select Status</option>
                <option value="Waiting for Auditing">Waiting for Auditing</option>
                
              </select>
              
              
              <script>
    document.addEventListener('DOMContentLoaded', function() {
        document.querySelector('.forms-sample').addEventListener('submit', function(event) {
            var status = document.getElementById('status').value;
            var form = event.target; // Get the form element

            if (status === 'Waiting for Auditing') {
                alert('Form submitted for Auditing');
            } else {
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

    </body>
</html>