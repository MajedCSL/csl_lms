	<?php 
	include "con1.php";

	if (isset($_GET['course_id'])) {
	$course_id=$_GET['course_id'];
	}
        $get_course_sql="SELECT * FROM courses WHERE course_id='$course_id'";
		$run_courses=mysqli_query($conn,$get_course_sql);
		$count = mysqli_num_rows($run_courses);
        

		$row_course=mysqli_fetch_array($run_courses);
		$course_id=$row_course['course_id'];
		$course_name=$row_course['course_name'];
		$course_short_desc=$row_course['course_short_desc'];
		$course_long_desc=$row_course['course_long_desc'];
		$overview =$row_course['overview'];
		$course_outcome=$row_course['course_outcome'];
		$course_requirement=$row_course['course_requirement'];
		$benefit=$row_course['benefit'];
//		$course_img_id=$row_course['course_img_id'];
//		$review=$row_course['review'];
//		$venue=$row_course['venue'];
		$video_path=$row_course['video_path'];
//		$course_instructor=$row_course['course_instructor'];
//		$old_price=$row_course['old_price'];
		$new_price=$row_course['new_price'];
		

		/* $get_course_details_sql="SELECT * FROM courses_details WHERE course_id='$course_id'";
		$run_courses_details=mysqli_query($conn,$get_course_details_sql);
		while($courses_details=mysqli_fetch_array($run_courses_details)){
			$course_objective=$courses_details['objectives'];
			$course_outline=$courses_details['course_outline'];
    }
		*/

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
	
	
	<meta property="og:image" content="" />
	<meta name="format-detection" content="telephone=no">
	
	<!-- FAVICONS ICON ============================================= -->
	<link rel="icon" href="assets/images/favicon.ico" type="image/x-icon" />
	<link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.png" />

	<!-- 16.01.21-->
	 <link rel="stylesheet" href="assets/css/details/all.min.css">
        <!-- CSS Framework Resources/Stylesheet -->
        <link rel="stylesheet" href="assets/css/details/bootstrap.min.css">
        <!-- Slick Slider CSS -->
        <link rel="stylesheet" href="assets/css/details/slick.css">
        <!-- Custom Youtube/Vimeo Player -->
        <link rel="stylesheet" href="https://cdn.plyr.io/3.6.2/plyr.css" />
        <!-- Main Stylesheet -->
        <link rel="stylesheet" href="assets/css/details/style.css">
        <!-- 16.01.21-->
	
	<!-- PAGE TITLE HERE ============================================= -->
	<title>CSL Training Institute </title>
	
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
	
</head>
<body id="bg">
<div class="page-wraper">
<div id="loading-icon-bx"></div>
<div class="onepage"></div>
  <?php 
include "includes/header.php";
   ?>
    <!-- Content -->
    <div class="page-content bg-white">
        <!-- inner page banner -->
        <div class="page-banner ovbl-dark" style="background-image:url(assets/images/banner/banner1.jpg);">
            <div class="container">
                <div class="page-banner-entry">
                    <h1 class="text-white">Courses Details</h1>
				 </div>
            </div>
        </div>
		<!-- Breadcrumb row -->
		<div class="breadcrumb-row">
			<div class="container">
				<ul class="list-inline">
					<li><a href="#">Home</a></li>
					<li>Courses Details</li>
				</ul>
			</div>
		</div>
		<!-- Breadcrumb row END -->
        <!-- inner page banner END -->
		<div class="content-block">
            <!-- About Us -->
			<div class="section-area section-sp1">
                <div class="container">
					 <div class="row">
						<div class="col-lg-8 col-md-7 col-sm-12">
							<div class="courses-post">
								<div class="ttr-post-media media-effect">
<!--									<a href="#"><img src="assets/images/courses/--><?php //echo $course_img_id; ?><!--" alt=""></a>-->
<!--                                    <video width="320" height="240" autoplay>-->
<!--                                        <source src="--><?php //echo $video_path; ?><!--" type="video/mp4">-->
<!--                                      <source src="movie.ogg" type="video/ogg">-->
<!--                                        Your browser does not support the video tag.-->
<!--                                    </video>-->
<!--                                    <video src="--><?php //echo $video_path; ?><!--"></video>-->
                                    <embed height="495px" width="100%" src="<?php echo $video_path; ?>">
                                </div>

								<div class="ttr-post-info">
									<div class="ttr-post-title ">
										<h2 class="post-title"><?php echo $course_name; ?></h2>
									</div>
									<div class="ttr-post-text">
										<p><?php echo $course_long_desc; ?></p>
									</div>
								</div>

