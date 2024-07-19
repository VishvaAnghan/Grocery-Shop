<?php


include('contact-script.php');




?>


<!DOCTYPE html>
<html lang="en">
	<head>
		<!-- Meta -->
		<meta charset="utf-8">
		

	    <title>Shopping Portal | Contact</title>

	    <!-- Bootstrap Core CSS -->
	    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
	    
	    <!-- Customizable CSS -->
	    <link rel="stylesheet" href="assets/css/main.css">
	    <link rel="stylesheet" href="assets/css/green.css">
	    <link rel="stylesheet" href="assets/css/owl.carousel.css">
		<link rel="stylesheet" href="assets/css/owl.transitions.css">
		<!--<link rel="stylesheet" href="assets/css/owl.theme.css">-->
		<link href="assets/css/lightbox.css" rel="stylesheet">
		<link rel="stylesheet" href="assets/css/animate.min.css">
		<link rel="stylesheet" href="assets/css/rateit.css">
		<link rel="stylesheet" href="assets/css/bootstrap-select.min.css">

		
		
		<!-- Icons/Glyphs -->
		<link rel="stylesheet" href="assets/css/font-awesome.min.css">

        <!-- Fonts --> 
		<link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700' rel='stylesheet' type='text/css'>
		
		<!-- Favicon -->
		<link rel="shortcut icon" href="assets/images/favicon.ico">



	</head>
    <body class="cnt-home">
	
		
	
<header class="header-style-1">

<?php include('includes/top-header.php');?>

<?php include('includes/contact-menu.php');?>	
</header>

<div class="breadcrumb">
	<div class="container">
		<div class="breadcrumb-inner">
			<ul class="list-inline list-unstyled">
				<li><a href="index.php">Home</a></li>
				<li class='active'>Authentication</li>
			</ul>
		</div><!-- /.breadcrumb-inner -->
	</div><!-- /.container -->
</div><!-- /.breadcrumb -->

<div class="body-content outer-top-bd">
	<div class="container">
		<div class="sign-in-page inner-bottom-sm">
			<div class="row">
<div class="col-md-6 col-sm-6 sign-in">
	<h4 class="">CONTACT US</h4>
	<p class="">We are improving our services to serve you better.</p>
	<br>
	<p>Address: 27, Swstik,Gujarat</p>
	<p>Phone: +91 12300 00009</p>
	<p>Email: grocery33@gmail.com</p>
	<form class="register-form outer-top-xs" method="post">
	
					  
	</form>					
</div>

<div class="col-md-6 col-sm-6 create-new-account">
	<h4 class="checkout-subtitle">GET IN TOUCH</h4>
	<p class="text title-tag-line">Send us a message, we will call back later</p>
	<form class="register-form outer-top-xs" role="form" method="post" name="register" onSubmit="return valid();">
 <p class="text-success text-center"><?php echo $register; ?></p> <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?><" method="post">
 

 <div class="form-group">
           
               
<input type="text" class="form-control" placeholder="Enter Full Name" name="first_name" value="<?php echo $set_firstName;?>">

           <p class="err-msg">
            
<?php if($fnameErr!=1){ echo $fnameErr; }?>

           </p>
        </div>
		
<div class="form-group">
           
                
<input type="text" class="form-control" id="email" placeholder="Enter email" name="email" value="<?php echo $set_email;?>">

            <p class="err-msg">
    
<?php if($emailErr!=1){ echo $emailErr; } ?>

            </p>
        </div>

<div class="form-group">
           
                
<input type="text" class="form-control" id="subject" placeholder="Enter Subject" name="subject" value="<?php echo $set_subject;?>">
		
            <p class="err-msg">
    
<?php if($subjectErr!=1){ echo $subjectErr; } ?>

            </p>
        </div>
        
 <div class="form-group">
            
              
            <textarea rows="4" class="form-control" id="message" placeholder="Enter Message" name="message" value="<?php echo $set_message;?>"></textarea>
            
			<p class="err-msg">
    
<?php if($messageErr!=1){ echo $messageErr; } ?>

            </p>
        </div>


    

	  	<button type="submit" name="submit" class="btn-upper btn btn-primary checkout-page-button" id="submit">SEND MESSAGE</button>
	</form>
	
	
</div>	
	</div><!-- /.row -->
		</div>

</div>
</div>
<?php include('includes/footer.php');?>
	<script src="assets/js/jquery-1.11.1.min.js"></script>
	
	<script src="assets/js/bootstrap.min.js"></script>
	
	<script src="assets/js/bootstrap-hover-dropdown.min.js"></script>
	<script src="assets/js/owl.carousel.min.js"></script>
	
	<script src="assets/js/echo.min.js"></script>
	<script src="assets/js/jquery.easing-1.3.min.js"></script>
	<script src="assets/js/bootstrap-slider.min.js"></script>
    <script src="assets/js/jquery.rateit.min.js"></script>
    <script type="text/javascript" src="assets/js/lightbox.min.js"></script>
    <script src="assets/js/bootstrap-select.min.js"></script>
    <script src="assets/js/wow.min.js"></script>
	<script src="assets/js/scripts.js"></script>

	<!-- For demo purposes – can be removed on production -->
	
	<script src="switchstylesheet/switchstylesheet.js"></script>
	
	<script>
		$(document).ready(function(){ 
			$(".changecolor").switchstylesheet( { seperator:"color"} );
			$('.show-theme-options').click(function(){
				$(this).parent().toggleClass('open');
				return false;
			});
		});

		$(window).bind("load", function() {
		   $('.show-theme-options').delay(2000).trigger('click');
		});
	</script>
	<!-- For demo purposes – can be removed on production : End -->

	

</body>
</html>