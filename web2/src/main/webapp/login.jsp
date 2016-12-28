<!DOCTYPE html><%@ page language="java" contentType="text/html; charset=UTF-8"
						pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title></title>
<link rel="stylesheet" href="static/css/bootstrap.min.css"><!-- bootstrap-CSS -->
<link rel="stylesheet" href="static/css/bootstrap-select.css"><!-- bootstrap-select-CSS -->
<link href="static/css/style.css" rel="stylesheet" type="text/css" media="all" /><!-- style.css -->
<link rel="stylesheet" href="static/css/font-awesome.min.css" /><!-- fontawesome-CSS -->
<link rel="stylesheet" href="static/css/menu_sideslide.css" type="text/css" media="all"><!-- Navigation-CSS -->
<!-- meta tags -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Resale Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //meta tags -->

<!-- js -->
<script type="text/javascript" src="static/js/jquery.min.js"></script>
<!-- js -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="static/js/bootstrap.js"></script>
<script src="static/js/bootstrap-select.js"></script>
<script>
  $(document).ready(function (){
    var mySelect = $('#first-disabled2');

    $('#special').on('click', function (){
      mySelect.find('option:selected').prop('disabled', true);
      mySelect.selectpicker('refresh');
    });

    $('#special2').on('click', function (){
      mySelect.find('option:disabled').prop('disabled', false);
      mySelect.selectpicker('refresh');
    });

    $('#basic2').selectpicker({
      liveSearch: true,
      maxOptions: 1
    });
  });
</script>
<!-- language-select -->
<script type="text/javascript" src="static/js/jquery.leanModal.min.js"></script>
<link href="static/css/jquery.uls.css" rel="stylesheet"/>
<link href="static/css/jquery.uls.grid.css" rel="stylesheet"/>
<link href="static/css/jquery.uls.lcd.css" rel="stylesheet"/>
<!-- Source -->
<script src="static/js/jquery.uls.data.js"></script>
<script src="static/js/jquery.uls.data.utils.js"></script>
<script src="static/js/jquery.uls.lcd.js"></script>
<script src="static/js/jquery.uls.languagefilter.js"></script>
<script src="static/js/jquery.uls.regionfilter.js"></script>
<script src="static/js/jquery.uls.core.js"></script>
<script>
			$( document ).ready( function(){
				$( '.uls-trigger' ).uls({
					onSelect : function( language ){
						var languageName = $.uls.data.getAutonym( language );
						$( '.uls-trigger' ).text( languageName );
					},
					quickList: ['en', 'hi', 'he', 'ml', 'ta', 'fr'] //FIXME
				});
			});
		</script>

	<script src="/jquery/jquery-1.11.1.min.js"></script>
</head>
<body>

	<header>

			<div class="clearfix"> </div> 
		</div>
		<div class="container">
			<div class="agile-its-header">
				<div class="logo">
					<h1><a href="test3.jsp"><span>Re</span>sale-v2</a></h1>
				</div>

				<div class="clearfix"></div>
			</div>
		</div>
	</header>
	<!-- //header -->
	<!-- sign in form -->
	 <section>
		<div id="agileits-sign-in-page" class="sign-in-wrapper">
			<div class="agileinfo_signin">
			<h3>User</h3>
				<form action="${pageContext.request.contextPath}/login" method="post">
					<input type="text" id="userName" name="userName" placeholder="Your name">
					<input type="password" id="password" name="password" placeholder="password">
					<input type="submit" value="登录" >
					<div class="forgot-grid">
						<label class="checkbox"><input type="checkbox" name="checkbox">Remember me</label>
						<div class="forgot">
							<a href="#" data-toggle="modal" data-target="#myModal2">Forgot Password?</a>
						</div>
						<!-- Modal -->
						<div class="modal fade" id="myModal2" role="dialog">
							<div class="modal-dialog">
							<!-- Modal content-->
							<div class="modal-dialog modal-lg">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h3 class="w3ls-password">Get Password</h3>		
										<p class="get-pw">Enter your name address below and we'll send you an email with instructions.</p>
										<form action="#" method="post">
											<input type="text" class="user" name="Name" placeholder="your name">
											<input type="submit" value="Submit">
										</form>
									</div>
								</div>
							</div>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</form>
				<h6> Not a Member Yet? <a href="register.jsp">现在注册</a> </h6>
			</div>
		</div>
	</section>
	<!-- //sign in form -->
	<!--footer section start-->		
		<footer>

			<div class="agileits-footer-bottom text-center">
			<div class="container">
				<div class="w3-footer-logo">
					<h1><a href="index.jsp"><span>Re</span>sale-v2</a></h1>
				</div>
				<div class="w3-footer-social-icons">
				</div>

				<div class="clearfix"></div>
			</div>
		</div>
		</footer>
        <!--footer section end-->
</body>
		<!-- Navigation-JavaScript -->
			<script src="static/js/classie.js"></script>
			<script src="static/js/main.js"></script>
		<!-- //Navigation-JavaScript -->
		<!-- here stars scrolling icon -->
			<script type="text/javascript">
				$(document).ready(function() {

					$().UItoTop({ easingType: 'easeOutQuart' });
										
					});
			</script>
			<!-- start-smoth-scrolling -->
			<script type="text/javascript" src="static/js/move-top.js"></script>
			<script type="text/javascript" src="static/js/easing.js"></script>
			<script type="text/javascript">
				jQuery(document).ready(function($) {
					$(".scroll").click(function(event){		
						event.preventDefault();
						$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
					});
				});
			</script>
			<!-- start-smoth-scrolling -->
		<!-- //here ends scrolling icon -->
</html>