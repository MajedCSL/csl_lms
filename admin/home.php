<?php 
    include "con1.php";
    session_start(); 

    if(!isset($_SESSION['admin_user'])){
        
        echo "<script>window.open('index.php','_self')</script>";
        
    }else{
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
	<meta name="description" content="EduChamp : Education HTML Template" />
	
	<!-- OG -->
	<meta property="og:title" content="EduChamp : Education HTML Template" />
	<meta property="og:description" content="EduChamp : Education HTML Template" />
	<meta property="og:image" content="" />
	<meta name="format-detection" content="telephone=no">
	
	 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.css"/>
	 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.4.1/css/bootstrap.css">
	 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.min.css">
	 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.4.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"  />
	
	<!-- FAVICONS ICON ============================================= -->
	<link rel="icon" href="../error-404.html" type="image/x-icon" />
	<link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.png" />
	
	<!-- PAGE TITLE HERE ============================================= -->
	<title>Csl Training Institude : Admin </title>
	
	<!-- MOBILE SPECIFIC ============================================= -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!--[if lt IE 9]>
	<script src="assets/js/html5shiv.min.js"></script>
	<script src="assets/js/respond.min.js"></script>
	<![endif]-->


    <link rel="stylesheet"  href="mystyle.css">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<!-- All PLUGINS CSS ============================================= -->
	<link rel="stylesheet" type="text/css" href="assets/css/assets.css">
	<link rel="stylesheet" type="text/css" href="assets/vendors/calendar/fullcalendar.css">
	
	<!-- TYPOGRAPHY ============================================= -->
	<link rel="stylesheet" type="text/css" href="assets/css/typography.css">
	
	<!-- SHORTCODES ============================================= -->
	<link rel="stylesheet" type="text/css" href="assets/css/shortcodes/shortcodes.css">
	
	<!-- STYLESHEETS ============================================= -->
	<link rel="stylesheet" type="text/css" href="assets/css/style.css">
	<link rel="stylesheet" type="text/css" href="assets/css/dashboard.css">
	<link class="skin" rel="stylesheet" type="text/css" href="assets/css/color/color-1.css">
	




</head>
</head>
<body class="ttr-opened-sidebar ttr-pinned-sidebar">
	<?php 
include "includes/header.php";
include "includes/sidebar.php";
	 ?>
	

	<!--Main container start -->
	<main class="ttr-wrapper">
		<div class="container-fluid"><!--container-fluid start -->

			<?php

		  if(isset($_GET['dashboard'])){
			include "dashboard.php";
		   }

         else if(isset($_GET['add_student'])){
			include "add_student.php";
		   }
		 else if(isset($_GET['add_course'])){
			include "add_course.php";
		   }
		 else if(isset($_GET['view_course'])){
			include "view_course.php";
		   }
		 else if(isset($_GET['add_trainer'])){
			include "add_trainer.php";
		   }
		 else if(isset($_GET['view_trainer'])){
			include "view_trainer.php";
		   }
		 else if(isset($_GET['view_student_list'])){
			include "view_student_list.php";
		   }
		   else if(isset($_GET['students_attendance'])){
			include "students_attendance.php";
		   }
		   else if(isset($_GET['add_module'])){
               include "add_module.php";
           }
		   else if(isset($_GET['module_list'])){
               include "module_list.php";
           }
		   else{
		   include "dashboard.php";
		}
			?>
			
		</div><!--container-fluid finish -->
	</main>
	<div class="ttr-overlay"></div>

<!-- External JavaScripts -->
<script src="assets/js/jquery.min.js"></script>

<script src="assets/js/admin.js"></script>
<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
    $('#students').DataTable();
} );
</script>
</body>
</html>
<?php } ?>

