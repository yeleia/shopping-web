<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
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
	<script type="text/javascript" src="static/js/jquery.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //meta tags -->

<!--//fonts-->	
<!-- js -->
<!-- js -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<%--<script src="static/js/bootstrap.js"></script>--%>
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

	<style>
		.div1{height: auto;width: 200px;border-style:solid; border-width:2px; border-color: #d1d1cc;
			margin-top: 40px;float: left;}
		.div2{height: 180px;width: 180px;margin: 8px;border-bottom:1px solid #d1d1cc;}
        .div2 img{width: 100%;height: 100%}
		.div3{height: auto;width: 180px;margin: 8px}
		.div4{height: 25px;width: 180px;margin-top: 5px}

	</style>
	<script type="text/javascript">
		function checkData(){
			var q=document.getElementById("s").value.trim();
			if(q==null || q==""){
				alert("请输入您要查询的关键字！");
				return false;
			}else{
				return true;
			}
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
				<div class="agileits_search">
					<form action="${pageContext.request.contextPath}/search"  method="post">
						<input  name="str" id="s" type="text" placeholder="what do you want?" required=" ">

						<button type="submit" class="btn btn-default" aria-label="Left Align">
							<i class="fa fa-search" aria-hidden="true"> </i>
						</button>
					</form></div>
				<div class="clearfix"></div>
			</div>
		</div>
	</header>
	<!-- //header -->
	<!-- breadcrumbs -->
	<div class="w3layouts-breadcrumbs text-center"  style="height: 60px">
		<div class="container">
			<span class="agile-breadcrumbs"></span>
		</div>
	</div>
	<!-- //breadcrumbs -->
	<!-- Submit Ad -->
	<div class="submit-ad main-grid-border">
		<div class="container" style="overflow-y: scroll">
			<h2 class="w3-head"><center>搜索结果</center></h2>
		<%--	<div class="post-ad-form">--%>
               <%-- <c:forEach var="user" items="${user}">--%>
				<c:forEach var="user" items="${user}">
                <c:forEach var="goods" items="${goods}">
					<c:if test="${goods.userId==user.id}">
               <%-- <c:if test="${goods.userId==user.id}">--%>
				<div class="div1" style="margin-right:10px">
					<div class="div2">
						<img src="${pageContext.request.contextPath}/static/upload/${goods.goodsImage} ">
					</div>
					<div class="div3">
						<div class="div4">
							<center>${goods.goodsName}</center>
						</div>
						<div class="div4">
							<center>$ ${goods.price}</center>
						</div>
						<div class="div4">
							<center>${user.adress}</center>
						</div>
						<div class="div4">
							<%--<a href="${pageContext.request.contextPath}/wait3?id=${goods.id}">--%>
							<button style="float: left;margin-left: 1px" class="btn btn-info " data-toggle="modal"  data-target="#${goods.id}">立即购买</button>
							<%--</a>--%>
								<!-- 模态框（Modal） -->
								<div class="modal fade" id="${goods.id}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
									<div class="modal-dialog" <%-- style="height: 400px;--%> >
										<div class="modal-content">
											<div class="modal-header" style="height: 70px">
												<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
													&times;
												</button>
												<h1 class="modal-title" id="myModalLabel" style="">
													<div style="height: 50px;">
														购买信息
													</div>

												</h1>
											</div>
											<div class="modal-body" style="height: 220px">
												<center>
													<form action="${pageContext.request.contextPath}/wait3?id=${goods.id}" method="post" style="height: 100px">
														<p style="width:80px;height:35px"> 购买数量： <input type="text" name="number" value="1" style="height: 35px;"></p><br><br>

														<input type="submit"  style="height: 30px;width: 80px"  value="确定购买" >

														</input>
														<div class="modal-footer" style="height:50px;">
															<button type="button" class="btn btn-default" data-dismiss="modal">关闭
															</button>

														</div>
													</form>
												</center>
											</div>

										</div><!-- /.modal-content -->
									</div><!-- /.modal -->
								</div>
							<a href="${pageContext.request.contextPath}/shopcar2?id=${goods.id}">
							<button style="float: right;margin-right: 1px" class="btn btn-info " data-toggle="modal" >加入购物车</button>
								</a>
						</div>
					</div>
				</div>
				</c:if>
                </c:forEach>
				</c:forEach>
			<%--</div>--%>
		</div>	
	</div>
	<!-- // Submit Ad -->
	<!--footer section start-->		
		<footer <%-- style="position: fixed;bottom: 0px;left: 0px;width: 100%;"--%>>
			<div class="w3-agileits-footer-top">
				<div class="container">


				</div>	
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

	/*	var container=document.getElementsByClassName("container");
		alert(screen.availHeight+','+container[1].style.height);
		container[1].style.height=screen.availHeight-225+"px";
		alert(typeof(container[1].style.height)+','+typeof(screen.availHeight-225+"px"));*/
	</script>
	<!-- start-smoth-scrolling -->
	<!-- //here ends scrolling icon -->
</body>

</html>