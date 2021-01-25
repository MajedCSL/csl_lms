<?php
include "con1.php";
if(isset($_SESSION['admin_user'])){

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
    <div class="db-breadcrumb">
        <h4 class="breadcrumb-title">Add Course</h4>
        <ul class="db-breadcrumb-list">
            <li><a href="#"><i class="ti-user"></i>Courses</a></li>
            <li>Add Course</li>
        </ul>
    </div>
    <div class="row">
        <!-- Your Profile Views Chart -->
        <div class="col-lg-12 m-b30">
            <div class="widget-box">
                <div class="wc-title">
                    <h4>Add Course</h4>
                </div>
                <div class="widget-inner">
                    <form action="" class="edit-profile m-b30" method="POST" enctype="multipart/form-data">
                        <div class="row">
                            <div class="col-12" style="margin-bottom: 10px;">
                                <div>
                                    <label class="col-form-label">Course title</label>
                                    <input class="form-control" name="course_name" type="text" placeholder="">
                                </div>
                            </div>

                            <div class="form-group col-6">
                                <div>
                                    <label class="col-form-label">Course short description</label>
                                    <textarea class="form-control" name="course_short_desc" placeholder=""></textarea>
                                </div>
                            </div>
                            <div class="form-group col-6">
                                <div>
                                    <label class="col-form-label">Course long description</label>
                                    <textarea class="form-control" name="course_long_desc" placeholder=""></textarea>
                                </div>
                            </div>
                            <div class="form-group col-6">

                                <div>
                                    <label class="col-form-label">Course start date</label>
                                    <input class="form-control" name="course_start_date" type="date" value="">
                                </div>
                            </div>
                            <div class="form-group col-6">
                                <div>
                                    <label class="col-form-label">Course end date</label>
                                    <input  class="form-control" type="date" name="course_end_date" placeholder="">
                                </div>
                            </div>
                            <div class="form-group col-6">
                                <label class="col-form-label">No of class/Session</label>
                                <div>
                                    <input class="form-control" type="text" name="no_of_class" value="">
                                </div>
                            </div>

                            <div class="form-group col-6">
                                <label class="col-form-label">Total Hours</label>
                                <div>
                                    <input class="form-control" type="text" name="course_total_hour" value="">
                                </div>
                            </div>

                            <div class="form-group col-6">
                                <div>
                                    <label class="col-form-label">Registration open date</label>
                                    <input class="form-control" type="date" name="reg_open_date" value="">
                                </div>
                            </div>
                            <div class="form-group col-6">
                                <div>
                                    <label class="col-form-label">Registration end date</label>
                                    <input  class="form-control" type="date" name="reg_end_date" placeholder="">
                                </div>
                            </div>

                            <div class="form-group col-6">
                                <div>
                                    <label class="col-form-label">Course schedule</label>
                                    <input class="form-control" type="text" name="class_schedule_id" value="">
                                </div>
                            </div>
                            <div class="form-group col-6">
                                <div>
                                    <label class="col-form-label">Venue</label>
                                    <input  class="form-control" type="text" name="venue" placeholder="">
                                </div>
                            </div>
                            <div class="form-group col-6">
                                <div class="form-group">


                                    <label class="col-form-label" for="course_instructor">Course Instructor</label>
                                    <div class="form-control">
                                        <select class="mdb-select md-form" name="course_instructor" id="course_instructor" required>
                                            <option>Select Instructor....</option>
                                            <?php

                                            $get_instructor_sql = "select * from trainers";
                                            $run_instructor_sql= mysqli_query($conn,$get_instructor_sql);

                                            while($instructor=mysqli_fetch_array($run_instructor_sql)){

                                                $trainer_id = $instructor['trainer_id'];

                                                $trainer_name = $instructor['trainer_name'];


                                                ?>
                                                <option value="<?php echo $trainer_id; ?>"><?php echo $trainer_name; ?></option>

                                            <?php } ?>
                                        </select>
                                    </div>

                                </div>
                            </div>
                            <div class="form-group col-6">
                                <div>
                                    <label class="col-form-label">Course Objective</label>
                                    <input  class="form-control" type="text" name="course_objective" placeholder="">
                                </div>
                            </div>
                            <div class="form-group col-6">
                                <label class="col-form-label">Course Status</label>
                                <div class="form-control">
                                    <select class="mdb-select md-form" name="course_status" required>
                                        <option>Select Course Status....</option>
                                        <option value="1">Active</option>
                                        <option value="0">Closed</option>
                                    </select>
                                </div>

                            </div>
                            <div class="form-group col-6">
                                <div>
                                    <label class="col-form-label">Available seat</label>
                                    <input  class="form-control" type="text" name="available_seat" placeholder="">
                                </div>
                            </div>
                            <div class="form-group col-6">
                                <div>
                                    <label class="col-form-label">Course Banner</label>
                                    <input  class="form-control" type="file" name="course_img_id" placeholder="">
                                </div>
                            </div>
                            <div class="form-group col-6">
                                <label class="col-form-label">Course Category</label>
                                <div class="form-control">
                                    <select class="mdb-select md-form" name="course_category" required>
                                        <option>Select Course Category....</option>
                                        <option value="1">New</option>
                                        <option value="0">Upcomming</option>
                                    </select>
                                </div>

                            </div>




                            <div class="form-group col-6">
                                <label class="col-form-label">Old Price</label>
                                <div>
                                    <input class="form-control" type="text" name="old_price" value="">
                                </div>
                            </div>

                            <div class="form-group col-6">
                                <label class="col-form-label">New Price</label>
                                <div>
                                    <input class="form-control" type="text" name="new_price" value="">
                                </div>
                            </div>
                        </div>
                        <div class="form-group text-center"><!-- form-group Begin -->
                            <div><!-- col-md-6 Begin -->
                                <input name="submit" value="   Submit   " type="submit" class="btn btn-primary">
                            </div><!-- col-md-6 Finish -->
                        </div><!-- form-group Finish -->



                    </form>
                </div>
            </div>
        </div>
        <!-- Your Profile Views Chart END-->
    </div>

<?php } ?>
<?php
if (isset($_POST['submit'])) {
    $course_name=$_POST['course_name'];
    $course_short_desc=$_POST['course_short_desc'];
    $course_long_desc=$_POST['course_long_desc'];
    $course_start_date=$_POST['course_start_date'];
    $course_end_date=$_POST['course_end_date'];
    $no_of_class=$_POST['no_of_class'];
    $course_total_hour=$_POST['course_total_hour'];
    $reg_open_date=$_POST['reg_open_date'];
    $reg_end_date=$_POST['reg_end_date'];
    $class_schedule_id=$_POST['class_schedule_id'];
    $venue=$_POST['venue'];
    $course_objective=$_POST['course_objective'];
    $course_instructor=$_POST['course_instructor'];
    $course_status=$_POST['course_status'];
    $available_seat=$_POST['available_seat'];

    $course_img_id=$_FILES['course_img_id']['name'];
    $temp_course_img_id=$_FILES['course_img_id']['tmp_name'];
    $image_extention=strtolower(pathinfo($trainer_img_id, PATHINFO_EXTENSION));
    $uniqid=uniqid();
    $new_course_img_id=$course_name.$uniqid.'.'.$image_extention;
    move_uploaded_file($temp_course_img_id, "assets/images/courses/".$new_course_img_id);

    $review="3";
    $old_price=$_POST['old_price'];
    $new_price=$_POST['new_price'];
    $created_date=date("Y-m-d");
    $last_updated_date=date("Y-m-d");
    $created_by="user";
    $last_updated_by="user";
    $course_category=$_POST['course_category'];

    $insert_course_sql="INSERT INTO courses (course_name,course_short_desc,course_long_desc,course_start_date,course_end_date,no_of_class,course_total_hour,reg_open_date,reg_end_date,class_schedule_id,venue,course_objective,course_instructor,course_status,available_seat,course_img_id,review,old_price,new_price,created_date,last_updated_date,created_by,last_updated_by,course_category) VALUES('$course_name','$course_short_desc','$course_long_desc','$course_start_date','$course_end_date','$no_of_class','$course_total_hour','$reg_open_date','$reg_end_date','$class_schedule_id','$venue','$course_objective','$course_instructor','$course_status','$available_seat','$course_img_id','$review','$old_price','$new_price','$created_date','$last_updated_date','$created_by','$last_updated_by','$course_category')";
    $run_insert_course_sql=mysqli_query($conn,$insert_course_sql);

    if ($run_insert_course_sql) {
        echo "<script>alert('The application submitted successfully.')</script>";
        echo "<script>window.open('index.php','_self')</script>";
    }



?>
</body>
    </html>
<?php } ?>
