<?php 
include "con1.php";
if(!isset($_SESSION['admin_user'])){
        
        echo "<script>window.open('index.php','_self')</script>";
        
    }else{
 ?>
<div class="db-breadcrumb">
  <h4 class="breadcrumb-title">Courses List</h4>
    <ul class="db-breadcrumb-list">
      <li><a href="#"><i class="ti-user"></i>Courses</a></li>
      <li>Courses List</li>
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
                  <table class="table table-striped table-bordered table-hover"><!-- table table-striped table-bordered table-hover begin -->
                        
                        <thead><!-- thead begin -->
                            <tr><!-- tr begin -->
                                <th style="text-align: center;">Serial no </th>
                                <th style="text-align: center;"> Course Title </th>
                                <th style="text-align: center;"> Created At </th>
                                <th style="text-align: center;">Total Hour</th>
                                <th style="text-align: center;">Total Lecture</th>
                                <th style="text-align: center;">Add course module</th>

                            </tr><!-- tr finish -->
                        </thead><!-- thead finish -->
                        
                        <tbody><!-- tbody begin -->
                            
              <?php 
          				//extract($_POST);

                     $i=1;
                              
                  $get_courses_sql = "select * from courses"; 
                   $run_courses_sql= mysqli_query($conn,$get_courses_sql);
          
                  while($course=mysqli_fetch_array($run_courses_sql)){
                      $course_id=$course['course_id'];
                      $course_name = $course['course_name'];
                      $created_at = $course['created_at'];
                      $course_total_hour = $course['course_total_hour'];
                      $no_of_class = $course['no_of_class'];
                                                                       
                        ?>
                            
                            <tr><!-- tr begin -->
                                <td style="text-align: center;"> <?php echo $i; ?> </td>
                                <td> <?php echo $course_name; ?> </td>
                                <td> <?php echo $created_at; ?> </td>
                                <td> <?php echo $course_total_hour; ?> </td>
                                <td> <?php echo $no_of_class; ?> </td>
                                
                                <td> 
                                	<div style="text-align: center;">
              				        <a  href="home.php?add_module&course_id=<?php echo $course_id; ?>" class="alert-link">
                              <button type="button" class="btn btn-primary"> Add module</button></a>
                                        <a href="home.php?module_list&id=<?php echo $course_id; ?>"><input type="button" value="Module List" class="btn btn-outline-primary "></input></a>

<!--                                        <form action="home.php?" method="get">-->
<!--                                            <input type="hidden" name="id" value="module_list&--><?php //echo $course_id; ?><!--">-->
<!--                                            <input type="submit" value="Module List" class="btn btn-outline-primary "></input>-->
<!--                                        </form>-->



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