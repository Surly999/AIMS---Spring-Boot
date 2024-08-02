<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
    
    <!DOCTYPE html>
<html lang="en">
  <head>
  <style>
  .stylish-heading {
      font-family: 'Open Sans', sans-serif; /* Friendly and open font */
      font-size: 26px; /* Maintain readability */
      color: #333; /* Neutral and easy on the eyes */
      text-align: center;
      text-transform: uppercase;
      letter-spacing: 1px;
      padding: 20px 30px; /* Balanced padding */
      
      
  }
</style>

  
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>Auditor Dashboard</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="../assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="../assets/vendors/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="../assets/vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <link rel="stylesheet" href="../assets/vendors/jquery-bar-rating/css-stars.css" />
    <link rel="stylesheet" href="../assets/vendors/font-awesome/css/font-awesome.min.css" />
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="../assets/css/demo_1/style.css" />
    <!-- End layout styles -->
    <link rel="shortcut icon" href="../assets/images/audit.png" />
  </head>
  <body>
    <div class="container-scroller">
      <!-- partial:partials/_sidebar.html -->
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
          <li class="nav-item nav-profile border-bottom">
            <a href="#" class="nav-link flex-column">
              <div class="nav-profile-image">
                <img src="../assets/images/audit_dp.png" alt="profile" />
                <!--change to offline or busy as needed-->
              </div>
              <div class="nav-profile-text d-flex ml-0 mb-3 flex-column">
                <span class="font-weight-semibold mb-1 mt-2 text-center">Auditor</span>
                <span class="text-secondary icon-sm text-center"></span>
              </div>
            </a>
          </li>
          
          </li>
          <li class="pt-2 pb-1">
            <!-- <span class="nav-item-head">Template Pages</span> -->
          </li>
          
          
          
          <li class="nav-item">
            <a class="nav-link btn btn-light" role="button" onclick="loadViewCustomer()">
              <i class="mdi mdi-format-list-bulleted menu-icon"></i>
              <span class="menu-title">Employee Details</span>
            </a>
         
             
            
            
             <script>
  function loadViewCustomer() {
   
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
     
        document.getElementById("customersDetailsCardBody").innerHTML = this.responseText;
      }
    };
    xhttp.open("GET", "viewcustomer", true);
    xhttp.send();
  }
</script>
            
            
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
              <i class="mdi mdi-crosshairs-gps menu-icon"></i>
              <span class="menu-title">Check Compliance</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-basic">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item">
                  <a class="nav-link btn btn-light" role="button" onclick="auditorCheckAcc()">Verify Account</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link btn btn-light"  href="pages/ui-features/dropdowns.html">Approved</a>
                </li>
               
              </ul>
            </div>
          </li>
     </br> </br> </br> </br> </br> </br> </br> </br> </br> </br> </br> </br> </br> </br>  
        <a class="nav-link" href="/logout">
    <i class="mdi mdi-logout"></i>
    <span class="menu-title">Logout</span>
</a>
        </ul>
      </nav>
      
      <script>
  function auditorCheckAcc() {
   
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
     
        document.getElementById("customersDetailsCardBody").innerHTML = this.responseText;
      }
    };
    xhttp.open("GET", "viewCustByStatus", true);
    xhttp.send();
  }
</script>
      
      
      
      <!-- partial -->
      <div class="container-fluid page-body-wrapper">
        <!-- partial:partials/_settings-panel.html -->
        <div id="settings-trigger"><i class="mdi mdi-settings"></i></div>
        <div id="theme-settings" class="settings-panel">
          <i class="settings-close mdi mdi-close"></i>
          <p class="settings-heading">SIDEBAR SKINS</p>
          <div class="sidebar-bg-options selected" id="sidebar-default-theme">
            <div class="img-ss rounded-circle bg-light border mr-3"></div>Default
          </div>
          <div class="sidebar-bg-options" id="sidebar-dark-theme">
            <div class="img-ss rounded-circle bg-dark border mr-3"></div>Dark
          </div>
          <!-- <p class="settings-heading mt-2">HEADER SKINS</p> -->
        
        </div>
        <!-- partial -->
        <!-- partial:partials/_navbar.html -->
        <!-- partial:partials/_navbar.html -->
<nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
  <div class="navbar-menu-wrapper d-flex align-items-stretch">
    <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
      <span class="mdi mdi-chevron-double-left"></span>
    </button>
    <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-between">
    <!-- Add the title name here -->
    <a class="navbar-brand brand-logo-mini" href="index.html">
        <img src="../assets/images/logo-mini.svg" alt="logo" />
    </a>
    <span class="navbar-brand-title">ABC Bank</span>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <span class="navbar-brand-title"></span>
    
</div>
    <ul class="navbar-nav">
      <li class="nav-item dropdown">
        <a class="nav-link" id="messageDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
          <!-- <i class="mdi mdi-email-outline"></i> -->
        </a>
        <div class="dropdown-menu dropdown-menu-left navbar-dropdown preview-list" aria-labelledby="messageDropdown">
          
          <div class="dropdown-divider"></div>
          <a class="dropdown-item preview-item">
            <div class="preview-thumbnail">
         
      <!-- <li class="nav-item nav-logout d-none d-lg-block"> -->
        <!-- <a class="nav-link" href="index.html"> -->
          <!-- <i class="mdi mdi-home-circle"></i> -->
        </a>
      </li>
    </ul>
