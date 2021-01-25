<?php 
include "con1.php";
if(!isset($_SESSION['admin_user'])){
        
        echo "<script>window.open('index.php','_self')</script>";
        
    }else{
 ?>
<div class="db-breadcrumb">
  <h4 class="breadcrumb-title">Trainers List</h4>
    <ul class="db-breadcrumb-list">
      <li><a href="#"><i class="ti-user"></i>Trainers</a></li>
      <li>Trainers List</li>
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
                                <th style="text-align: center;"> Trainer Photo </th>
                                <th style="text-align: center;"> Trainer Name </th>
                                <th style="text-align: center;">Trainer Phone</th>
                                <th style="text-align: center;">Trainer Skills </th>
                                <th style="text-align: center;">Details</th>

                            </tr><!-- tr finish -->
                        </thead><!-- thead finish -->
                        
                        <tbody><!-- tbody begin -->
                            
              <?php 
          				//extract($_POST);

                     $i=1;
                              
                  $get_trainers_sql = "select * from trainers"; 
                   $run_trainers_sql= mysqli_query($conn,$get_trainers_sql);
          
                  while($trainers=mysqli_fetch_array($run_trainers_sql)){
                                  
                     $trainer_name = $trainers['trainer_name'];
                                    
                    $trainer_phone_no = $trainers['trainer_phone_no'];
                                    
                    $trainer_email = $trainers['trainer_email'];

                    $trainer_img_id = $trainers['trainer_img_id'];
                         $trainer_skills = $trainers['trainer_skills'];                                                
                        ?>
                            
                            <tr><!-- tr begin -->
                                <td style="text-align: center;"> <?php echo $i; ?> </td>
                                <td> <img src="assets/images/trainers/<?php echo $trainer_img_id; ?>" width="60" height="60"> </td>
                                <td> <?php echo $trainer_name; ?> </td>
                                <td> <?php echo $trainer_phone_no; ?> </td>
                                <td> <?php echo $trainer_skills; ?> </td>
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