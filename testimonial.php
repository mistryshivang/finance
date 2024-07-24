<html>
    <head>
        <?php session_start() ?>
        <?php include('meta.php'); ?>
        <?php include('csslink.php'); ?>
        <?php include('class/DataClass.php'); ?>
        <?php 
                $dc=new DataClass();
                $fbsid="";
                $name="";
                $des="";
                $rating="";
                $query="";
                $result="";
                $msg="";
            ?>
    </head>
    <body>
        <form action="" method="post">
            <?php require('nevbar.php') ?>
            <section class="testimonial" id="testimonial">
                <div class="container" style="margin-top: 5%;">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="main-title">
                                <h2>Our Prestigious Clients Love Us</h2>
                            </div>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-md-12">
                            <div class="owl-carousel owl-theme testimonial-slider" id="testimonial-slider">
                            <?php
                                $query="select * from fbselect";
                                $tb=$dc->getTable($query);
                                while($rw=mysqli_fetch_array($tb))
                                {
                            ?>
                              <div class="item">
							    <div class="testimonial-single">
								    <div class="testimonial-image">
									    <img src="images/review.png" />
								    </div>
								
								    <div class="testimonial-info">
									    <h3><?php echo $rw['name']  ?></h3>
									
									<p><?php echo $rw['des']."<Br/> RATING :".$rw['rating']  ?></p>
								</div>
							</div>
						</div>
                              
                            <?php
                                }
                            ?>

                            </div>
				        </div>
			        </div>
		        </div>
	        </section>
            <?php require('footer.php') ?>
        </form>
        <?php require('jslink.php') ?>
    </body>
</html>