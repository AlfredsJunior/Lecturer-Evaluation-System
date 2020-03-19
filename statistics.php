<?php 
require_once 'core/init.php';
?>

<!DOCTYPE html>
<html>
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Evaluation - USER STATISTICS</title>
  <!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>
<?php
     
  $user = new User();
  $surname = escape($user->data()->surname); 
  $username = escape($user->data()->username); 
  $firstname = escape($user->data()->firstname);
  $photo = escape($user->data()->photo);
  $users_id = escape($user->data()->users_id);

  if ($user->isLoggedIn()) {

    if ($user->hasPermission('admin')) {
       Redirect::to('admin.php');
    }
    elseif ($user->data()->group == '3') {
       Redirect::to('lecturer.php');
    }
     
?>
<div id="wrapper">
  <div class="navbar navbar-inverse navbar-fixed-top">
    <div class="adjust-nav">
      <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          
          <a class="navbar-brand" href="#">
              <img src="assets/img/nacoss.png" style="width:60px; height:60px;" />
          </a>
      </div>

        <span class="logout-spn">
          <a href="logout.php" style="color:#fff; font-size:20px;">LOGOUT <i class="fa fa-sign-out"></i></a>  
        </span>

    </div>
  </div>
<!-- /. NAV TOP  -->
      
      <nav class="navbar-default navbar-side" role="navigation">
      <div class="sidebar-collapse">
      <ul class="nav" id="main-menu">
          <li>
            <a href="welcome.php?user=<?php echo $users_id; ?>" ><i class="fa fa-desktop"></i>Dashboard</a>
          </li>

          <li>
            <a href="subcomplaints.php?user=<?php echo $users_id; ?>" ><i class="fa fa-edit"></i>Submit Complaints</a>
          </li>

          <li>
            <a href="history.php?user=<?php echo $users_id; ?>" ><i class="fa fa-history"></i>Complaints History</a>
          </li>
          
          <li>
            <a href="subappraise.php?user=<?php echo $users_id; ?>" ><i class="fa fa-edit"></i><i class="fa fa-user"></i>Evaluate Lecturers</a>
          </li>
          
          <li>
            <a href="viewappraisals.php?user=<?php echo $users_id; ?>" ><i class="fa fa-eye"></i>View Evaluations</a>
          </li>

          <li>
            <a href="studprofile.php?user=<?php echo $users_id; ?>" ><i class="fa fa-user"></i>View Profile</a>
          </li>

          <li class="active-link">
            <a href="statistics.php?user=<?php echo $users_id; ?>" ><i class="fa fa-cog"></i>Statistics</a>
          </li>
      </ul>
      </div>
      </nav>
        <!-- /. NAV SIDE  -->

<div id="page-wrapper" >
  <div id="page-inner">
        
        <div class="row text-center" style="margin-top:1%;">
          <div class="col-md-6">
            <?php $Rphoto = "<img src='profile/".$photo."' style='width:35px; height:35px;border-radius:50%;'>"; ?>
            <h3 style=""><?php echo $Rphoto." ". $surname." ". $firstname; ?></h3>
          </div>
          <div class="col-md-6">
            <h3><a href="welcome.php?user=<?php echo $users_id; ?>">Dashboard</a> / Statistics</h3>
          </div>
        </div>              
       
      <hr/>
      
      <?php if (Session::exists('home')) { ?>
      <div class="row">
        <div class="col-lg-12 ">
          <div class="alert alert-info">
            <i class="fa fa-volume-up"></i>
               <?php echo Session::flash('home'); ?>
          </div> 
        </div>
      </div>
      <?php
        }
      ?>


    <div class="row" style="margin-top:9%;">
      <div class="col-md-12 text-center">
  
        <?php
          $total = DB::getInstance()->query("SELECT c_id FROM complaints where user = '$username'");
          if ($total->count()) {
        ?>
        <div class="col-md-6 pad-top">
          <div class="div-square" style="padding:20px;">
            <a href="history.php?user=<?php echo $users_id; ?>">
              <i class="fa fa-pencil fa-5x"></i>
              <h4>You have Successfully Submitted <span class="badge" style="font-size:20px;"><?php echo $total->count(); ?></span> Complaints.</h4>
            </a>
          </div>
        </div>

        <?php
        }else {
        ?>
        <div class="col-md-6 pad-top">
          <div class="div-square" style="padding:20px;">
            <a href="history.php?user=<?php echo $users_id; ?>">
              <i class="fa fa-pencil fa-5x"></i>
              <h4>You have not submitted any Compliants yet !!!</h4>
            </a>
          </div>
        </div>
        <?php
        }
        ?>


        <?php
          $total = DB::getInstance()->query("SELECT a_id FROM praise where user = '$username'");
          if ($total->count()) {
        ?>
        <div class="col-md-6 pad-top">
          <div class="div-square" style="padding:20px;">
            <a href="subcomplaints.php?user=<?php echo $users_id; ?>" >
              <i class="fa fa-edit fa-5x"></i>
              <h4>You have Successfully Submitted <span class="badge" style="font-size:20px;"><?php echo $total->count(); ?></span> Evaluations.</h4>
            </a>
          </div>
        </div>
        
        <?php
        }else {
        ?>
        <div class="col-md-6 pad-top">
          <div class="div-square" style="padding:20px;">
            <a href="subcomplaints.php?user=<?php echo $users_id; ?>" >
              <i class="fa fa-edit fa-5x"></i>
              <h4>You have not submitted any Evaluation yet !!!</h4>
            </a>
          </div>
        </div>
        <?php
        }
        ?>


      </div>
    </div>


  </div> <!-- /. PAGE INNER  -->
</div><!-- /. PAGE WRAPPER  -->

</div><!-- /. PAGE WRAPPER 2  -->





<!-- FOOTER HERE -->

<div class="footer">
    <div class="row">
        <div class="col-lg-12 text-center">
            &copy; 2020 All Rights Reserved KCA UNIVERSITY
        </div>
    </div>
</div>
          
<?php

}

else

{

  redirect::to('login.php');

}

?>


<!-- /. WRAPPER  -->
<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
<!-- JQUERY SCRIPTS -->
<script src="assets/js/jquery-1.10.2.js"></script>
<!-- BOOTSTRAP SCRIPTS -->
<script src="assets/js/bootstrap.min.js"></script>
<!-- CUSTOM SCRIPTS -->
<script src="assets/js/custom.js"></script>
    
   
</body>
</html>
