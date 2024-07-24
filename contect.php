<html>
    <head>
        <?php session_start(); ?>
        <?php include('meta.php'); ?>
        <?php include('csslink.php'); ?>
        <?php include('class/DataClass.php');?>
  <?php 
       
        $dc=new dataclass();
        $contectid="";
        $contectdate="";
        $pname="";
        $email="";
        $contectno="";
        $location="";
        $description="";
        $reply="";
        $query="";
        $result="";
        $msg="";
  ?>
  <?php
            if(isset($_POST['btnsave']))
            {
              $contectdate=date('y-m-d');
              $pname=$_POST['name'];
              $email=$_POST['email'];
              $contectno=$_POST['cno'];
              $location=$_POST['loc'];
              $description=$_POST['description'];
              $reply="no";
              $query="insert into contect(contectdate,pname,email,contectno,location,description,reply) values('$contectdate','$pname','$email','$contectno','$location','$description','$reply')";
              $result=$dc->saverecord($query);
              if($result)
              {
                    
                    echo '<script>';
                    echo 'alert("your form submit successfully..");';
                    echo '</script>';
                }
                else
                {
                  echo '<script>';
                  echo 'alert("your form submit unsuccessfully..");';
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
    </head>
    <body>
        <form action="#" method="post" onSubmit="return checkerror()">
            <?php require('nevbar.php') ?>
            <div class="row" style="margin-left :5%;margin-top: 10%">
                <div class="col-md-6">
                    <?php require('maps.php') ?>
                </div>
                <div class="col-md-6">
                    <h1>Contect Us</h1>
                    <div class="form-group">
                        <input type="text" name="name" class="form-control" placeholder="Enter Full Name" id="name"  onchange="onlyalpha(this,lblusername1)" onblur="checkblank(this,lbluser)" />
                         <label  class="errmsg" id="lblusername1"></label>
                         <label  class="errmsg" id="lbluser"></label>
                    </div>
                    <div class="form-group">
                        <input type="text" name="email" class="form-control" placeholder="Enter Email" onChange="checkemail(this,lblemailaddress)" onblur="checkblank(this,lblemail)" />
                         <label class="errmsg" id="lblemailaddress"></label>
                         <label class="errmsg" id="lblemail"></label>
                    </div>
                    <div class="form-group">
                        <input type="text" name="cno" class="form-control" placeholder="Enter Mobile no." onChange="checkmobileno(this,lblcno)" onblur="checkblank(this,lblcno1)"/>
                        <label class="errmsg" id="lblcno"></label>
                        <label class="errmsg" id="lblcno1"></label>
                    </div>
                    <div class="form-group">
                        <input type="text" name="loc" class="form-control" placeholder="Enter your location" onblur="checkblank(this,lblloc)"/>
                        <label class="errmsg" id="lblloc"></label>
                    </div>
                    <div class="form-group">
                        <textarea name="description" class="form-control" cols="30" rows="10" onblur="checkblank(this,lbldes)"></textarea>	
                        <label  class="errmsg" id="lbldes"></label>
                    </div>
                    <div>
                        <input type="submit" class="btn btn-success" name="btnsave" value="Submit">
                    </div>
                </div>
            </div>
            <br/>
            <?php require('footer.php') ?>
        </form>
        <?php require('jslink.php') ?>
    </body>
</html>