<!DOCTYPE html>
<html>
<head>
  <?php session_start(); ?>
	<title>Login & Registration Form</title>
  <?php require('meta.php') ?>
	<?php require('csslink.php') ?>
    <link rel="stylesheet" type="text/css" href="./register/stylesheet.css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:400,600,700,800&display=swap" rel="stylesheet">
  <?php include('class/DataClass.php');?>
  <?php 
       
        $dc=new dataclass();
        $regid="";
        $regdate="";
        $name="";
        $email="";
        $password="";
        $utype="";
        $query="";
        $result="";
        $msg="";
        $_SESSION['name']="";
  ?>
  <?php
            if(isset($_POST['btnregister']))
            {
              $regdate=date('y-m-d');
              $name=$_POST['sname'];
              $password=$_POST['spassword1'];
              $utype="client";
              $email=$_POST['semail'];
              $image="main.png";

              if($_POST['spaswword1']=$_POST['spassword2'])
              {
                $query="insert into register(regdate,name,password,utype,email,image) values('$regdate','$name','$password','$utype','$email','$image')";
                $result=$dc->saverecord($query);
                if($result)
                {
                    $_SESSION['name']=$name;
                    echo '<script>';
                    echo 'alert("your registretion successfully..");';
                    echo '</script>';
                }
                else
                {
                  echo '<script>';
                  echo 'alert("your registretion unsuccessfully..");';
                  echo '</script>';
                }
              }
              else{
                echo '<script>';
                echo 'alert("your password not match with confirm password.");';
                echo '</script>';
              }
              
          }
          ?>
          <?php
          $name=$_SESSION['name'];
          if(isset($_POST['btnlogin']))
          {
            $_SESSION['regid']=$_POST['btnlogin'];
            $email=$_POST['lemail'];
            $password=$_POST['lpassword'];
            $query="select regid,name,password,utype,email from register where email='$email'";
            $rw=$dc->getrow($query);

            if($rw)
            {
                if($rw['password'] ==$password)
                {
                    $_SESSION['regid']=$rw['regid'];
                    $_SESSION['name']=$rw['name'];
                    $_SESSION['image']=$rw['image'];

                    if($rw['utype'] =='Admin')
                    {
                        header('location:admin/index.php');
                    }

                    if($rw['utype'] =='client')
                    {
                        header('location:client/index.php');
                    }

                    if($rw['utype'] =='advisor')
                    {
                        header('location:advisor/index.php');
                    }
                }
                else
                {
                  echo '<script>';
                  echo 'alert("invalid password.");';
                  echo '</script>';
                }
            }
            else
            {
              echo '<script>';
              echo 'alert("invalid Email.");';
              echo '</script>';
            }
        }         
      ?>
      <script>
    function checkerror()
	{
	  if(lblusername1.innerHTML!="" || lblpass1.innerHTML!="" || lbltype.innerHTML!="" || lblpass2.innerHTML!="" || lblemail.innerHTML!="" || lblemailaddress.innerHTML!="" || lbluser.innerHTML!="" || lblpassword.innerHTML!="")
	  {
	    return false;
	  }
	  else
	  {
	    return true;
	  }
         			  
	}
 </script>
 <style>
  .errmsg{
    color: navy;
    font-size: 10px;
  }
 </style>
</head>
<body>
  
    <?php require('nevbar.php') ?>
      
  <div class="cont"  style="margin-top:50px;">   
   <form action="" name="loginform" method="post" onSubmit="return checkerror()"> 
    <div class="form sign-in">
      <h2>LOG IN</h2>
      <label>
        <span>Email Address</span>
        <input type="email" name="lemail">
      </label>
      <label>
        <span>Password</span>
        <input type="password" name="lpassword">
      </label>
      <button class="submit" name="btnlogin" type="submit">Log In</button><br>
      <p style="text-align: center;">forget password ? <a href="forgetpassword.php">click here</a></p>
    </div>
    </form>

    <div class="sub-cont">
      <div class="img">
        <div class="img-text m-up">
          <h1>New User?</h1>
          <p>Register Here</p>
        </div>
        <div class="img-text m-in">
          <h1>Already register?</h1>
          <p>just Log in here</p>
        </div>
        <div class="img-btn">
          <span class="m-up">REGISTER</span>
          <span class="m-in">LOG-IN</span>
        </div>
      </div>
      <form action="#" name="registerform" method="post" onSubmit="return checkerror()">
      <div class="form sign-up">
        <h2>Sign Up</h2>
          <div class="row">
            <div class="col-md-6">
            <label>
              <span>Name</span>
              <input type="text" name="sname" id="name"  onchange="onlyalpha(this,lblusername1)" onblur="checkblank(this,lbluser)">
            </label>
            </div>
            <div class="col-md-6">
              <label  class="errmsg" id="lblusername1"></label>
              <label  class="errmsg" id="lbluser"></label>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6">
            <label>
          <span>Email</span>
          <input type="email" name="semail" id="email"  onChange="checkemail(this,lblemailaddress)" onblur="checkblank(this,lblemail)">
            </label>
            </div>
            <div class="col-md-6">
            <label class="errmsg" id="lblemailaddress"></label>
          <label class="errmsg" id="lblemail"></label>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6">
            <label>
            <span>Password</span>
            <input type="password" name="spassword1" id="psw" onChange="checklength(this,lblpassword,5,12)" onblur="checkblank(this,lblpass1)">
					
            </label>
            </div>
            <div class="col-md-6">
            <label  class="errmsg" id="lblpassword"></label>
          <label  class="errmsg" id="lblpass1"></label>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6">
            <label>
            <span>Confirm Password</span>
            <input type="password" name="spassword2" id="psw1" onChange="checklength(this,lblpassword,5,12)" onblur="checkblank(this,lblpass2)">
					  </label>
            </div>
            <div class="col-md-6">
            <label  class="errmsg" id="lblpassword"></label>
          <label  class="errmsg" id="lblpass2"></label>
            </div>
          </div> 
        <button type="submit" name="btnregister" class="submit">Sign Up Now</button>
      </div>
      </form>
    </div>
  </div>
 
<script src="js/jquery-1.12.4.min.js"></script>

<script src="js/bootstrap.min.js"></script>

<script src="js/waypoints.min.js"></script>
<script src="js/jquery.counterup.min.js"></script>

<script src="js/jquery.slicknav.js"></script>
<script src="js/jquery.magnific-popup.js"></script>
<script src="js/owl.carousel.js"></script>
<script src="js/SmoothScroll.js"></script>
<script src="js/function.js"></script>
  <script type="text/javascript" src="./register/main.js"></script>
  <script src="validation.js"></script>
  
</body>
</html>