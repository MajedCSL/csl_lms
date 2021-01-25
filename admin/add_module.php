<?php
//include ("assets/css/assets.css");
include "con1.php";

//include "index.php";
// if(!isset($_SESSION['admin_user'])){
//        echo "<script>window.open('index.php','_self')</script>";
//    }else{

$id = $_GET['course_id'];

 ?>
<div class="db-breadcrumb">
	<h4 class="breadcrumb-title">Add Module</h4>
		<ul class="db-breadcrumb-list">
			<li><a href="#"><i class="ti-user"></i>Modules</a></li>
			<li>Add Modules</li>
				</ul>
			</div>	
			<div class="row">
				<!-- Your Profile Views Chart -->
				<div class="col-lg-12 m-b30">
					<div class="widget-box">
						<div class="wc-title">
							<h4>Add Module</h4>
						</div>
						<div class="widget-inner">
							<form action="" class="edit-profile m-b30" method="POST" enctype="multipart/form-data">
								<div class="row">
									<div class="form-group col-12">
										<div>
											<label class="col-form-label">Course Module Title</label>
											<input class="form-control" name="course_module_title" placeholder=""/>
										</div>
									</div>
									<div class="form-group col-12">
										<div>
											<label class="col-form-label">Course Module Des</label>
                                            <textarea class="form-control" name="course_module_des"></textarea>
                                            <input type="hidden" name="course_id" value="<?php echo $id;?>">
										</div>
									</div>
                                    <div class="form-group col-12">
                                        <div>
                                            <label class="col-form-label">Web-link</label>
                                            <input class="form-control" name="web_link" placeholder=""/>
                                        </div>
                                    </div>
                                    <div class="form-group col-12">
                                        <div>
                                            <label class="col-form-label">Video Location</label>
                                            <input type="file" class="form-control" name="video" placeholder=""/>
                                        </div>
                                    </div>
     							</div><!-- form-group Finish -->
                                <input type="submit" class="btn btn-primary" name="submit" value="Submit">
							</form>
						</div>
					</div>
				</div>
			</div>
<?php
if (isset($_POST['submit'])) {

    $course_module_title=$_POST['course_module_title'];
    $course_module_des=$_POST['course_module_des'];
    $course_id=$_POST['course_id'];
    $web_link = $_POST['web_link'];
    $host = "https://".$_SERVER['HTTP_HOST'];
    $tmp_name = $_FILES["video"]["tmp_name"];
    $name = basename($_FILES["video"]["name"]);
    $video_location = $host."/CTI/admin/assets/images/courses/".$name;
    $file_extension = pathinfo($name, PATHINFO_EXTENSION);
    $file_path = "assets/images/courses/".$name;
    $format = array('mp4','mov','wmv','flv','avi');

    if($name == ""){
        echo "<script>alert('Please upload a file!')</script>";
    }
    else{
        if(file_exists($file_path)){
            echo "<script>alert('This file is already exists!')</script>";
        }else{
            if(in_array($file_extension,$format)){
                move_uploaded_file($tmp_name, "assets/images/courses/".$name);
                $insert_module_sql = "INSERT INTO course_module (course_id,course_module_title,course_module_des,web_link,video_location) VALUES($course_id,'$course_module_title','$course_module_des','$web_link','$file_path')";
                $run_insert_course_sql=mysqli_query($conn,$insert_module_sql);
                $course_module = "SELECT id FROM course_module where video_location='$file_path'";
                $data = mysqli_query($conn,$course_module);
                $result = mysqli_fetch_row($data);
                if(isset($result[0])){
                    $id = $result[0];
                    $insert_lecture_sql = "INSERT INTO leacture_content (course_module_id,web_link,video_location) VALUES($id,'$web_link','$file_path')";
                    $run_insert_lecture_sql=mysqli_query($conn,$insert_lecture_sql);
                }
                if ($run_insert_course_sql && $run_insert_lecture_sql) {
                    echo "<script>alert('Module added successfully!');</script>";
                }

            }else{
                echo "<script>alert('Can\'t upload this file format!');</script>";
            }
        }
    }

//  echo "<script>window.open('index.php','_self')</script>";

}

 ?>

