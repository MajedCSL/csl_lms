<?php 
include "con1.php";
if(!isset($_SESSION['admin_user'])){
        
        echo "<script>window.open('index.php','_self')</script>";
        
    }else{
 ?>
<div class="db-breadcrumb">
  <h4 class="breadcrumb-title">Students Attendance</h4>
    <ul class="db-breadcrumb-list">
      <li><a href="#"><i class="ti-user"></i>Students</a></li>
      <li>Students Attendance</li>
        </ul>
</div>
<div class="row"><!-- row 2 begin -->
    <div class="col-lg-12"><!-- col-lg-12 begin -->
        <div class="panel panel-default"><!-- panel panel-default begin -->
          <!--
           <div class="alert alert-info clearfix" style="padding:1px;">
                
            </div>
            
         -->

            <div class="panel-body"><!-- panel-body begin -->
                <div class="table-responsive"><!-- table-responsive begin -->
                
                  <table id="students" class="table table-striped table-bordered table-hover"><!-- table table-striped table-bordered table-hover begin -->
                        
                        <thead><!-- thead begin -->
                            <tr><!-- tr begin -->
                                <th style="text-align: center;">Serial no</th>
                                <th style="text-align: center;">Course id</th>
                                <th style="text-align: center;">Course Name</th>
                                <th style="text-align: center;">Student id</th>
                                <th style="text-align: center;">Student Name </th>
                                <th style="text-align: center;">Date</th>
                                
                                <th style="text-align: center;">In Time</th>
                                <th style="text-align: center;">Out Time</th>
                                 <th style="text-align: center;">Status</th>
                                <th style="text-align: center;">Details</th>

                            </tr><!-- tr finish -->
                        </thead><!-- thead finish -->
                        
                        <tbody><!-- tbody begin -->
                            
              <?php 
          				//extract($_POST);

                     $i=1;
                              
                  $get_student_attendence_sql = "select * from attendence"; 
                   $run_student_attendence_sql= mysqli_query($conn,$get_student_attendence_sql);
          
                  while($students_attendence=mysqli_fetch_array($run_student_attendence_sql)){
                                    
                     $course_id = $students_attendence['course_id'];
                                    
                    $course_name = $students_attendence['course_name'];
                                    
                    $student_id= $students_attendence['student_id'];

                     $student_name= $students_attendence['student_name'];

                     $date = $students_attendence['date'];
                     $in_time = $students_attendence['in_time'];
                     $out_time = $students_attendence['out_time'];

                    $status = $students_attendence['status'];
                                                 
                        ?>
                            
                            <tr><!-- tr begin -->
                                <td style="text-align: center;"> <?php echo $i; ?> </td>
                                <td> <?php echo $course_id; ?> </td>
                                <td> <?php echo $course_name; ?> </td>
                                <td> <?php echo $student_id; ?> </td>
                                <td> <?php echo $student_name; ?> </td>
                                <td> <?php echo $date; ?> </td>
                                <td> <?php echo $in_time; ?> </td>
                                <td> <?php echo $out_time; ?> </td>
                                <td> <?php echo $status; ?> </td>
                                <td> 
                                	<div style="text-align: center;">
              				        <a href="#" class="alert-link" target="_blank">
                              <button type="button" class="btn btn-primary"> Details</button></a> 
              			</div>
                                </td>
                            </tr><!-- tr finish -->
                            
                            <?php   $i++;  } ?>
                            
                        </tbody><!-- tbody finish -->
                        
                    </table><!-- table table-striped table-bordered table-hover finish -->

                </div><!-- table-responsive finish -->
            </div><!-- panel-body finish -->
            
        </div><!-- panel panel-default finish -->
    </div><!-- col-lg-12 finish -->
</div><!-- row 2 finish -->


<?php } ?>

