<?php
session_start();
include 'con1.php';
?>

<!DOCTYPE html>
<html lang="en">


<head>

	<!-- META ============================================= -->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="keywords" content="" />
	<meta name="author" content="" />
	<meta name="robots" content="" />
	
	<!-- DESCRIPTION -->
	<meta name="description" content="Contessa Training Institue" />
	
	<!-- OG -->
	<meta property="og:title" content="Contessa Training Institue" />
	<meta property="og:description" content="EduChamp : Education HTML Template" />
	<meta property="og:image" content="" />
	<meta name="format-detection" content="telephone=no">
	
	<!-- FAVICONS ICON ============================================= -->
	<link rel="icon" href="assets/images/favicon.ico" type="image/x-icon" />
	<link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.png" />
	
	<!-- PAGE TITLE HERE ============================================= -->
	<title>Contessa Training Institute  </title>
	
	<!-- MOBILE SPECIFIC ============================================= -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!--[if lt IE 9]>
	<script src="assets/js/html5shiv.min.js"></script>
	<script src="assets/js/respond.min.js"></script>
	<![endif]-->
	
	<!-- All PLUGINS CSS ============================================= -->
	<link rel="stylesheet" type="text/css" href="assets/css/assets.css">
	
	<!-- TYPOGRAPHY ============================================= -->
	<link rel="stylesheet" type="text/css" href="assets/css/typography.css">
	
	<!-- SHORTCODES ============================================= -->
	<link rel="stylesheet" type="text/css" href="assets/css/shortcodes/shortcodes.css">
	
	<!-- STYLESHEETS ============================================= -->
	<link rel="stylesheet" type="text/css" href="assets/css/style.css">
	<link class="skin" rel="stylesheet" type="text/css" href="assets/css/color/color-1.css">

	

<body id="bg">
<div class="page-wraper">
	<div id="loading-icon-bx"></div>
	<div class="account-form">
		<div class="account-head" style="background-image:url(assets/images/background/bg2.jpg);">
			<a href="http://contessabd.com/"><img src="assets/images/logo-white.png" alt=""></a>
		</div>
		<div class="account-form-inner">
			<div class="account-container">
				<div class="heading-bx left">
				<p><? if(!$row){echo "Wrong Username or password";} ?><p>
					<h2 class="title-head">Login to your Admin <span>Account</span></h2>
					
				</div>	
				<form action="" method="post" class="contact-bx">
					<div class="row placeani">
						<div class="col-lg-12">
							<div class="form-group">
								<div class="input-group">
									<label>Username</label>
									<input name="username" type="text" required class="form-control">
								</div>
							</div>
						</div>
						<div class="col-lg-12">
							<div class="form-group">
								<div class="input-group"> 
									<label>Your Password</label>
									<input name="password" type="password" class="form-control" required>
								</div>
							</div>
						</div>
						
						<div class="col-lg-12 m-b30">
							<button name="admin_login" type="submit" value="Submit" class="btn button-md">Login</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<!-- External JavaScripts -->
<script src="assets/js/jquery.min.js"></script>

<script src="assets/vendors/bootstrap/js/popper.min.js"></script>
<script src="assets/vendors/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/vendors/bootstrap-select/bootstrap-select.min.js"></script>
<script src="assets/vendors/bootstrap-touchspin/jquery.bootstrap-touchspin.js"></script>
<script src="assets/vendors/magnific-popup/magnific-popup.js"></script>
<script src="assets/vendors/counter/waypoints-min.js"></script>
<script src="assets/vendors/counter/counterup.min.js"></script>
<script src="assets/vendors/imagesloaded/imagesloaded.js"></script>
<script src="assets/vendors/masonry/masonry.js"></script>
<script src="assets/vendors/masonry/filter.js"></script>
<script src="assets/vendors/owl-carousel/owl.carousel.js"></script>
<script src="assets/js/functions.js"></script>
<script src="assets/js/contact.js"></script>
<script src='assets/vendors/switcher/switcher.js'></script>

</body>

</html>


<?php 

if (isset( $_POST['admin_login'])){
$username= mysqli_real_escape_string($conn,$_POST['username']);
$password=mysqli_real_escape_string($conn,$_POST["password"]);

$get_admin_sql = "SELECT * FROM admin WHERE admin_user='$username' AND admin_password='$password'";

  $run_get_admin=mysqli_query($conn,$get_admin_sql);
  $count=mysqli_num_rows($run_get_admin);

  if ($count==1) {
  $_SESSION['admin_user']=$username;
     // echo "<script>alert('You Are Logged in Successfully.')</script>";
      echo "<script>window.open('home.php','_self')</script>";
  }else{
                echo "<script>alert('Username or Password is Wrong !')</script>";

  }

// $ret=mysqli_query( $conn, "SELECT * FROM student_registration WHERE username='$username' AND password='$password' ") or die("Could not execute query: " .mysqli_error($conn));
// 		$row = mysqli_fetch_assoc($ret);
// 		if(!$row) {
			
// 			header("Location: login.php");
		
// 		}
// 		else {
// 	        session_start();
// 	        $_SESSION['user']=$username;
			
// 			header('location: index.php');
// 		}
 }
 ?>
