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
$course_img_id=$row_course['course_img_id'];
$review=$row_course['review'];
$venue=$row_course['venue'];
$course_instructor=$row_course['course_instructor'];
$old_price=$row_course['old_price'];
$new_price=$row_course['new_price'];



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
    <!-- Favicon -->
    <link rel="shortcut icon" href="assets/img/favicon.png" />
    <!-- Icon Pack Stylesheet -->
    <link rel="stylesheet" href="assets/css/all.min.css">
    <!-- CSS Framework Resources/Stylesheet -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <!-- Slick Slider CSS -->
    <link rel="stylesheet" href="assets/css/slick.css">
    <!-- Custom Youtube/Vimeo Player -->
    <link rel="stylesheet" href="https://cdn.plyr.io/3.6.2/plyr.css" />
    <!-- Main Stylesheet -->
    <link rel="stylesheet" href="assets/css/style.css">

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
                    <h1 class="text-white">Start Course</h1>
                </div>
            </div>
        </div>
        <!-- Breadcrumb row -->
        <div class="breadcrumb-row">
            <div class="container">
                <ul class="list-inline">
                    <li><a href="#">Home</a></li>
                    <li>Start Course</li>
                </ul>
            </div>
        </div>



        <div class="funnel-video-content-wrapper">
            <div class="custom-container">
                <div class="content-row">
                    <div class="funnel-sidebar">
                        <div id="accordion" id="funnels-accordion">
                            <div class="accordion-content">
                                <div class="pane-course-item layout horizontal">
                                    <div class="pane-course-title flex self-center">
                                        <div class="pane-caption">Course</div>
                                        <h4 class="funnel-subsection-heading">
                                            <a class="funnel-unstyled-link" href="#">
                                                <?php echo $course_name; ?>
                                            </a>
                                        </h4>
                                    </div>
                                    <div class="funnel-course-header" id="headingOne">
                                        <div class="funnel-collpase-button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                            <i class="fas fa-chevron-up"></i>
                                        </div>
                                    </div>
                                </div>

                                <!--======Course Curricullam List=====-->

                                <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
                                    <div class="funnel-content-body">
                                        <div class="paper-card">
                                            <ul class="pane-courses funnel-unstyled-list">
                                                <li  class="pane-courses-li">
                                                    <ul class="pane-lessons funnel-unstyled-list ">


                                                    <?php
                                                    $get_module_sql="SELECT * FROM course_module WHERE course_id='$course_id'";
                                                    $run_module=mysqli_query($conn,$get_module_sql);


                                                    while($row_module=mysqli_fetch_array($run_module)){
                                                        $module_id=$row_module['id'];
                                                        $module_title=$row_module['course_module_title'];
                                                        $module_des=$row_module['course_module_des'];


                                                        ?>

                                                        <!-- Course Single Lesson -->
                                                        <li class="pane-lessons-li funnel-gutter-right-small active">
                                                            <div class="layout vertical">
                                                                <span class="layout horizontal center">
                                                                    <span>
                                                                    <i class="funnel-cicle-icon"></i>
                                                                    </span>
                                                                    <div class="pane-lesson-title">
                                                                        <div class="pane-caption">
                                                                           Chapter-1
                                                                        </div>
                                                                        <a class="flex pane-link no-outline" href="#">
                                                                         <?php echo $module_title ;?>
                                                                        </a>
                                                                    </div>
                                                                </span>
                                                            </div>
                                                        </li>
                                                        <?php
                                                    }
                                                    ?>



                                                        <!-- Course Single Lesson -->
                                                        <li class="pane-lessons-li funnel-gutter-right-small">
                                                            <div class="layout horizontal center">
                                                                <span>
                                                                <i class="funnel-cicle-icon"></i>
                                                                </span>
                                                                <a class="pane-lesson-title pane-course-exam-link no-outline" href="#">
                                                                    Exam

                                                                    <p>Flow exam roul </p>
                                                                </a>
                                                            </div>
                                                        </li>

                                                    </ul> <!-- /.pane-lessons -->
                                                </li> <!-- /.pane-courses-li -->
                                            </ul> <!-- /.pane-courses -->

                                        </div> <!-- /.paper-card -->
                                    </div> <!-- /.funnel-content-body -->
                                </div> <!-- /.collapse -->
                            </div> <!-- /.accordion-content -->
                        </div> <!-- /#accordion -->

                        <!-- Activity Scrollbar -->

                    </div> <!-- /.funnel-sidebar -->


                    <!--=====Page Right Side Content=====-->

                    <div class="funnel-content-section">
                        <div class="funnel-video-content">

                            <!-- Video Header -->
                            <div class="course-heading-wrapper">
                                <div class="course-heading funnel-pad-bottom-long">
                                    <h1 class="funnel-section-heading flex-auto">
                                        <?php echo $course_name; ?>
                                    </h1>
                                    <a href="#" class="give-feedback-btn"> <i class="fas fa-envelope-open-text"></i> রেটিং দিন</a>
                                </div>

                                <p><?php echo $course_long_desc; ?></p>
                            </div>

                            <!-- Video Link -->
                            <div id="player" data-plyr-provider="vimeo" data-plyr-embed-id="76979871"></div>

                            <!-- Video Description -->
                            <div class="video-description">
                                <p>An online class is a course conducted over the Internet. ... Online classes are generally self-paced, allowing for greater flexibility in completing coursework. Some examples of online courses are MOOCs, or Massive Open Online Courses, as produced by organizations such as edX or Coursera.</p>
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
                                        <p>An online class is a course conducted over the Internet. ... Online classes are generally self-paced, allowing for greater flexibility in completing coursework. Some examples of online courses are MOOCs, or Massive Open Online Courses, as produced by organizations such as edX or Coursera</p>
                                    </div> <!-- /.collapse -->
                                </div> <!-- /.about-course-accordion-single-content -->

                                <!-- Single Accordion -->
                                <div class="about-course-accordion-single-content">
                                    <div class="about-course-module-header" id="moduleCourseTwo">
                                        <div class="about-course-collpase-button" data-toggle="collapse" data-target="#aboutCoursecollapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                            <h6>couses detail</h6>
                                        </div>
                                    </div>
                                    <div id="aboutCoursecollapseTwo" class="collapse about-course-content" aria-labelledby="moduleCourseTwo" data-parent="#aboutCourse">
                                        <p>An online class is a course conducted over the Internet. ... Online classes are generally self-paced, allowing for greater flexibility in completing coursework. Some examples of online courses are MOOCs, or Massive Open Online Courses, as produced by organizations such as edX or Coursera</p>
                                    </div> <!-- /.collapse -->
                                </div> <!-- /.about-course-accordion-single-content -->


                                <!-- Single Accordion -->
                                <div class="about-course-accordion-single-content">
                                    <div class="about-course-module-header" id="moduleCourseThree">
                                        <div class="about-course-collpase-button" data-toggle="collapse" data-target="#aboutCoursecollapseThree" aria-expanded="false" aria-controls="collapseThree">
                                            <h6>Courses outcome</h6>
                                        </div>
                                    </div>
                                    <div id="aboutCoursecollapseThree" class="collapse about-course-content" aria-labelledby="moduleCourseThree" data-parent="#aboutCourse">
                                        <p>An online class is a course conducted over the Internet. ... Online classes are generally self-paced, allowing for greater flexibility in completing coursework.  </p>
                                        <p>Some examples of online courses are MOOCs, or Massive Open Online Courses, as produced by organizations such as edX or Coursera</p>
                                    </div> <!-- /.collapse -->
                                </div> <!-- /.about-course-accordion-single-content -->

                            </div> <!-- /.about-course-accordion -->


                            <!-- Try it Block -->

                            <div class="try-it-block">
                                <div class="try-it-content-wrapper">
                                    <h4>give Exam</h4>
                                    <p>Some examples of online courses are MOOCs, or Massive Open Online Courses, as produced by organizations such as edX or Coursera</p>

                                    <p>Some examples of online courses are MOOCs, or Massive Open Online Courses, as produced by organizations such as edX or Coursera</p>
                                </div>
                            </div>


                            <!-- Course Next/Previous Button -->


                            <div class="course-next-and-previous-button">
                                <a href="#" class="funnel-button course-action-button previous-button">Previes</a>
                                <a href="#" class="funnel-button course-action-button next-button">Next</a>
                            </div>



                        </div>
                    </div> <!-- /.funnel-content-section -->
                </div><!-- /.content-row -->
            </div><!-- /.custom-container -->
        </div><!-- /.funnel-video-content-wrapper -->


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
                    <div class="col-lg-12 col-md-12 col-sm-12 text-center">CSl Traning Institute</div>
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
<!-- Script for Video -->
<script src="https://cdn.plyr.io/3.6.2/plyr.js"></script>

<script>
    const player = new Plyr('#player');
</script>



<!-- Optional JavaScript -->
<script src="assets/js/jquery-3.2.1.min.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/slick.min.js"></script>
<script src="assets/js/jquery.sticky.js"></script>
<script src="assets/js/typed.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/active.js"></script>
</body>

</html>
