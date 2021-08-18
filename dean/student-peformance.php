<?php
    include '../php/middleware.php';
    include '../php/d_student-peformace.php';
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Student Performance | Dean</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="../assets/vendors/iconfonts/mdi/css/materialdesignicons.css">
  <link rel="stylesheet" href="../assets/vendors/css/vendor.addons.css">
  <!-- endinject -->
  <!-- vendor css for this page -->
  <!-- End vendor css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="../assets/css/shared/style.css">
  <!-- endinject -->
  <!-- Layout style -->
  <link rel="stylesheet" href="../assets/css/demo_1/style.css">
  <!-- Layout style -->
  <link rel="shortcut icon" href="../assets/images/favicon.ico" />
</head>

<body class="header-fixed">
  <!-- partial:../../partials/_header.html -->
  <nav class="t-header">
    <div class="t-header-brand-wrapper">
      <a href="index.html">
        <img class="logo" src="../assets/images/logo.png" alt="">
        <img class="logo-mini" src="../assets/images/logo_mini.png" alt="">
      </a>
    </div>
    <div class="t-header-content-wrapper">
      <div class="t-header-content">
        <button class="t-header-toggler t-header-mobile-toggler d-block d-lg-none">
          <i class="mdi mdi-menu"></i>
        </button>
      </div>
    </div>
  </nav>
  <!-- partial -->
  <div class="page-body">
    <!-- partial:../../partials/_sidebar.html -->
    <div class="sidebar">
      <div class="user-profile">
        <div class="display-avatar animated-avatar">
          <img class="profile-img img-lg rounded-circle" src="../assets/images/profile/male/image_1.png" alt="profile image">
        </div>
        <div class="info-wrapper">
          <h4 class="user-name"><?php echo $_SESSION["name"]; ?></h4>
        </div>
      </div>
      <ul class="navigation-menu">
        <li class="nav-category-divider">MAIN</li>
        <li>
          <a href="dashboard.php">
            <span class="link-title">Dashboard</span>
            <i class="mdi mdi-gauge link-icon"></i>
          </a>
        </li>
        <li>
          <a href="enrollment-comparison.php">
            <span class="link-title">Enrollment Comparison</span>
            <i class="mdi mdi-gauge link-icon"></i>
          </a>
        </li>
        <li>
          <a href="plo-comparison.php">
            <span class="link-title">PLO Comparison</span>
            <i class="mdi mdi-gauge link-icon"></i>
          </a>
        </li>
        <li class="active">
          <a href="student-peformance.php">
            <span class="link-title">Student Peformace</span>
            <i class="mdi mdi-gauge link-icon"></i>
          </a>
        </li>
        <li>
          <a href="../php/login.php?logout=1">
            <span class="link-title">Logout</span>
            <i class="mdi mdi-logout link-icon"></i>
          </a>
        </li>
      </ul>
    </div>
    <!-- partial -->
    <div class="page-content-wrapper">
      <div class="page-content-wrapper-inner">
        <div class="row">
          <div class="col-6 py-6">
            <h4>Student Performance</h4>
            <div class="viewport-header">
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb has-arrow">
                  <li class="breadcrumb-item">
                    <a href="dasboard.php">Dean</a>
                  </li>
                  <li class="breadcrumb-item active" aria-current="page">Student Performance Trend</li>
                </ol>
              </nav>
            </div>
          </div>
          <div class="col-6 d-flex justify-content-end">
            <form class="ml-4" style="width: 300px;" method="GET">
              <div class="input-group">
                <input type="text" class="form-control mt-1" id="inlineFormInputGroup" placeholder="Semester" name="semester" autocomplete="off" <?php if(isset($_GET['semester'])){echo "value='".$_GET['semester']."'";}?>>
                <button class="btn btn-primary btn-rounded" type="submit"><i class="mdi mdi-arrow-right-thick"></i></button>
              </div>
            </form>
          </div>
        </div>
        <div class="content-viewport">
          <div class="row d-flex justify-content-center mt-5">
            <div class="col-6" <?php if(isset($_GET['semester'])){echo "hidden";} ?>>
              <div class="grid">
                <div class="grid-body">
                  <div class="item-wrapper">
                    <form method="GET">
                      <div class="form-group input-rounded">
                        <input type="text" class="form-control" placeholder="Semester" spellcheck="false" data-ms-editor="true" name="semester">
                      </div>
                      <div class="text-center">
                        <button type="submit" class="btn btn-primary">Submit</button>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="row" <?php if(!isset($_GET['semester'])){echo "hidden";} ?>>
            <div class="col-md-6">
              <div class="grid">
                <div class="grid-body">
                  <h2 class="grid-title">Department Wise Performance Trend</h2>
                  <div class="item-wrapper">
                    <canvas id="department-trend" width="400" height="200"></canvas>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-6">
              <div class="grid">
                <div class="grid-body">
                  <h2 class="grid-title">Program Wise Performance Trend</h2>
                  <div class="item-wrapper">
                    <canvas id="program-trend" width="400" height="200"></canvas>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-6">
              <div class="grid">
                <div class="grid-body">
                  <h2 class="grid-title">Course Wise Performance Trend</h2>
                  <div class="item-wrapper">
                    <canvas id="course-trend" width="400" height="200"></canvas>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-6">
              <div class="grid">
                <div class="grid-body">
                  <h2 class="grid-title">Faculty Wise Performance Trend</h2>
                  <div class="item-wrapper">
                    <canvas id="faculty-trend" width="400" height="200"></canvas>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- content viewport ends -->
      <!-- partial:../../partials/_footer.html -->
      <footer class="footer">
        <div class="row">
          <div class="col-sm-6 text-center text-sm-right order-sm-1">
            <ul class="text-gray">
              <li><a href="#">Terms of use</a></li>
              <li><a href="#">Privacy Policy</a></li>
            </ul>
          </div>
          <div class="col-sm-6 text-center text-sm-left mt-3 mt-sm-0">
            <small class="text-muted d-block">Copyright © 2019 <a href="http://www.uxcandy.co"
                target="_blank">UXCANDY</a>. All rights reserved</small>
            <small class="text-gray mt-2">Handcrafted With <i class="mdi mdi-heart text-danger"></i></small>
          </div>
        </div>
      </footer>
      <!-- partial -->
    </div>
    <!-- page content ends -->
  </div>
  <!--page body ends -->
  <!-- SCRIPT LOADING START FORM HERE /////////////-->
  <!-- plugins:js -->
  <script src="../assets/vendors/js/core.js"></script>
  <script src="../assets/vendors/js/vendor.addons.js"></script>
  <script src="../assets/vendors/jquery/jquery-3.6.0.min.js"></script>
  <!-- endinject -->
  <!-- Vendor Js For This Page Ends-->
  <script src="../assets/vendors/chartjs/Chart.min.js"></script>
  <script src="../assets/js/coolors.js"></script>
  <!-- Vendor Js For This Page Ends-->

  <script>
  var ctx = $('#department-trend');
  var myChart = new Chart(ctx, {
      type: 'bar',
      data: {
          labels: [
            <?php
              if($department){
                foreach($department as $k => $v){
                  echo "'".strtoupper($k)."', ";
                }
              }
            ?>
          ],
          datasets: [{
              label: 'Performance Trend (AVG CGPA)',
              data: [
                <?php
                  if($department){
                    foreach($department as $k => $v){
                      echo "$v, ";
                    }
                  }
                ?>
              ],
              backgroundColor: [
                <?php
                  $indx=0;
                  if($department){
                    foreach($department as $k => $v){
                      echo "colors[".$indx."], "; 
                      $indx++;
                    }
                  }
                ?>
              ]
          }]
      },
      options: {
          scales: {
              y: {
                  beginAtZero: true
              }
          }
      }
  });
  var ctx = $('#program-trend');
  var myChart = new Chart(ctx, {
      type: 'bar',
      data: {
          labels: [
            <?php
              if($program){
                foreach($program as $k => $v){
                  echo "'$k', ";
                }
              }
            ?>
          ],
          datasets: [{
              label: 'Performance Trend (AVG CGPA)',
              data: [
                <?php
                  if($program){
                    foreach($program as $k => $v){
                      echo "$v, ";
                    }
                  }
                ?>
              ],
              backgroundColor: [
                <?php
                  $indx=2;
                  if($program){
                    foreach($program as $k => $v){
                      echo "colors[".$indx."], "; 
                      $indx++;
                    }
                  }
                ?>
              ]
          }]
      },
      options: {
          scales: {
              y: {
                  beginAtZero: true
              }
          }
      }
  });
  var ctx = $('#course-trend');
  var myChart = new Chart(ctx, {
      type: 'bar',
      data: {
          labels: [
            <?php
              if($course){
                foreach($course as $k => $v){
                  echo "'$k', ";
                }
              }
            ?>
          ],
          datasets: [{
              label: 'Performance Trend (AVG GPA)',
              data: [
                <?php
                  if($course){
                    foreach($course as $k => $v){
                      echo "$v, ";
                    }
                  }
                ?>
              ],
              backgroundColor: [
                <?php
                  $indx=8;
                  if($course){
                    foreach($course as $k => $v){
                      echo "colors[".$indx."], "; 
                      $indx++;
                    }
                  }
                ?>
              ]
          }]
      },
      options: {
          scales: {
              y: {
                  beginAtZero: true
              }
          }
      }
  });
  var ctx = $('#faculty-trend');
  var myChart = new Chart(ctx, {
      type: 'bar',
      data: {
          labels: [
            <?php
              if($faculty){
                foreach($faculty as $k => $v){
                  echo "'$k', ";
                }
              }
            ?>
          ],
          datasets: [{
              label: 'Performance Trend (AVG GPA)',
              data: [
                <?php
                  if($faculty){
                    foreach($faculty as $k => $v){
                      echo "$v, ";
                    }
                  }
                ?>
              ],
              backgroundColor: [
                <?php
                  $indx=4;
                  if($faculty){
                    foreach($faculty as $k => $v){
                      echo "colors[".$indx."], "; 
                      $indx++;
                    }
                  }
                ?>
              ]
          }]
      },
      options: {
          scales: {
              y: {
                  beginAtZero: true
              }
          }
      }
  });
</script>
</body>

</html>