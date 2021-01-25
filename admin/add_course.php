<?php
include "con1.php";

// if(!isset($_SESSION['admin_user'])){
//        echo "<script>window.open('index.php','_self')</script>";
//    }else{
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
<!--									<div class="col-12" style="margin-bottom: 10px;">-->
<!--										<div>-->
<!--											<label class="col-form-label">Course Module ID</label>-->
<!--											<input class="form-control" name="course_module_id" type="text" placeholder="">-->
<!--										</div>-->
<!--									</div>-->
                                    <div class="col-12" style="margin-bottom: 10px;">
                                        <div>
                                            <label class="col-form-label">Course Name</label>
                                            <input class="form-control" name="course_name" type="text" placeholder="">
                                        </div>
                                    </div>
                                    <div class="col-12" style="margin-bottom: 10px;">
                                        <div>
                                            <label class="col-form-label">Course Short Desc</label>
                                            <input class="form-control" name="course_short_desc" type="text" placeholder="">
                                        </div>
                                    </div>
                                    <div class="col-12" style="margin-bottom: 10px;">
                                        <div>
                                            <label class="col-form-label">Course Long Desc</label>
                                            <textarea class="form-control" name="course_long_desc" type="text" placeholder=""></textarea>
                                        </div>
                                    </div><div class="col-12" style="margin-bottom: 10px;">
                                        <div>
                                            <label class="col-form-label">Overview</label>
                                            <textarea class="form-control" name="overview" type="text" placeholder=""></textarea>
                                        </div>
                                    </div><div class="col-12" style="margin-bottom: 10px;">
                                        <div>
                                            <label class="col-form-label">Course Outcome</label>
                                            <textarea class="form-control" name="course_outcome" type="text" placeholder=""></textarea>
                                        </div>
                                    </div><div class="col-12" style="margin-bottom: 10px;">
                                        <div>
                                            <label class="col-form-label">Course Requirements</label>
                                            <textarea class="form-control" name="course_requirement" type="text" placeholder=""></textarea>
                                        </div>
                                    </div><div class="col-12" style="margin-bottom: 10px;">
                                        <div>
                                            <label class="col-form-label">Benefit From The Course</label>
                                            <textarea class="form-control" name="benefit" type="text" placeholder=""></textarea>
                                        </div>
                                    <div class="col-12" style="margin-bottom: 10px;">
                                        <div>
                                            <label class="col-form-label">Course Price</label>
                                            <input class="form-control" name="course_price" type="number" placeholder=""></input>
                                        </div>
                                    </div>

<!--									<div class="form-group col-12">-->
<!--										-->
<!--										<div>-->
<!--											<label class="col-form-label">Weblink</label>-->
<!--											<input class="form-control" name="weblink" type="text" value="">-->
<!--										</div>-->
<!--									</div>-->

									<div class="form-group col-12">
										<label class="col-form-label">Thumbnail Video</label>
										<div>
											<input class="form-control"  type="file" name="video">
<!--                                            <input type="hidden" name="courseID">-->
										</div>
									</div>


								<?php
//                                           $get_instructor_sql = "select count(id) from course_module where course_id=''";
//                                           $run_instructor_sql= mysqli_query($conn,$get_instructor_sql);
//                                          while($instructor=mysqli_fetch_array($run_instructor_sql)){
//                                             $trainer_id = $instructor['trainer_id'];
//                                             $trainer_name = $instructor['trainer_name'];
               							 ?>
<!--                 					--><?php //} ?>
             							</select>
										</div>
									</div>
									</div>
       							<div>
           						    <input name="submit" value="Submit" type="submit" class="btn btn-primary">
       							</div><!-- col-md-6 Finish -->
     							</div><!-- form-group Finish -->
							</form>
						</div>
					</div>
				</div>
		    		<!-- Your Profile Views Chart END-->
			</div>

<?php ?>
<?php
if (isset($_POST['submit'])) {
//
//    $get_instructor_sql = "select count(`id`) from course_module where `course_name`='$course_name'";
//                           $run_instructor_sql= mysqli_query($conn,$get_instructor_sql);
//                          while($instructor=mysqli_fetch_array($run_instructor_sql)) {
//                              $trainer_id = $instructor['trainer_id'];
//                              $trainer_name = $instructor['trainer_name'];
//                          }
    $course_name = $_POST['course_name'];
    $course_short_desc = $_POST['course_short_desc'];
    $course_long_desc = $_POST['course_long_desc'];
    $overview = $_POST['overview'];
    $course_outcome = $_POST['course_outcome'];
    $course_requirement = $_POST['course_requirement'];
    $benefit = $_POST['benefit'];
    $created_at = date('Y-m-d');
    $course_price = $_POST['course_price'];
//    $course_weblink = $_POST['lecture_content'];
    $host = "https://".$_SERVER['HTTP_HOST'];
    $tmp_name = $_FILES["video"]["tmp_name"];
    $name = basename($_FILES["video"]["name"]);
//    $uniq = uniqid();
//    $name = $uniq."_".$na;
    $video_location = $host."/CTI/admin/assets/images/courses/".$name;
    $file_extension = pathinfo($name, PATHINFO_EXTENSION);
    $file_path = "assets/images/courses/".$name;
    $format = array('mp4','mov','wmv','flv','avi');


    if ($name == "") {
        echo "<script>alert('Please upload a file!')</script>";
    } else {
        if (file_exists($file_path)) {
            echo "<script>alert('This file is already exists!')</script>";
        } else {
            if (in_array($file_extension, $format)) {
                move_uploaded_file($tmp_name, "assets/images/courses/".$name);
                echo "<script>alert('$course_name')</script>";
                echo "<script>alert('$course_short_desc')</script>";
                echo "<script>alert('$course_long_desc')</script>";
                echo "<script>alert('$video_location')</script>";
                echo "<script>alert('$overview')</script>";
                echo "<script>alert('$course_outcome')</script>";
                echo "<script>alert('$course_requirement')</script>";
                echo "<script>alert('$benefit')</script>";
//                $insert_course_sql = "INSERT INTO `leacture_content` (course_module_id,course_short_desc,web_link,video_location) VALUES($course_module_id,'$course_short_desc','$course_weblink','$video_location')";
                $insert_course_sql = "INSERT INTO `courses` (course_name,course_short_desc,course_long_desc,overview,course_outcome,course_requirement,benefit,created_at,video_path,new_price) VALUES('$course_name','$course_short_desc','$course_long_desc','$overview','$course_outcome','$course_requirement','$benefit','$created_at','$video_location',$course_price)";
                $run_insert_course_sql = mysqli_query($conn, $insert_course_sql);
                if ($run_insert_course_sql) {
                    echo "<script>alert('The application submitted successfully.')</script>";
                }
            } else {
                echo "<script>alert('Can\'t upload this file format!');</script>";
            }
        }
    }

//  echo "<script>window.open('index.php','_self')</script>";

//}
}

 ?>