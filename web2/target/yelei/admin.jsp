<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html>
<html lang="en">
<head>

<link rel="stylesheet" href="static/css/bootstrap.min.css"><!-- bootstrap-CSS -->
<link rel="stylesheet" href="static/css/bootstrap-select.css"><!-- bootstrap-select-CSS -->
<link href="static/css/style.css" rel="stylesheet" type="text/css" media="all" /><!-- style.css -->
<link rel="stylesheet" type="text/css" href="static/css/jquery-ui1.css">
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
  $(document).ready(function () {
    var mySelect = $('#first-disabled2');

    $('#special').on('click', function () {
      mySelect.find('option:selected').prop('disabled', true);
      mySelect.selectpicker('refresh');
    });

    $('#special2').on('click', function () {
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
			$( document ).ready( function() {
				$( '.uls-trigger' ).uls( {
					onSelect : function( language ) {
						var languageName = $.uls.data.getAutonym( language );
						$( '.uls-trigger' ).text( languageName );
					},
					quickList: ['en', 'hi', 'he', 'ml', 'ta', 'fr'] //FIXME
				} );
			} );
		</script>
<!-- //language-select -->
<!-- switcher-grid and list alignment -->
<script src="static/js/tabs.js"></script>
<script type="text/javascript">
$(document).ready(function () {    
var elem=$('#container ul');      
	$('#viewcontrols a').on('click',function(e) {
		if ($(this).hasClass('gridview')) {
			elem.fadeOut(1000, function () {
				$('#container ul').removeClass('list').addClass('grid');
				$('#viewcontrols').removeClass('view-controls-list').addClass('view-controls-grid');
				$('#viewcontrols .gridview').addClass('active');
				$('#viewcontrols .listview').removeClass('active');
				elem.fadeIn(1000);
			});						
		}
		else if($(this).hasClass('listview')) {
			elem.fadeOut(1000, function () {
				$('#container ul').removeClass('grid').addClass('list');
				$('#viewcontrols').removeClass('view-controls-grid').addClass('view-controls-list');
				$('#viewcontrols .gridview').removeClass('active');
				$('#viewcontrols .listview').addClass('active');
				elem.fadeIn(1000);
			});									
		}
	});
});
</script>
	<style>
		.divcss1{width: 220px;height: 270px;border-style:solid; border-width:2px; border-color: #d1d1cc;float: left;}
		.divcss1 img{width: 100%;height: 100%}
		.divcss2{width: 400px;height: 270px;float: left }
		.divcss3{height: 40px;margin: 20px}
		.divcss4{height: 50px;width: 100px;float: right}
		.divcss5{height: 210px;width: 380px;float: left;}
		.divcss6{height: 210px;width: 146px}
		.divcss6 img{width: 100%;height: 100%}

	</style>
<!-- //switcher-grid and list alignment -->
</head>
<body>	

	<!-- header -->
	<header>
		<div class="w3ls-header"><!--header-one--> 

			<div class="w3ls-header-right">
				<ul>
					<li class="dropdown head-dpdn">
						<a href="signin" aria-expanded="false"><i class="fa fa-user" aria-hidden="true"></i> Sign In</a>
					</li>

				</ul>
			</div>

			<div class="clearfix"> </div> 
		</div>
		<div class="container">
			<div class="agile-its-header">
				<div class="logo">
					<h1><a href="index"><span>Re</span>sale-v2</a></h1>
				</div>
				<div class="agileits_search">


				</div>	
				<div class="clearfix"></div>
			</div>
		</div>
	</header>
	<!-- //header -->
	<!-- breadcrumbs -->
	<div class="w3layouts-breadcrumbs text-center">
		<div class="container" style="height: 40px">

		</div>
	</div>
	<!-- //breadcrumbs -->
	<!-- Bikes -->
	<div class="total-ads main-grid-border">
		<div class="container">

			<div class="ads-grid">
				<div class="agileinfo-ads-display col-md-9" style="margin-left: 140px">
					<div class="wrapper">					
					<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
					  <ul id="myTab" class="nav nav-tabs nav-tabs-responsive" role="tablist">
						<li role="presentation" class="active">
						  <a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">
							<span class="text">user</span>
						  </a>
						</li>
						<li role="presentation" class="next">
                            <a href="#profile" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile">
							<span class="text">零食</span>
						  </a>
						</li>
						<li role="presentation">
                            <a href="#samsa" role="tab" id="samsa-tab" data-toggle="tab" aria-controls="samsa">
							<span class="text">生活用品</span>
						  </a>
						</li>
						  <li role="presentation">
							  <a href="#samsa1" role="tab" id="samsa-tab１" data-toggle="tab" aria-controls="samsa1">
								  <span class="text">评论</span>
							  </a>
						  </li>
					  </ul>
					  <div id="myTabContent" class="tab-content">
                          <div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
						   <div>
												<div id="container">
								<div class="view-controls-list" id="viewcontrols">
									<label>view :</label>
									<a class="gridview"><i class="glyphicon glyphicon-th"></i></a>
									<a class="listview active"><i class="glyphicon glyphicon-th-list"></i></a>
								</div>
								<div class="clearfix"></div>
							<ul class="list">
								<c:forEach var="user" items="${user}">
									<li  style="height: 310px">
										<div class="divcss1">
											<img style="height: 100%;width: 100%" src="${pageContext.request.contextPath}/static/upload/${user.userImage}">
										</div>
										<div class="divcss2">
											<div class="divcss3">
												<strong style="color: #00a19e">${user.storeName}</strong>
											</div>
											<div class="divcss3">
												<strong style="color: #00a19e">${user.userName}</strong>
											</div>
											<div class="divcss3">
												<strong style="color: #00a19e">${user.adress}</strong>
											</div>
											<div class="divcss3">
												<strong style="color: #00a19e">${user.phone}</strong>
											</div>

										</div>
										<div class="divcss4" style="margin-top: 100px">
											<a href="${pageContext.request.contextPath}/delectuser?id=${user.id}">
											<button style="height: 40px;width: 60px">删除</button>
											</a>
										</div>

									</li>
								</c:forEach>
							</ul>
						</div>
							</div>
						</div>
                          <div role="tabpanel" class="tab-pane fade" id="profile" aria-labelledby="profile-tab">						 <div>
												<div id="container">
								<div class="view-controls-list" id="viewcontrols">
									<label>view :</label>
									<a class="gridview"><i class="glyphicon glyphicon-th"></i></a>
									<a class="listview active"><i class="glyphicon glyphicon-th-list"></i></a>
								</div>
								<div class="clearfix"></div>
							<ul class="list">
                                   <c:forEach var="user1" items="${user1}">
	                                <c:forEach  var="goods" items="${goods}" >
										<c:if test="${goods.userId==user1.id}">

									<li style="height: 250px">
										<div class="divcss6" style="float: left">
									    <img  style="height: 100%;width: 100%"src="${pageContext.request.contextPath}/static/upload/${goods.goodsImage}" title="" alt="" />
										</div>
									<div class="divcss5">
										<div class="divcss3" style="height: 35px;margin-top: 10px">
											<strong style="color: #00a19e;">${goods.goodsName}</strong>
										</div>
										<div class="divcss3" style="height:35px;margin-top: 15px">
											<strong style="color: #00a19e;">${user1.userName}</strong>
										</div>
										<div class="divcss3" style="height: 35px;margin-top: 15px">
											<strong style="color: #00a19e;">${user1.adress}</strong>
										</div>
										<div class="divcss3" style="height: 35px;margin-top: 15px">
											<strong style="color: #00a19e;">$ ${goods.price}</strong>
										</div>
									</div>
										<div class="divcss4" style="margin-top: 100px">
                                            <a href="${pageContext.request.contextPath}/delectgoods1?id=${goods.id}">
											<button style="height: 40px;width: 50px">删除</button>
                                            </a>
										</div>


									</li>
											</c:if>
										</c:forEach>
									   </c:forEach>
								<div class="clearfix"></div>

							</ul>
						</div>
							</div>
						</div>
                          <div role="tabpanel" class="tab-pane fade" id="samsa" aria-labelledby="samsa-tab">
						  <div>
												<div id="container">
								<div class="view-controls-list" id="viewcontrols">
									<label>view :</label>
									<a class="gridview"><i class="glyphicon glyphicon-th"></i></a>
									<a class="listview active"><i class="glyphicon glyphicon-th-list"></i></a>
								</div>
								<div class="clearfix"></div>
							<ul class="list">
                 <c:forEach var="user2" items="${user2}">
	                 <c:forEach var="goods1" items="${goods1}">
		                  <c:if test="${goods1.userId==user2.id}">

		<li style="height: 250px">
									<div class="divcss6" style="float: left">
										<img  style="height: 100%;width: 100%" src="${pageContext.request.contextPath}/static/upload/${goods1.goodsImage}" title="" alt="" />
									</div>
									<div class="divcss5">
										<div class="divcss3" style="height: 35px;margin-top: 10px">
											<strong style="color: #00a19e;">${goods1.goodsName}</strong>
										</div>
										<div class="divcss3" style="height:35px;margin-top: 15px">
											<strong style="color: #00a19e;">${user2.userName}</strong>
										</div>
										<div class="divcss3" style="height: 35px;margin-top: 15px">
											<strong style="color: #00a19e;">${user2.adress}</strong>
										</div>
										<div class="divcss3" style="height: 35px;margin-top: 15px">
											<strong style="color: #00a19e;">${goods1.price}</strong>
										</div>
									</div>
									<div class="divcss4" style="margin-top: 100px">
                                        <a href="${pageContext.request.contextPath}/deletegoods2?id=${goods1.id}">
										<button style="height: 40px;width: 50px">删除</button>
                                        </a>
									</div>


								</li>
							  </c:if>
						 </c:forEach>
					 </c:forEach>

							</ul>
						</div>
							</div>
						</div>
                          <div role="tabpanel" class="tab-pane fade" id="samsa1" aria-labelledby="samsa-tab1">
							  <div>
								  <div id="container">
									  <div class="view-controls-list" id="viewcontrols">
										  <label>view :</label>
										  <a class="gridview"><i class="glyphicon glyphicon-th"></i></a>
										  <a class="listview active"><i class="glyphicon glyphicon-th-list"></i></a>
									  </div>
									  <div class="clearfix"></div>
									  <ul class="list" style="height: auto">
                                       <c:forEach var="comment" items="${comment}">
										  <div class="divcss8" style="height: 50px;width:700px;border-style:solid; border-width:2px; border-color: #d1d1cc;">
										 <div class="divcss7" style="height:auto;width: 210px;float: left">
											<p style="margin-top: 13px">${comment.content}</p>
										 </div>
											  <div style="float: right;margin-right: 20px;width: 50px;height: auto">
												<a href="${pageContext.request.contextPath}/deletecomment?id=${comment.id}">
                                                  <button style="margin-top: 10px">删除</button>
                                                </a>
											  </div>

										  </div>
                                        </c:forEach>
									  </ul>
								  </div>
							  </div>
						  </div>

					  </div>
					</div>
				</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>	
	</div>
	<!-- // Bikes -->
	<!--footer section start-->		
		<footer>
			<div class="w3-agileits-footer-top">
				<div class="container">
					<div class="wthree-foo-grids">




						<div class="clearfix"></div>
					</div>						
				</div>	
			</div>	
			<div class="agileits-footer-bottom text-center">
			<div class="container">
				<div class="w3-footer-logo">
					<h1><a href="index"><span>Re</span>sale-v2</a></h1>
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
