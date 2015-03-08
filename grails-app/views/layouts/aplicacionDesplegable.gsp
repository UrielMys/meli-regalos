<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title><g:layoutTitle default="Grails" /></title>
		<meta name="description" content="Simple Effects for Drop-Down Lists" />
		<meta name="keywords" content="drop-down, select, jquery, plugin, fallback, transition, transform, 3d, css3" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico"> 
		<link rel="stylesheet" type="text/css" href="css/style6.css" />
		<script src="js/modernizr.custom.63321.js"></script>
		<asset:stylesheet src="application.css" />
<asset:javascript src="application.js" />
		<g:layoutHead />
	</head>
	<body>
	<div id="logo" role="banner">
		<a href="#"><asset:image src="icrco-logo.gif" alt="ICR" /></a>
	</div>
		<div class="container">	
			<!-- Codrops top bar -->
			<div class="codrops-top clearfix">
			<section class="main">
				<div class="fleft">
					<select id="cd-dropdown" class="cd-select">
						<option value="-1" selected>Empleado</option>
						<option value="1" class="icon-camera">Camera</option>
						<option value="2" class="icon-diamond">Diamonds</option>
						<option value="3" class="icon-rocket">Spaceship</option>
						<option value="4" class="icon-star">Star</option>
						<option value="5" class="icon-clock">Time</option>
					</select>
				</div>
				
			</section>
			<section class="main">
				<div class="fleft">
					<select id="cd-dropdown2" class="cd-select">
						<option value="-1" selected>Choose your prize</option>
						<option value="1" class="icon-camera">Camera</option>
						<option value="2" class="icon-diamond">Diamonds</option>
						<option value="3" class="icon-rocket">Spaceship</option>
						<option value="4" class="icon-star">Star</option>
						<option value="5" class="icon-clock">Time</option>
					</select>
				</div>
				
			</section>
			<section class="main">
				<div class="fleft">
					<select id="cd-dropdown3" class="cd-select">
						<option value="-1" selected>Choose your prize</option>
						<option value="1" class="icon-camera">Camera</option>
						<option value="2" class="icon-diamond">Diamonds</option>
						<option value="3" class="icon-rocket">Spaceship</option>
						<option value="4" class="icon-star">Star</option>
						<option value="5" class="icon-clock">Time</option>
					</select>
				</div>
				
			</section>		
			</div><!--/ Codrops top bar -->
			
			<section class="main">
							<g:layoutBody />
			</section>
		</div><!-- /container -->
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
		<script type="text/javascript" src="js/jquery.dropdown.js"></script>
		<script type="text/javascript">
			
			$( function() {
				
				$( '#cd-dropdown' ).dropdown( {
					gutter : 5,
					stack : false,
					delay : 100,
					slidingIn : 100
				} );
				$( '#cd-dropdown2' ).dropdown( {
					gutter : 5,
					stack : false,
					delay : 100,
					slidingIn : 100
				} );
				$( '#cd-dropdown3' ).dropdown( {
					gutter : 5,
					stack : false,
					delay : 100,
					slidingIn : 100
				} );

			});

		</script>
	</body>
</html>