<?php
include 'dbConfig.php';
?>
<!DOCTYPE html>
<html>
<head>
<title>Target Furniture</title>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>

<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script src="js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<!-- FlexSlider -->
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
<script defer src="js/jquery.flexslider.js"></script>
<script type="text/javascript">
						$(window).load(function(){
						  $('.flexslider').flexslider({
							animation: "slide",
							start: function(slider){
							  $('body').removeClass('loading');
							}
						  });
						});
					  </script>
<!-- //FlexSlider -->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
</head>
	
<body>
<!-- banner -->
	<div class="banner">
		<div class="container">
		<div class="search-bar">
				<form action="search.php" method="post">
				<input type="text">
				<input type="submit" name="user_query"" value="Search" />
				</form>
			</div>
			<div class="header-nav">
				<nav class="navbar navbar-default">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
					  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					  </button>
						<div class="logo">
							<a class="navbar-brand" href="index.html">Ultra <span>Modern Home</span></a>
						</div>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav cl-effect-14">
							<li class="active"><a href="index.html" class="active">Home</a></li>
                            <li><a href="index.php">Sign In</a></li>
							<li><a href="about.html">About</a></li>
							<li><a href="store.html">what we have</a></li>
							<li><a href="contact.html">Contact Us</a></li>
						</ul>
						
					</div><!-- /.navbar-collapse -->	
				</nav>
			</div>
			<div class="banner-info-grids">
				<div class="col-md-6 banner-info">
					<h1>We Provide high quality <span>wooden furnitures</span></h1>
				</div>
				<div class="clearfix"></div>
				<div class="banner-info-pos">
					<a href="#timings" class="scroll"></a>
				</div>
			</div>
		</div>
	</div>
<div class="container">
    <h1><b>Products</b></h1>
    <a href="viewCart.php" class="cart-link" title="View Cart"><i class="glyphicon glyphicon-shopping-cart"></i></a>
    <div id="products" class="row list-group">
        <?php
        
        $query = $db->query("SELECT * FROM products ORDER BY id DESC LIMIT 10");
        if($query->num_rows > 0){ 
            while($row = $query->fetch_assoc()){
				
        ?>
        <div class="item col-lg-4">
            <div class="thumbnail">
                <div class="caption">
                    <h4><?php echo $row["name"]; ?></h4>
					<?php echo " 
					<div>
						<img src='images/",$row["image"],"' width='200' height='150' /> 
					</div>
					";
					?>
                    <p><?php echo $row["description"]; ?></p>
                    <div class="row">
                        <div>
                            <p><?php echo 'ksh.',$row["price"],' Price'; ?></p>
                        </div>
                        <div class="col-md-6">
                            <a class="btn btn-success" href="cartAction.php?action=addToCart&id=<?php echo $row["id"]; ?>">Add to cart</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <?php } }else{ ?>
        <p>Product not found.....</p>
        <?php } ?>
    </div>
</div>
 

<!--footer-->
	
		</div>
	</div>
	<div class="footer-bottom">
		<div class="container">		
			<p>© 2018 www.targetfurniture.com <a href="#"></a></p>					
		</div>
	</div>
<!--//footer-->
	
<!-- for bootstrap working -->
	<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
</body>
</html>