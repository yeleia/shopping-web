<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html>
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

<!--//fonts-->	
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

	<style type="text/css">
		.div11 {height: 320px;width: 164px;margin-left: 20px;margin-top:20px;margin-bottom:20px;margin-right:5px;float: left}
		.div12{height: 250px; width: 164px;border-style:solid; border-width:2px; border-color: #d1d1cc;}
		.div13{height:50px;width: 164px;margin-top: 10px}
		.div14{height: auto;float: left;margin-left: 15px;}
		.div15{height: auto;float: right;margin-right: 15px;}
		.div16{height: 180px;width: 162px;border-bottom:1px solid #d1d1cc;margin-top: 0px}
		.div16 img{height: 180px;width: 160px}
		.div17{height: 55px;width: 150px;margin-top: 8px}

	</style>
	<style type="text/css">
		.important {height: 26px;width:260px;margin-top: 10px}
	</style>
	<script type="text/javascript">
		function delete1(){


		}
	</script>

</head>
<body>

	<!-- header -->
	<header>

		<div class="container">
			<div class="agile-its-header">
				<div class="logo">
					<h1><a href="index"><span>Re</span>sale-v2</a></h1>
				</div>

				<div class="clearfix"></div>
			</div>
		</div>

	</header>
	<!-- //header -->
	<!-- breadcrumbs -->
	<div class="w3layouts-breadcrumbs text-center">
		<div class="container">
			<span class="agile-breadcrumbs"><a href="test.jsp"><i class="fa fa-home home_1"></i></a> / <span>管理</span></span>
		</div>
	</div>
	<!-- //breadcrumbs -->
	<!-- Submit Ad -->
	<div class="submit-ad main-grid-border">
		<div class="container">
			<c:forEach var="goods" items="${goods}">
		<div class="div11">
			<div class="div12">
				<div class="div16">
					<img src="${pageContext.request.contextPath}/static/upload/${goods.goodsImage}" alt="图片自适应"/>
				</div>
				<div class="div17">
				<p>

					名字：${goods.goodsName}
				</p>
					<p>
						价格：${goods.price}
					</p>
					<p>
						描述：${goods.describ}
					</p>
				</div>

			</div>
			<div class="div13">
				<div class="div14">
					<a href="${pageContext.request.contextPath}/deleteGoods?id=${goods.id}"><button style="color: #1d292f">	删除</button></a>
				</div>
				<div class="div15">
					<button  style="height: 26px;width: 44px"  data-toggle="modal" data-target="#${goods.id}">
						更改
					</button>
					<!-- 模态框（Modal） -->
					<div class="modal fade" id="${goods.id}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog"  style="height: 400px;" >
							<div class="modal-content">
								<div class="modal-header" style="height: 70px">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
										&times;
									</button>
									<h1 class="modal-title" id="myModalLabel" style="">
										<div style="height: 60px;">
											修改商品信息
										</div>

									</h1>
								</div>
								<div class="modal-body" style="height: 340px">
									<center>
										<form action="${pageContext.request.contextPath}/updateGoods" method="post" enctype="multipart/form-data">

											<input type="hidden" name="id" value="${goods.id}">
											<div class="important"> 商品名：<input type="text" name="goodsName" value="${goods.goodsName}" ></div>
											<div class="important">价格：<input type="text" name="price" value="${goods.price}" ></div>
											<div class="important">描述：<input type="text" name="describ" value="${goods.describ}" ></div>
											<div class="important">类型：<select name="typeName" style="width: 174px">
												<option value="零食">零食</option>
												<option value="生活用品">生活用品</option>
											</select></div>
											<div class="important"><input type="file"  name="imageFiles2" /></div>
											<center><p><input type="submit"  style="height: 34px;width: 82px"  value="修改" ></p></center>


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

			</div>
		</div>
</c:forEach>
		</div>	
	</div>
	<!-- // Submit Ad -->
	<!--footer section start-->		
		<footer>
			<div class="w3-agileits-footer-top">
				<div class="container">
					<div class="wthree-foo-grids">



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