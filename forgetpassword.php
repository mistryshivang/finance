<html>
  <head>
    <?php session_start(); ?>
    <?php include('csslink.php'); ?>
		
	<?php
    
	  $id="";
	  $query="";
	  $msg="";
	 ?>
	 	 
  </head>
  <body>
    <form name="frmhome" action="mail.php" method="post" >
		 <?php include('nevbar.php') ?>
		 <div class="container" style="margin-top: 10%;">
	        <div class="row">
			    <div class="col-md-12">
            <div class="form-group">
              <h3 style="text-align:center">Forget Password</h3>
            </div>
            
            <div class="form-group">
              <label>User Name</label> 
              <input type="text" name="name" class="form-control" placeholder="User Name"> 
            </div>
            <div class="form-group" style="margin-top:10px">
             <button type="submit" class="btn btn-primary" name="btnsend">Forget Password</button>
            </div>
			   
	        </div>
	      </div>
	    </div>  
	    <?php include('footer.php') ?> 
    </form>
    <script src="validation.js"></script> 
  </body>

</html>
