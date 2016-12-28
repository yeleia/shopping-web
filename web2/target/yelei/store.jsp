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
		.div001{height: 118px;width: 110px;}
		.div002{height: 35px;width: 90px;margin-top:25px}
		.div003{height: 200px;width: 200px}
		.div003 img{height: 100%;width: 100%}
		.div004{height: 25px;width: 220px;margin-left: 15px;margin-top: 10px}




	</style>
</head>
<body>
<!-- header -->
<header>
	<%--<div class="w3ls-header"><!--header-one-->
		<div class="w3ls-header-left">

		</div>
		&lt;%&ndash;<div class="w3ls-header-right">
			<ul>
				<li class="dropdown head-dpdn">
					<a href="login.jsp" aria-expanded="false"><i class="fa fa-user" aria-hidden="true"></i> 登录</a>
				</li>
				<li class="dropdown head-dpdn">

				</li>

			</ul>
		</div>&ndash;%&gt;

		<div class="clearfix"> </div>
	</div>--%>
	<div class="container">
		<div class="agile-its-header">
			<div class="logo">
				<h1><a href="test3.jsp"><span>Re</span>sale-v2</a></h1>
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
			<div class="side-bar col-md-3" style="margin-top: 15px;height: 500px">
				<div class="div003" style="margin-left: 25px">
					 <img  src="${pageContext.request.contextPath}/static/upload/${user.userImage}" alt="">
				</div>
				<div class="div004" >
					<center><strong>${user.userName}</strong></center>
				</div>
				<div class="div004">
					<center><strong>${user.adress}</strong></center>
				</div>
				<div class="div004">
					<center><strong>${user.phone}</strong></center>
				</div>

			</div>
			<div class="agileinfo-ads-display col-md-9">
				<div class="wrapper">
					<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
						<ul id="myTab" class="nav nav-tabs nav-tabs-responsive" role="tablist">
							<li role="presentation" class="active">
								<a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">
									<span class="text">所有商品</span>
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
										<ul class="list">
											<c:forEach var="goods1" items="${goods1}">
												<li>
													<img style="height:143px;width:146px" src="${pageContext.request.contextPath}/static/upload/${goods1.goodsImage}" title="" alt="" />
													<section class="list-left">
														<h5 style="height: 35px;color: #00a5f7" class="title">${goods1.goodsName}</h5>
														<span style="margin-top: 7px" class="adprice">$${goods1.price}</span>
														<p style="height: 35px;margin-top: 7px;font-size:20px;font-weight: 500px;color:#000000" 　class="catpath">${goods1.describ}</p>
													</section>
													<section class="list-right">
														<div class="div001">
															<div class="div002">
																<button style="height: 100%;width: 100%" class="btn btn-info " data-toggle="modal"  data-target="#${goods1.id}">
																	购买
																</button>

															</div>
															<!-- 模态框（Modal） -->
															<div class="modal fade" id="${goods1.id}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
																<div class="modal-dialog"  style="height: 400px;" >
																	<div class="modal-content">
																		<div class="modal-header" style="height: 70px">
																			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
																				&times;
																			</button>
																			<h1 class="modal-title" id="myModalLabel" style="">
																				<div style="height: 60px;">
																					购买信息
																				</div>

																			</h1>
																		</div>
																		<div class="modal-body" style="height: 200px">
																			<center>
																				<form action="${pageContext.request.contextPath}/wait4?id=${goods1.id}" method="post">
																					<p> 购买数量： <input type="text" name="number" value="1"></p><br><br>

																					<input type="submit"  style="height: 34px;width: 82px"  value="确定购买" >

																					</input>
																					<div class="modal-footer">
																						<button type="button" class="btn btn-default" data-dismiss="modal">关闭
																						</button>

																					</div>
																				</form>
																			</center>
																		</div>

																	</div><!-- /.modal-content -->
																</div><!-- /.modal -->
															</div>
															<div class="div002">
<%--
																<input type="text" id="id" value="${goods1.id}" style="width: 0px;height: 0px">