</nav>

        <!-- partial -->
        <div class="main-panel">
          <div class="content-wrapper pb-0">
            <div class="page-header flex-wrap">
              <div class="header-left">
              <button class="btn btn-outline-primary bg-white mb-2 mb-md-0" onclick="window.location.href='/auditor/audhome'"> Home </button>

                <button class="btn btn-primary mb-2 mb-md-0 mr-2" onclick="navigateToViewForm1()"> KYC Norms </button>
                
              </div>
              
               <script>
  function navigateToViewForm1() {
   
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
     
        document.getElementById("customersDetailsCardBody").innerHTML = this.responseText;
      }
    };
    xhttp.open("GET","viewNorms1", true);
    xhttp.send();
  }
</script>
              
              
              <div class="header-right d-flex flex-wrap mt-2 mt-sm-0">
                <!-- <div class="d-flex align-items-center"> -->
                  <!-- <a href="#"> -->
                    <!-- <p class="m-0 pr-3">Dashboard</p> -->
                  <!-- </a>
                  <a class="pl-3 mr-4" href="#">
                    <p class="m-0">ADE-00234</p>
                  </a> -->
                <!-- </div> -->
                <div id="customerFormContainer">

                  <button type="button" class="btn btn-primary mt-2 mt-sm-0 btn-icon-text" onclick="loadNormForm()">
                    <i class="mdi mdi-plus-circle"></i> Add Norms
                </button>

                <script>
  function loadNormForm() {
   
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
     
        document.getElementById("customersDetailsCardBody").innerHTML = this.responseText;
      }
    };
    xhttp.open("GET", "redirectaddnorm", true);
    xhttp.send();
  }
</script>

                  
                
                </div>

                
              </div>
            </div>
            <!-- first row starts here -->
            <div class="row">
              <div class="col-xl-9 stretch-card grid-margin">
                
                  <div class="card-body" id="customersDetailsCardBody"> <!-- Add ID here -->
                    <div class="d-flex justify-content-between flex-wrap">
                     <div>
    <div class="card-title mb-0 stylish-heading"> Welcome to Your Audit Hub</div>
</div>

                      <!-- Additional content -->
                      <div>
                        <div class="d-flex flex-wrap pt-2 justify-content-between sales-header-right">
                          <div class="d-flex mr-5">
                            <!-- <button type="button" class="btn btn-social-icon btn-outline-sales">
                              <i class="mdi mdi-inbox-arrow-down"></i>
                            </button> -->
                            <div class="pl-2">
                              <!-- <h4 class="mb-0 font-weight-semibold head-count"> $8,217 </h4>
                              <span class="font-10 font-weight-semibold text-muted">TOTAL SALES</span> -->
                            </div>
                          </div>
                          <div class="d-flex mr-3 mt-2 mt-sm-0">
                            <!-- <button type="button" class="btn btn-social-icon btn-outline-sales profit"> -->
                              <!-- <i class="mdi mdi-cash text-info"></i> -->
                            </button>
                            <div class="pl-2">
                              <!-- <h4 class="mb-0 font-weight-semibold head-count"> 2,804 </h4> -->
                              <!-- <span class="font-10 font-weight-semibold text-muted">TOTAL PROFIT</span> -->
                            </div>
                          </div>
                        </div>
                      </div>
                      <!-- End of additional content -->
                    </div>
                   
                    
                    <div>
                    <p class="text-muted font-13 mt-2 mt-sm-0"> Ensure that every account holder is on point with KYC norms and compliance 
                    </div>
                    </p>
                    <div class="flot-chart-wrapper">
                     
                        <canvas class="flot-base"></canvas>
                      </div>
                    </div>
                  </div>
               
              </div>
              
                    
                    <!-- <div class="text-white">
                    
          <footer class="footer">
            <div class="d-sm-flex justify-content-center justify-content-sm-between">
              <!-- <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright © bootstrapdash.com 2020</span>
              <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center"> Free <a href="https://www.bootstrapdash.com/" target="_blank">Bootstrap dashboard templates</a> from Bootstrapdash.com</span> -->
            <!-- </div> -->

            <!-- <div>
              <span class="text-muted d-block text-center text-sm-left d-sm-inline-block"> Distributed By: <a href="https://themewagon.com/" target="_blank">Themewagon</a></span>
            </div> -->
          </footer>
          <!-- partial -->
        </div>
        <!-- main-panel ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="../assets/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <script src="../assets/vendors/jquery-bar-rating/jquery.barrating.min.js"></script>
    <script src="../assets/vendors/chart.js/Chart.min.js"></script>
    <script src="../assets/vendors/flot/jquery.flot.js"></script>
    <script src="../assets/vendors/flot/jquery.flot.resize.js"></script>
    <script src="../assets/vendors/flot/jquery.flot.categories.js"></script>
    <script src="../assets/vendors/flot/jquery.flot.fillbetween.js"></script>
    <script src="../assets/vendors/flot/jquery.flot.stack.js"></script>
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="../assets/js/off-canvas.js"></script>
    <script src="../assets/js/hoverable-collapse.js"></script>
    <script src="../assets/js/misc.js"></script>
    <script src="../assets/js/settings.js"></script>
    <script src="../assets/js/todolist.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page -->
    <script src="../assets/js/dashboard.js"></script>
    <!-- End custom js for this page -->
  </body>
</html>