<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title></title>
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
		.div003{height: 220px;width: 200px;margin-left: 45px}
		.div003 image{height: 220px;width: 165px}
		.div004{height: auto;width: 200px;margin-top: 10px;margin-left: 10px}
		.div005{height: 30px;width: 200px;margin-top: 10px;margin-left: 10px}
		.div006{height: 40px;width: 200px;margin-left: 17px}



	</style>
</head>
<body>
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog"  style="height: 400px;" >
		<div class="modal-content">
			<div class="modal-header" style="height: 70px">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h1 class="modal-title" id="myModalLabel" style="">
					<div style="height: 60px;">
						修改信息
					</div>

				</h1>
			</div>
			<div class="modal-body" style="height: 340px">
				<center>
					<form action="${pageContext.request.contextPath}/change" method="post" enctype="multipart/form-data">
						<p>名字：<input type="text" name="Cname" id="Cname" value="${client.cname}" readonly="readonly"></p><br>
						<p>地址：<input type="text" name="Cadress" id="Cadress" value="${client.cadress}"></p><br>
						<p>号码：<input type="text" name="Cphone" id="Cphone" value="${client.cphone}"></p><br>
						<p>头像：<input type="file" id="imageFilea" name="imageFilea"> </p>
						<input type="submit"  style="height: 34px;width: 82px"  value="提交更改" >

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

	<!-- header -->
	<header>

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
	<div class="w3layouts-breadcrumbs text-center" style="height: 60px">
		<div class="container">
			<a href="${pageContext.request.contextPath}/cwait">
			<button style="float: right;margin-top:5px;color: #fff;background-color: #2a1ad1">订单详情</button>
			</a>

		</div>
	</div>
	<!-- //breadcrumbs -->
	<!-- Pets -->
	<div class="total-ads main-grid-border">
		<div class="container">
			<%--<div class="select-box">


			</div>--%>
			<div class="ads-grid">
				<div class="side-bar col-md-3" style="margin-top: 15px;height: auto">
				<div class="div003">
					<img style="height: 220px;width: 165px" src="${pageContext.request.contextPath}/static/upload/${client.cimage}">
				</div>
					<div class="div004" style="color: #2aabd2">
						<div class="div005">
							<center>${client.cname}</center>
						</div>
						<div class="div005">
							<center>${client.cadress}</center>
						</div>
						<div class="div005">
							<center>${client.cphone}</center>
						</div>
					</div>
					<div class="div006">
							<center><button class="btn btn-info " data-toggle="modal"  data-target="#myModal">更改信息</button></center>
					</div>

				</div>
				<div class="agileinfo-ads-display col-md-9">
					<div class="wrapper">					
					<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
					  <ul id="myTab" class="nav nav-tabs nav-tabs-responsive" role="tablist">
						<li role="presentation" class="active">
						  <a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">
							<span class="text">已买商品</span>
						  </a>
						</li>
						<li role="presentation" class="next">
						  <a href="#profile" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile">
							<span class="text">购物车</span>
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

									 </div>
								<div class="clearfix"></div>
							<ul class="list">
								<c:forEach var="wait" items="${wait}">
								<li style="height: 180px">
									<img style="height:135px;width:146px" src="${pageContext.request.contextPath}/static/upload/${wait.goodsImage}" title="" alt="" />
									<section class="list-left">
										<h5 style="height: 35px;color: #00a5f7" class="title">商品名:${wait.goodsName}</h5>
										<span style="margin-top: 10px" class="adprice">$ ${wait.goodsPrice}</span>
										<p style="height: 35px;margin-top: 18px;font-size:20px;font-weight: 500px;color:#000000" 　class="catpath">店铺名：${wait.storeName}</p>
									</section>
									<section class="list-right">
										<div class="div001">
											X ${wait.number}

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

								<div class="clearfix"></div>
							<ul class="list">
								<c:forEach var="goods" items="${goods}">
								<li style="height: 180px">
									<img style="height:135px;width:146px" src="${pageContext.request.contextPath}/static/upload/${goods.goodsImage}" title="" alt="" />
									<section class="list-left">
										<h5 style="height: 35px;color: #00a5f7" class="title">${goods.goodsName}</h5>
										<span style="margin-top: 10px" class="adprice">$${goods.price}</span>
										<p style="height: 35px;margin-top: 18px;font-size:20px;font-weight: 500px;color:#000000" 　class="catpath">${goods.describ}</p>
									</section>
									<section class="list-right">
										<div class="div001">
											<div class="div002" >
												<a href="${pageContext.request.contextPath}/delete?id=${goods.id}">
												<button style="height: 100%;width: 100%;color:#FFFFFF; background-color: #31b0d5;border-color:#269abc ">删除</button>
												</a>
											</div>
											<div class="div002" style="margin-top: 30px">

												<button style="height: 100%;width: 100%" class="btn btn-info " data-toggle="modal"  data-target="#${goods.id}">
													购买
												</button>

												<div class="modal fade" id="${goods.id}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
																	<form action="${pageContext.request.contextPath}/wait2?id=${goods.id}" method="post">
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
											</div>

											<%--<div class="div002">
												<button style="height: 100%;width: 100%">
													加入购物车
												</button>

											</div>--%>

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
	<!-- // Pets -->
	<!--footer section start-->		
		<footer>
			<div class="w3-agileits-footer-top">
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

										
					$().UItoTop({ easingType: 'easeOutQuart' });
										
					});
			</script>
			<!-- start-smoth-scrolling -->

<script type="text/javascript" src="static/js/jquery-3.1.1.min.js"></script>
<script src="static/js/bootstrap.min.js"></script>

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

		<!-- //here ends scrolling icon -->
</html>