--%>
																<a href="${pageContext.request.contextPath}/shopcar1?id=${goods1.id}">
																<button style="height: 100%;width: 100%" class="btn btn-info " data-toggle="modal" >
																	加入购物车
																</button>
																	</a>

															</div>

														</div>
													</section>
													<div class="clearfix"></div>
												</li>
											</c:forEach>

										</ul>
									</div>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="profile" aria-labelledby="profile-tab">
								<div>
									<div id="container">
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
										<ul class="list">
											<c:forEach var="goods2" items="${goods2}" >

											<li>
												<img style="height:143px;width:146px"  src="${pageContext.request.contextPath}/static/upload/${goods2.goodsImage}" title="" alt="" />
												<section class="list-left">
													<h5 style="height: 35px;color: #00a5f7" class="title">${goods2.goodsName}</h5>
													<span style="margin-top: 7px" class="adprice">$${goods2.price}</span>
													<p style="height: 35px;margin-top: 7px;font-size:20px;font-weight: 500px;color:#000000" 　class="catpath">${goods2.describ}</p>
												</section>
												<section class="list-right">
													<div class="div001">
														<div class="div002">
															<button style="height: 100%;width: 100%" class="btn btn-info " data-toggle="modal"  data-target="#${goods2.id}" >
																购买
															</button>
														</div>
														<!-- 模态框（Modal） -->
														<div class="modal fade" id="${goods2.id}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
															<div class="modal-dialog"  style="height: 400px;" >
																<div class="modal-content">
																	<div class="modal-header" style="height: 70px">
																		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
																			&times;
																		</button>
																		<h1 class="modal-title" id="myModalLabel" style="">
																			<div style="height: 60px;">
																				购买信息
																			</div>

																		</h1>
																	</div>
																	<div class="modal-body" style="height: 200px">
																		<center>
																			<form action="${pageContext.request.contextPath}/wait4?id=${goods2.id}" method="post">
																				<p> 购买数量： <input type="text" name="number" value="1"></p><br><br>

																				<input type="submit"  style="height: 34px;width: 82px"  value="确定购买" >

																				</input>
																				<div class="modal-footer">
																					<button type="button" class="btn btn-default" data-dismiss="modal">关闭
																					</button>

																				</div>
																			</form>
																		</center>
																	</div>

																</div><!-- /.modal-content -->
															</div><!-- /.modal -->
														</div>
														<div class="div002">
															<a href="${pageContext.request.contextPath}/shopcar1?id=${goods2.id}">
															<button style="height: 100%;width: 100%" class="btn btn-info " data-toggle="modal">
																加入购物车
															</button>
																</a>

														</div>

													</div>
												</section>
												<div class="clearfix"></div>
											</li>
											</c:forEach>
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
										<ul class="list">

												<c:forEach var="goods3" items="${goods3}" >

													<li>
														<img style="height:143px;width:146px"  src="${pageContext.request.contextPath}/static/upload/${goods3.goodsImage}" title="" alt="" />
														<section class="list-left">
															<h5 style="height: 35px;color: #00a5f7" class="title">${goods3.goodsName}</h5>
															<span style="margin-top: 7px" class="adprice">$${goods3.price}</span>
															<p style="height: 35px;margin-top: 7px;font-size:20px;font-weight: 500px;color:#000000" 　class="catpath">${goods3.describ}</p>
														</section>
														<section class="list-right">
															<div class="div001">
																<div class="div002">
																	<button style="height: 100%;width: 100%" class="btn btn-info " data-toggle="modal"  data-target="#${goods3.id}">
																		购买
																	</button>
																</div>
																<!-- 模态框（Modal） -->
																<div class="modal fade" id="${goods3.id}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
																	<div class="modal-dialog"  style="height: 400px;" >
																		<div class="modal-content">
																			<div class="modal-header" style="height: 70px">
																				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
																					&times;
																				</button>
																				<h1 class="modal-title" id="myModalLabel" style="">
																					<div style="height: 60px;">
																						购买信息
																					</div>

																				</h1>
																			</div>
																			<div class="modal-body" style="height: 200px">
																				<center>
																					<form action="${pageContext.request.contextPath}/wait4?id=${goods3.id}" method="post">
																						<p> 购买数量： <input type="text" name="number" value="1"></p><br><br>

																						<input type="submit"  style="height: 34px;width: 82px"  value="确定购买" >

																						</input>
																						<div class="modal-footer">
																							<button type="button" class="btn btn-default" data-dismiss="modal">关闭
																							</button>

																						</div>
																					</form>
																				</center>
																			</div>

																		</div><!-- /.modal-content -->
																	</div><!-- /.modal -->
																</div>
																<div class="div002">
																	<a href="${pageContext.request.contextPath}/shopcar1?id=${goods3.id}">
																	<button style="height: 100%;width: 100%" class="btn btn-info " data-toggle="modal">
																		加入购物车
																	</button>
																		</a>

																</div>

															</div>
														</section>
														<div class="clearfix"></div>
													</li>
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
        ／／设置一个按钮去个人中心

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