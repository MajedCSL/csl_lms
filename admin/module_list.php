<?php 
include "con1.php";
//if(!isset($_SESSION['admin_user'])){
//
//        echo "<script>window.open('index.php','_self')</script>";
//
//    }else{
 ?>
<div class="db-breadcrumb">
  <h4 class="breadcrumb-title">Courses Module List</h4>
    <ul class="db-breadcrumb-list">
      <li><a href="#"><i class="ti-user"></i>Modules</a></li>
      <li>Module List</li>
        </ul>
</div>
<div class="row"><!-- row 2 begin -->
    <div class="col-lg-12"><!-- col-lg-12 begin -->
        <div class="panel panel-default"><!-- panel panel-default begin -->

            <div class="panel-body"><!-- panel-body begin -->
                <div class="table-responsive"><!-- table-responsive begin -->
                
                  <table class="table table-striped table-bordered table-hover"><!-- table table-striped table-bordered table-hover begin -->
                        
                        <thead><!-- thead begin -->
                            <tr><!-- tr begin -->
                                <th style="text-align: center;">Module ID</th>
                                <th style="text-align: center;">Course Module Title </th>
                                <th style="text-align: center;">Course Module Description </th>
                            </tr><!-- tr finish -->
                        </thead><!-- thead finish -->
                        
                        <tbody><!-- tbody begin -->
                            
              <?php
              $i=1;
                  $id = $_GET['id'];
                  $get_module_sql = "select * from course_module where course_id ='$id'";
                  $run_module_sql= mysqli_query($conn,$get_module_sql);
                  while($modules=mysqli_fetch_array($run_module_sql)){
                      $module_id = $modules['id'];
                      $module_title = $modules['course_module_title'];
                      $module_des = $modules['course_module_des'];

                        ?>

                            <tr><!-- tr begin -->
<!--                                <td style="text-align: center;"> --><?php //echo $id; ?><!-- </td>-->
                                <td> <?php echo $module_id; ?> </td>
                                <td> <?php echo $module_title; ?> </td>
                                <td> <?php echo $module_des; ?> </td>
                            </tr><!-- tr finish -->
                            
                            <?php   $i++;  } ?>
                            
                        </tbody><!-- tbody finish -->
                        
                    </table><!-- table table-striped table-bordered table-hover finish -->

                </div><!-- table-responsive finish -->
            </div><!-- panel-body finish -->
            
        </div><!-- panel panel-default finish -->
    </div><!-- col-lg-12 finish -->
</div><!-- row 2 finish -->

<!--  --><?php //} ?>