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
	<style type="text/css">
		.div01{width:973px;height: 200px}
		.div02{width: 180px;height: 150px;float: left}
		.div02 img{width: 100%;height: 100%}
		.div03{width: 300px;height: 150px;float: left;margin-left:20px}
		.div04{width: 300px;height: 35px;margin-top: 16px}
		.div05{width: 950px;height: 45px}
		.div06{width: 973px;height: 150px}







	</style>
</head>
<body>
<!-- header -->
<header>

	<div class="container">
		<div class="agile-its-header">
			<div class="logo">
				<h1><a href="client"><span>Re</span>sale-v2</a></h1>
			</div>
			<div class="agileits_search">

			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</header>
<div class="total-ads main-grid-border">
	<div class="container">
		<div class="select-box" style="background-color: #00a5f7">
          <center style="font-size: 40px;color: #bc4d61">${user.storeName}</center>

		</div>
		<div class="ads-grid">

			<div class="agileinfo-ads-display col-md-9" style="width: 1100px">
				<div class="wrapper">
					<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
						<ul id="myTab" class="nav nav-tabs nav-tabs-responsive" role="tablist">
							<li role="presentation" class="active">
								<a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">
									<span class="text">订单</span>
								</a>
							</li>
							<li role="presentation" class="next">
								<a href="#profile" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile">
									<span class="text">派送中</span>
								</a>
							</li>

						</ul>
						<div id="myTabContent" class="tab-content" style="widows:1100px;">
							<div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
								<div>
									<div id="container">
										<div class="clearfix"style="width: 1100px;	"></div>
										<ul class="list">
											<c:forEach var="wait" items="${wait}">
												<li>
													<div class="div01">
														<div class="div06">
														<div class="div02">
															<img style="height: 100%;width: 100%" src="${pageContext.request.contextPath}/static/upload/${wait.goodsImage}" alt="">
														</div>
														<div class="div03">
															<div class="div04">
																<strong>商品名字:${wait.goodsName}</strong>
															</div>
															<div class="div04">
																<strong>商品价格:${wait.goodsPrice}</strong>
															</div>
															<div class="div04">
																<strong>购买数量:${wait.number}</strong>
															</div>
														</div>
<%--
														<button style="float: right;height: 30px;width: 60px;margin-top: 90px">已收货</button>
--%>
														</div>
														<div class="div05" style="margin-top: 20px">
															<span style="float: left">店铺:${wait.storeName}</span>
															<span style="float: left;margin-left: 180px">卖家姓名:${wait.userName}</span>
															<span style="float: right;margin-right: 150px">卖家联系电话:${wait.userPhone}</span>
														</div>

													</div>
												</li>
											</c:forEach>


										</ul>
									</div>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="profile" aria-labelledby="profile-tab">
								<div>
									<div id="container">


										<div class="clearfix"></div>
										<ul class="list">
											<c:forEach var="wait1" items="${wait1}">
											<li>
												<div class="div01">
													<div class="div06">
														<div class="div02">
															<img style="width: 100%;height:100%;" src="${pageContext.request.contextPath}/static/upload/${wait1.goodsImage}" alt="">
														</div>
														<div class="div03">
															<div class="div04">
																<strong>商品名字:${wait1.goodsName}</strong>
															</div>
															<div class="div04">
																<strong>商品价格:${wait1.goodsPrice}</strong>
															</div>
															<div class="div04">
																<strong>购买件数:${wait1.number}</strong>
															</div>
														</div>
														<a href="${pageContext.request.contextPath}/had?id=${wait1.id}">
														<button style="float: right;height: 30px;width: 60px;margin-top: 90px">已收货</button>
														</a>
													</div>
													<div class="div05" style="margin-top: 20px">
														<span style="float: left">店铺:${wait1.storeName}</span>
														<span style="float: left;margin-left: 180px">卖家姓名:${wait1.userName}</span>
														<span style="float: right;margin-right: 150px">卖家联系电话:${wait1.userPhone}</span>
													</div>

												</div>

											</li>
											</c:forEach>

										</ul>
									</div>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="samsa" aria-labelledby="samsa-tab">
								<div>
									<%--<div id="container">
										<div class="view-controls-list" id="viewcontrols">
											<label>view :</label>
											<a class="gridview"><i class="glyphicon glyphicon-th"></i></a>
											<a class="listview active"><i class="glyphicon glyphicon-th-list"></i></a>
										</div>
										<div class="sort">
											<div class="sort-by">
												<label>Sort By : </label>
												<select>
													<option value="">Most recent</option>
													<option value="">Price: Rs Low to High</option>
													<option value="">Price: Rs High to Low</option>
												</select>
											</div>
										</div>
										<div class="clearfix"></div>

									</div>--%>
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
       
	</div>
	<div class="agileits-footer-bottom text-center">
		<div class="container">
			<div class="w3-footer-logo">
				<h1><a href="index.html"><span>Re</span>sale-v2</a></h1>
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
<%--<script type="text/javascript">
		function load1() {
			var id=$("#id").val()
			.ajax({
				url:"${pageContext.request.contextPath}/shopcar1?id="+id,
				type:"post",
				dataType:"json",
				data:{id:id},
				success:function(result){

				}
			})
		}




	</script>--%>
</html>