<!--								-->
								 <div class="funnel-content-section">
                        <div class="funnel-video-content">

                        	<!-- Video Header -->
                            <div class="course-heading-wrapper">
                                <div class="course-heading funnel-pad-bottom-long">
                                    <h1 class="funnel-section-heading flex-auto">
                                        <?php echo $course_name; ?>
                                    </h1>
                                    <a href="#" class="give-feedback-btn"> <i class="fas fa-envelope-open-text"></i>Please provied Rating </a>
                                </div>

                                <p><?php echo $course_long_desc; ?></p>
                            </div>
							
							<!-- Video Link -->
                            <div id="player" data-plyr-provider="vimeo" data-plyr-embed-id="76979871"></div>

                            <!-- Video Description -->
                            <div class="video-description">
                                <p><?php echo $course_long_desc; ?></p>
                            </div>



                            <!-- About Course Accordion -->


                            <div id="aboutCourse" id="about-course-accordion">
                                
                                <!-- Single Accordion -->
                                <div class="about-course-accordion-single-content">
                                    <div class="about-course-module-header" id="moduleCourseOne">
                                        <div class="about-course-collpase-button" data-toggle="collapse" data-target="#aboutCoursecollapseOne" aria-expanded="false" aria-controls="collapseOne">
                                            <h6>Over View</h6>
                                        </div>
                                    </div>
                                    <div id="aboutCoursecollapseOne" class="collapse about-course-content" aria-labelledby="moduleCourseOne" data-parent="#aboutCourse">
                                    <p><?php echo $benefit; ?></p>                                    </div> <!-- /.collapse -->
                                </div> <!-- /.about-course-accordion-single-content -->
                                
                                <!-- Single Accordion -->
                                <div class="about-course-accordion-single-content">
                                    <div class="about-course-module-header" id="moduleCourseTwo">
                                        <div class="about-course-collpase-button" data-toggle="collapse" data-target="#aboutCoursecollapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                            <h6>Course Outcome</h6>
                                        </div>
                                    </div>
                                    <div id="aboutCoursecollapseTwo" class="collapse about-course-content" aria-labelledby="moduleCourseTwo" data-parent="#aboutCourse">
                                        <p><?php echo $course_outcome; ?></p>                                    </div> <!-- /.collapse -->
                                </div> <!-- /.about-course-accordion-single-content -->


                                <!-- Single Accordion -->
                                <div class="about-course-accordion-single-content">
                                    <div class="about-course-module-header" id="moduleCourseThree">
                                        <div class="about-course-collpase-button" data-toggle="collapse" data-target="#aboutCoursecollapseThree" aria-expanded="false" aria-controls="collapseThree">
                                            <h6>Course Pre Requirements</h6>
                                        </div>
                                    </div>
                                    <div id="aboutCoursecollapseThree" class="collapse about-course-content" aria-labelledby="moduleCourseThree" data-parent="#aboutCourse">
                                        <p><?php echo $course_requirement; ?></p>                                    </div> <!-- /.collapse -->
                                </div> <!-- /.about-course-accordion-single-content -->

                            </div> <!-- /.about-course-accordion -->


                            <!-- Try it Block -->

                            <div class="try-it-block">
                                <div class="try-it-content-wrapper">
                                    <h4>Benefits Of The Course</h4>
                                    <p><?php echo $benefit; ?></p>
                                </div>
                            </div>


                            <!-- Course Next/Previous Button -->


                            <div class="course-next-and-previous-button">

                                <a href="start-course.php?course_id=<?php echo $course_id; ?>" class="funnel-button course-action-button next-button">Enroll Now</a>
                            </div>


                        </div>
                    </div>

							</div>

							
						</div>
						<div class="col-lg-4 col-md-5 col-sm-12 m-b30">
							<div class="bg-primary text-white contact-info-bx m-b30">
								<h2 class="m-b10 title-head">Contact <span>Information</span></h2>
								<p>CSL Training Institute</p>
								<div class="widget widget_getintuch">	
									<ul>
										<li><i class="ti-location-pin"></i>450 Rd No 31, Dhaka 1205</li>
										<li><i class="ti-mobile"></i>Mobile: 01761-743962</li>
										<li><i class="ti-email"></i>Support@csl.com</li>
									</ul>
								</div>
								<h5 class="m-t0 m-b20">Follow Us</h5>
								<ul class="list-inline contact-social-bx">
									<li><a href="#" class="btn outline radius-xl"><i class="fa fa-facebook"></i></a></li>
									<li><a href="#" class="btn outline radius-xl"><i class="fa fa-twitter"></i></a></li>
									<li><a href="#" class="btn outline radius-xl"><i class="fa fa-linkedin"></i></a></li>
									<li><a href="#" class="btn outline radius-xl"><i class="fa fa-google-plus"></i></a></li>
								</ul>
							</div>
                            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14604.444352750988!2d90.3940678!3d23.7790582!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x234ef6e8e90a1b2b!2sComputer%20Services%20Ltd.!5e0!3m2!1sen!2sbd!4v1610622017724!5m2!1sen!2sbd" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>

							<!-- Instructor here-->


       <!-- Instructor here-->
						</div>
					</div>
				</div>
            </div>
        </div>
		<!-- contact area END -->
		
    </div>
    <!-- Content END-->
	<!-- Footer ==== -->
    <footer>
        <div class="footer-top">

            <div class="container">
                <div class="row">
					<div class="col-lg-4 col-md-12 col-sm-12 footer-col-4">
                        <div class="widget">
                            <h5 class="footer-title">Sign Up For A Newsletter</h5>
							<p class="text-capitalize m-b20">Weekly Breaking news analysis and cutting edge advices on job searching.</p>
                            <div class="subscribe-form m-b20">
								<form class="subscription-form" action="#" method="post">
									<div class="ajax-message"></div>
									<div class="input-group">
										<input name="email" required="required"  class="form-control" placeholder="Your Email Address" type="email">
										<span class="input-group-btn">
											<button name="submit" value="Submit" type="submit" class="btn"><i class="fa fa-arrow-right"></i></button>
										</span> 
									</div>
								</form>
							</div>
                        </div>
                    </div>
					<div class="col-12 col-lg-5 col-md-7 col-sm-12">
						<div class="row">
							<div class="col-4 col-lg-4 col-md-4 col-sm-4">
								<div class="widget footer_widget">
									<h5 class="footer-title">Company</h5>
									<ul>
										<li><a href="index.html">Home</a></li>
										<li><a href="about-1.html">About</a></li>
										<li><a href="faq-1.html">FAQs</a></li>
										<li><a href="contact-1.html">Contact</a></li>
									</ul>
								</div>
							</div>
							<div class="col-4 col-lg-4 col-md-4 col-sm-4">
								<div class="widget footer_widget">
									<h5 class="footer-title">Get In Touch</h5>
									<ul>
										<li><a href="#">Dashboard</a></li>
										<li><a href="blog-classic-grid.html">Blog</a></li>
										<li><a href="portfolio.html">Portfolio</a></li>
										<li><a href="event.html">Event</a></li>
									</ul>
								</div>
							</div>
							<div class="col-4 col-lg-4 col-md-4 col-sm-4">
								<div class="widget footer_widget">
									<h5 class="footer-title">Courses</h5>
									<ul>
										<li><a href="courses.html">Courses</a></li>
										<li><a href="courses-details.html">Details</a></li>
										<li><a href="membership.html">Membership</a></li>
										<li><a href="profile.html">Profile</a></li>
									</ul>
								</div>
							</div>
						</div>
                    </div>
					<div class="col-12 col-lg-3 col-md-5 col-sm-12 footer-col-4">
                        <div class="widget widget_gallery gallery-grid-4">
                            <h5 class="footer-title">Our Gallery</h5>
                            <ul class="magnific-image">
								<li><a href="assets/images/gallery/pic1.jpg" class="magnific-anchor"><img src="assets/images/gallery/pic1.jpg" alt=""></a></li>
								<li><a href="assets/images/gallery/pic2.jpg" class="magnific-anchor"><img src="assets/images/gallery/pic2.jpg" alt=""></a></li>
								<li><a href="assets/images/gallery/pic3.jpg" class="magnific-anchor"><img src="assets/images/gallery/pic3.jpg" alt=""></a></li>
								<li><a href="assets/images/gallery/pic4.jpg" class="magnific-anchor"><img src="assets/images/gallery/pic4.jpg" alt=""></a></li>
								<li><a href="assets/images/gallery/pic5.jpg" class="magnific-anchor"><img src="assets/images/gallery/pic5.jpg" alt=""></a></li>
								<li><a href="assets/images/gallery/pic6.jpg" class="magnific-anchor"><img src="assets/images/gallery/pic6.jpg" alt=""></a></li>
								<li><a href="assets/images/gallery/pic7.jpg" class="magnific-anchor"><img src="assets/images/gallery/pic7.jpg" alt=""></a></li>
								<li><a href="assets/images/gallery/pic8.jpg" class="magnific-anchor"><img src="assets/images/gallery/pic8.jpg" alt=""></a></li>
							</ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 text-center"> <a target="_blank" href="https://www.templateshub.net">Templates Hub</a></div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer END ==== -->
    <button class="back-to-top fa fa-chevron-up" ></button>
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
