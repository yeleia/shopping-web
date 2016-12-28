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
<link rel="stylesheet" href="static/css/flexslider.css" type="text/css" media="screen" /><!-- flexslider-CSS -->
<link rel="stylesheet" href="static/css/font-awesome.min.css" /><!-- fontawesome-CSS -->
<link rel="stylesheet" href="static/css/menu_sideslide.css" type="text/css" media="all"><!-- Navigation-CSS -->
<!-- meta tags -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Resale Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //meta tags -->
<style>

	.div01{width: 220px;height: 220px;margin-left: 3px;margin-top: 40px}
	.div01 img{height: 100%;width: 100%}
	.div11{width: 225px;height: auto;margin-left: 30px}
	.div12{width: 220px;height: auto;margin-top: 10px;margin-left: 3px}
	.div13{width: 220px;height: 40px;margin-top: 10px}
	.div02{margin-left: 0px;width: 180px;height:229px;margin-top: 10px;margin-bottom: 0px;float: left}
	.div02 img{height:100%;width: 100%; object-fit:cover;}
	.div03{width: 60px;margin-right: 0px;height: 229px;float: right;margin-left: 0px}
	.div04{width: 60px;height:66px;margin-top: 70px;border-bottom:1px solid #d1d1cc;}
	.div05{width: 60px;height:32px;margin-top:50px;margin-bottom: 30px }
	.div06{width: 100px;height: 40px;float: left;margin-left: 200px}
	.div07{width:420px;height: 120px;float: right;margin-right:350px}
	.div08{width: 60px;height: 40px;margin-right: 350px}
	.div09{width: 1100px;height: 140px}
	.div10{width: 1100px;height: 40px;margin-top: 0px}


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
<%--<script>--%>
	<%--function upload(){--%>
		<%--$.ajax({--%>
			<%--url:"${pageContext.request.contextPath}/client",--%>
			<%--type:"post",--%>
			<%--dataType:"json",--%>
			<%--success:function (result){--%>
				<%--if(result.success==true){--%>
					<%--alert("请先登录")--%>
				<%--}--%>

			<%--}--%>
		<%--});--%>

	<%--}--%>
<%--</script>--%>


</head>
<body>


		<!-- Navigation -->
		<div class="agiletopbar">
			<div class="wthreenavigation">
				<div class="menu-wrap" style="background-color: #d1d1cc">
				<nav class="menu">
					<div class="icon-list" style="margin-top: 50px">
						<%--<center style="color:#c9cf97">--%><a style="height: 0px;width: 0px;background-color:transparent;border-left: 0px;" href="${pageContext.request.contextPath}/client"> <button style="width:80px;height: 30px;margin-left: 90px;color: #0C0C0C;background-color: #00a19e">个人主页</button></a><%--</center>--%>
						<div class="div11">
						    <div class="div01">
								<img src="${pageContext.request.contextPath}/static/upload/${client1.cimage}" alt="">
						    </div>
							<div class="div12">
								<div class="div13">
									<center><strong style="color: #00a19e">${client1.cname}</strong></center>
								</div>
								<div class="div13">
									<center><strong style="color: #00a19e">${client1.cadress}</strong></center>
								</div>
								<div class="div13">
									<center><strong style="color: #00a19e">${client1.cphone}</strong></center>
								</div>

							</div>

						</div>

					</div>
				</nav>
				<button class="close-button" id="close-button">Close Menu</button>
			</div>
			<button class="menu-button" id="open-button"> </button>
			</div>
			<div class="clearfix"></div>
		</div>
		<!-- //Navigation -->
	<!-- header -->
	<header>
		<div class="w3ls-header"><!--header-one--> 
			<div class="w3ls-header-left">
			</div>
			<div class="w3ls-header-right">
				<ul>

					<li class="dropdown head-dpdn">
						<a href="signin.jsp" aria-expanded="false"><i class="fa fa-user" aria-hidden="true"></i>用户登录</a>
					</li>
					<li class="dropdown head-dpdn">
						<a href="signup.jsp" aria-expanded="false"><i class="fa fa-user" aria-hidden="true"></i>用户注册</a>

					</li>
					<li class="dropdown head-dpdn">
						<div class="header-right">			
	<!-- Large modal -->
			<div class="agile-its-selectregion">
				<button class="btn btn-primary" data-toggle="modal" data-target="#myModal"></button>
					<a href="login.jsp" aria-expanded="false"><i class="fa fa-user" aria-hidden="true"></i>店家登录</a>

			</div>
		</div>
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
					<form action="${pageContext.request.contextPath}/search" method="post" autocomplete="off" role="search" onsubmit="return checkData()">
						<input name="str" id="s" type="text" placeholder="what you want?" required="" />
						<button type="submit" value="Search" class="btn btn-default" aria-label="Left Align">
							<i class="fa fa-search" aria-hidden="true"> </i>
						</button>
					</form>
				<a class="post-w3layouts-ad" href="${pageContext.request.contextPath}/user">店家管理</a>
				</div>	
				<div class="clearfix"></div>
			</div>
		</div>
	</header>
	<!-- //header -->
	<!-- Slider -->
		<div class="slider">
			<ul class="rslides" id="slider">
				<li>

				</li><div class="w3ls-slide-text">
                <h3>Sell or Advertise anything online</h3>
                <div class="w3layouts-explore-all">Browse all Categories</div>
            </div>
				<li>
					<div class="w3ls-slide-text">
						<h3>Find the Best Deals Here</h3>
						<div class="w3layouts-explore">Explore</div>
					</div>
				</li>
				<li>
					<div class="w3ls-slide-text">
						<h3>Lets build the home of your dreams</h3>
						<div class="w3layouts-explore">Explore</div>
					</div>
				</li>
				<li>
					<div class="w3ls-slide-text">
						<h3>Find your dream ride</h3>
						<div class="w3layouts-explore">Explore</div>
					</div>
				</li>
				<li>
					<div class="w3ls-slide-text">
						<h3>The Easiest Way to get a Job</h3>
						<div class="w3layouts-explore">Find a Job</div>
					</div>
				</li>
			</ul>
		</div>
		<!-- //Slider -->
		<!-- content-starts-here -->
		<div class="main-content">
			<div class="w3-categories">
				<h3>店铺</h3>
				<div class="container">
					<c:forEach var="store" items="${store}" >
						<c:forEach var="user1" items="${user1}">
							<c:if test="${store.storeName==user1.storeName}">
								<a href="${pageContext.request.contextPath}/store?id=${store.id}">
					<div class="col-md-3" style="width: 275px;height: 253px; border-style:solid; border-width:1px; border-color: #d1d1cc;margin-right: 10px;margin-top: 10px">

							<div class="div02">
							<img src="${pageContext.request.contextPath}/static/upload/${user1.userImage} " alt="" height="100%" width="100%"/>
							</div>
							<div class="div03">
								<div class="div04">
									<center><strong>${user1.adress}</strong></center>

							</div>
								<div class="div05">
									<center><strong>${store.storeName}</strong></center>
								</div>
						</div>

					</div>
								</a>
							</c:if>
							</c:forEach>
						</c:forEach>

					<div class="clearfix" style="width: 415px"></div>
				</div>
			</div>
			<!-- most-popular-ads -->
			<div class="w3l-popular-ads">  
				<h3>零食区</h3>
				 <div class="w3l-popular-ads-info">
					 <c:forEach var="user2" items="${user2}">
					 <c:forEach  var="goods" items="${goods}" >
						 <c:if test="${goods.userId==user2.id}">
					<div class="col-md-4 w3ls-portfolio-left" style="margin-top:20px ;width: 360px;margin-left: 50px">
						<div class="portfolio-img event-img"style="width: 180px">
							<img src="${pageContext.request.contextPath}/static/upload/${goods.goodsImage}" class="img-responsive" style="height: 221px" alt=""/>
							<div class="over-image"></div>
						</div>
						<div class="portfolio-description" style="height: 221px;width: 170px;margin-right: 0px">
						   <h4><center><a href="">${goods.goodsName}</a></center></h4>
						   <p><center><strong style="color: #00cc00">${user2.adress}</strong></center></p><br>
							<p><center><strong style="color: #153bcc">$ ${goods.price}</strong></center></p>

								<span style="height: 50px;width: 50px;float: left;margin-bottom: 20px;margin-top: 28px;margin-right: 4px" class="btn btn-info " data-toggle="modal"  data-target="#${goods.id}">购买</span>
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
													购买信息
												</div>

											</h1>
										</div>
										<div class="modal-body" style="height: 180px">
											<center>
												<form action="${pageContext.request.contextPath}/wait?id=${goods.id}" method="post">
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

								<a href="${pageContext.request.contextPath}/shopcar?id=	${goods.id}">
								<span style="height: 50px;width: 80px;float: right">加入购物车</span>
							</a>
						</div>
						<div class="clearfix">
						</div>
					</div>
							 </c:if>
						 </c:forEach>
					 </c:forEach>




					<div class="clearfix"> </div>
				 </div>
			 </div>
			<!-- most-popular-ads -->									
			<div class="trending-ads">
				<div class="container">
				<!-- slider -->
				<div class="agile-trend-ads">
					<h2>生活用品区</h2>
						<%--	<ul id="flexiselDemo3">--%>
								<li>
								<c:forEach var="user3" items="${user3}">
									<c:forEach var="goods1" items="${goods1}">
										<c:if test="${goods1.userId==user3.id}">

									<div class="col-md-3 biseller-column" style="height:400px;width: 250px">

											<img  height="250" src="${pageContext.request.contextPath}/static/upload/${goods1.goodsImage}" alt="" />
											<span class="price">&#36; ${goods1.price}</span>

										<div class="w3-ad-info" style="height: 86px">
											<h5 style="height: 40px">
												<center><p>${goods1.goodsName}</p></center>
												<center><p>${user3.adress}</p></center>
											</h5>
											<span><center style="height: 40px">
												<button style="height:40px;width:90px;background: #0099E5;color: #FFFFFF" class="btn btn-info " data-toggle="modal"  data-target="#${goods1.id}" >立即购买</button>
											</center></span>
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
														<div class="modal-body" style="height: 180px">
															<center>
																<form action="${pageContext.request.contextPath}/wait?id=${goods1.id}" method="post">
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
									</div>
										</c:if>
									</c:forEach>
								</c:forEach>

								</li>
						<%--</ul>--%>
					</div>   
			</div>
			<!-- //slider -->				
			</div>
			<!--partners-->
			<div class="w3layouts-partners">
				<h3>自由讨论区</h3>
					<div class="container" style="height: auto;width: 770px" id="ajaxo">
						<c:forEach var="comment" items="${comment}">
					     <p style="font-size: larger">${comment.id}楼：${comment.content}</p>
						</c:forEach>
					</div>
				</div>
		<!--//partners-->	

		</div>
		<!--footer section start-->		
		<footer>
			<div class="w3-agileits-footer-top">

				<div class="container" style="height: 180px">
					<div class="div09">
					<div class="div06" style="background: #b8bbcc">
						<center style="font-size: large;margin-top:7px">给点意见咯</center>
					</div>
					<div class="div07">
						<textarea id="content" style="height: 100%;width: 100%" name="content"></textarea>
					</div>
					</div>
					<div class="div10">
					<div class="div08" style="margin-right: 350px;float: right">
						<center><button style="height:100%;width: 100%;margin-right: 40px;" onclick="load()">发表</button></center>
					</div>
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
		<!-- Navigation-Js-->
			<script type="text/javascript" src="static/js/main.js"></script>
			<script type="text/javascript" src="static/js/classie.js"></script>
		<!-- //Navigation-Js-->
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
		<script type="text/javascript" src="static/js/jquery.flexisel.js"></script><!-- flexisel-js -->
					<script type="text/javascript">
						 $(window).load(function() {
							$("#flexiselDemo3").flexisel({
								visibleItems:1,
								animationSpeed: 1000,
								autoPlay: true,
								autoPlaySpeed: 5000,    		
								pauseOnHover: true,
								enableResponsiveBreakpoints: true,
								responsiveBreakpoints: { 
									portrait: { 
										changePoint:480,
										visibleItems:1
									}, 
									landscape: { 
										changePoint:640,
										visibleItems:1
									},
									tablet: { 
										changePoint:768,
										visibleItems:1
									}
								}
							});
							
						});
					   </script>
		<!-- Slider-JavaScript -->
			<script src="static/js/responsiveslides.min.js"></script>
			 <script>
			$(function () {	
			  $("#slider").responsiveSlides({
				auto: true,
				pager: false,
				nav: true,
				speed: 500,
				maxwidth: 800,
				namespace: "large-btns"
			  });

			});
		  </script>
		<!-- //Slider-JavaScript -->
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

		<script  type="text/javascript">
			function load() {
				var content=$("#content").val();
				if(content==null||content==''){
					alert("请输入评论！")
				}else{
				$.ajax({
					url:"${pageContext.request.contextPath}/comment",
					type:"post",
					dataType:"json",
					data:{content:content},
					success:function(result){
						//var comment = eval('(' + result + ')');
					var line =  "<p style='font-size: larger'>" + result + "楼："　+　$("#content").val() + "</p>";
				$("#ajaxo").html($("#ajaxo").html() + line);
				$("#content").val("");
			},
				error:function()
					{
						//document.body.innerHTML = xhr.responseText;可以查看原因
						alert("error");
					}


				})
				}
			}


		</script>
</body>		
</html>