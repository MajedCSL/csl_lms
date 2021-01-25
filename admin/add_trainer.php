<?php 
include "con1.php";
if(!isset($_SESSION['admin_user'])){
        
        echo "<script>window.open('index.php','_self')</script>";
        
    }else{
 ?>
 <div class="db-breadcrumb">
	<h4 class="breadcrumb-title">Add Trainer</h4>
		<ul class="db-breadcrumb-list">
			<li><a href="#"><i class="ti-user"></i>Trainers</a></li>
			<li>Add Trainer</li>
				</ul>
			</div>	
			<div class="row">
				<!-- Your Profile Views Chart -->
				<div class="col-lg-12 m-b30">
					<div class="widget-box">
						<div class="wc-title">
							<h4>Add Trainer</h4>
						</div>
						<div class="widget-inner">
							<form action="" class="edit-profile m-b30" method="POST" enctype="multipart/form-data">
								<div class="row">
									<div class="col-12" style="margin-bottom: 10px;">
										<div>
											<label class="col-form-label">Trainer Name</label>
											<input class="form-control" name="trainer_name" type="text" placeholder="" required>
										</div>
									</div>
									
									<div class="form-group col-6">
										<div>
											<label class="col-form-label">Trainer Phone No</label>
											<input type="text" class="form-control" name="trainer_phone_no" placeholder="" required></input>
										</div>
									</div>
									<div class="form-group col-6">
										<div>
											<label class="col-form-label">Trainer Email</label>
											<input class="form-control" name="trainer_email" type="text" placeholder="" required></input>
										</div>
									</div>
									<div class="form-group col-6">
										
										<div>
											<label class="col-form-label">Trainer Photo</label>
											<input class="form-control" name="trainer_img_id" type="file" value="" required>
										</div>
									</div>
									<div class="form-group col-6">
										<div>
											<label class="col-form-label">Trainer Skills</label>
											<input  class="form-control" type="text" name="trainer_skills" placeholder="" required>
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
	$trainer_name=$_POST['trainer_name'];
	$trainer_phone_no=$_POST['trainer_phone_no'];
	$trainer_email=$_POST['trainer_email'];
	$trainer_skills=$_POST['trainer_skills'];

	$trainer_img_id=$_FILES['trainer_img_id']['name'];
	$temp_trainer_img_id=$_FILES['trainer_img_id']['tmp_name'];
	$image_extention=strtolower(pathinfo($trainer_img_id, PATHINFO_EXTENSION));
	$uniqid=uniqid();
	$new_trainer_img_id=$trainer_name.$uniqid.'.'.$image_extention;

	move_uploaded_file($temp_trainer_img_id, "assets/images/trainers/".$new_trainer_img_id);

	$created_date=date("Y-m-d");
	$last_updated_date=date("Y-m-d");
	$created_by="user";
	$last_updated_by="user";
	

	$insert_trainer_sql="INSERT INTO trainers (trainer_name,trainer_phone_no,trainer_email,trainer_img_id,trainer_skills,created_date,last_updated_date,created_by,last_updated_by) VALUES('$trainer_name','$trainer_phone_no','$trainer_email','$new_trainer_img_id','$trainer_skills','$created_date','$last_updated_date','$created_by','$last_updated_by')";
	$run_insert_trainer_sql=mysqli_query($conn,$insert_trainer_sql);

if ($run_insert_trainer_sql) {
  echo "<script>alert('The application submitted successfully.')</script>";
  echo "<script>window.open('home.php?add_trainer','_self')</script>";
}

}

 ?>