<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="width" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html>
<html lang="en">
<head>
<title></title>
	<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css"><!-- bootstrap-CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap-select.css"><!-- bootstrap-select-CSS -->
<link href="${pageContext.request.contextPath}/static/css/style.css" rel="stylesheet" type="text/css" media="all" /><!-- style.css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/font-awesome.min.css" /><!-- fontawesome-CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/menu_sideslide.css" type="text/css" media="all"><!-- Navigation-CSS -->
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
<script src="${pageContext.request.contextPath}/static/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/static/js/bootstrap-select.js"></script>
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

	<style >
		#divcss1{height: 320px;margin-left:0px;width: 740px;border-style:solid; border-width:2px; border-color: #d1d1cc;
			margin-top: 40px;float: left;
		}
		#divcss2{height: 260px;margin-left:0px;width: 740px;border-bottom:1px solid #d1d1cc;
		margin-top: 0px}
		#divcss3{height: 40px;margin-top: 0px;}
		#divcss4{height: 20px;width:70px;margin-top:15px;float: right;margin-right: 30px}
		#divcss5{height: 230px;width: 180px;margin-top: 15px;margin-left: 15px;float: left}
		#divcss5 img{height: 230px;width: 180px;}
		#divcss6{height: 230px;width: 480px;margin-top: 15px;margin-right: 15px;float: right}
		#divcss7{height: 35px;width: auto;margin-top: 0px;}
		#divcss8{height: 35px;width: auto;margin-top: 15px;}
		#divcss9{height: 35px;width: auto;margin-top: 15px;}
		#divcss10{height: 35px;width: auto;margin-top: 15px;}
        #divcss20{height: 35px;width: auto;margin-top: 15px;}
		#divcss11{height: 320px;margin-right:0px;width: 365px;border-style:solid; border-width:2px; border-color: #d1d1cc;
			margin-top: 40px;float: right;
		}
		#divcss12{height: 40px;width:365px; border-bottom:1px solid #d1d1cc;margin-top: 0px}
		#divcss13{height: 20px;width: 365px;margin-top: 20px}
		#divcss14{height: 60px;width: 365px;margin-top: 0px}
		#divcss15{height: 40px;width: 365px;margin-top: 20px}
		#divcss16{height: 60px;width: 365px;margin-top: 0px}
		#divcss17{height: 40px;width: 365px;margin-top: 20px}
		#divcss18{height: 60px;width: 365px;margin-top: 0px}
		#divcss19{height: 40px;width: 365px;margin-top: 20px}
        #divcss21{height: 20px;width:70px;margin-top:15px;float: left;margin-left: 20px}
		#divcss22{height: auto;width: auto;margin-inside: 200px}
	</style>
	<style type="text/css">
		.important {height: 26px;width:260px;margin-top: 10px }
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
                <form action="${pageContext.request.contextPath}/update" method="post">
					<p>注册名：<input type="text" name="userName" id="userName" value="${user.userName}" readonly="readonly"></p><br>
                   <p> 店名：<input type="text" name="storeName" id="storeName" value="${user.storeName}" readonly="readonly"></p><br>
                    <p>地址：<input type="text" name="adress" id="adress" value="${user.adress}"></p><br>
                    <p>号码：<input type="text" name="phone" id="phone" value="${user.phone}"></p><br>
                    <p>说明：<input type="text" name="sign" id="sign" value="${user.sign}"></p><br>
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
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog"  style="height: 400px;" >
		<div class="modal-content">
			<div class="modal-header" style="height: 70px">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h1 class="modal-title" id="myModalLabel2" style="">
					<div style="height: 60px;">
						添加商品
					</div>

				</h1>
			</div>
			<div class="modal-body" style="height: 380px">
				<center>
					<form action="${pageContext.request.contextPath}/insertGoods" method="post" enctype="multipart/form-data">


						<div class="important"> 商品名：<input type="text" name="goodsName" ></div>
						<div class="important">价格：<input type="text" name="price" ></div>
						<div class="important">描述：<input type="text" name="describ" ></div>
						<div class="important">类型：<select name="typeName" style="width: 174px">
							<option value="零食">零食</option>
							<option value="生活用品">生活用品</option>
						</select></div>
						<div class="important"><input type="file"  name="imageFiles" /></div>
						<center><p><input type="submit"  style="height: 34px;width: 82px"  value="添加" ></p></center>


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
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog"  style="height: 400px;" >
		<div class="modal-content">
			<div class="modal-header" style="height: 70px">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h1 class="modal-title" id="myModalLabel1" style="">
					<div style="height: 60px;">
						修改头像
					</div>

				</h1>
			</div>
			<div class="modal-body" style="height: 200px">
				<center>
					<form action="${pageContext.request.contextPath}/image" method="post" enctype="multipart/form-data">
						<p><input type="text" name="userName"  value="yelei" style="opacity: 0"></p><br>
						<input type="file" id="imageFile" name="imageFile" style="width: 400px;"/><br>
						<input type="submit"  style="height: 34px;width: 82px"  value="上传" >

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
	<div class="w3layouts-breadcrumbs text-center">
		<div class="container">
			<span class="agile-breadcrumbs" style="float: left"><a href="index.jsp"><i class="fa fa-home home_1"></i></a> / <span>店家管理</span></span>
			<apan><div style="width: 60px;height: 17px;color: #fff;float: right"><a href="send" style="color:#fff;">售货情况</a> </div></apan>
		</div>
	</div>
	<!-- //breadcrumbs -->
	<!-- Submit Ad -->
	<div class="submit-ad main-grid-border">
		<div class="container">

			<div id="divcss1">
				<div id="divcss2">
					<div id="divcss5">
						<img src="${pageContext.request.contextPath}/static/upload/${user.userImage}" alt="图片自适应"/>
					</div>
					<div id="divcss6">
						<div id="divcss7" >
							<strong><h4>注册名：${user.userName}</h4></strong>
						</div>
						<div id="divcss8">
							<strong><h4>店名：${user.storeName}</h4></strong>
						</div>
						<div id="divcss9">
                            <strong><h4>地址：${user.adress}</h4></strong>
						</div>
                        <div id="divcss20">
                            <strong><h4>号码：${user.phone}</h4></strong>
                        </div>
						<div id="divcss10">
                            <strong><h4>说明：${user.sign}</h4></strong>
						</div>


					</div>

				</div>
				<div id="divcss3">
                    <div id="divcss21">
						<button class="btn btn-info " style="height: 34px;width: 82px"  data-toggle="modal" data-target="#myModal1">
							修改头像
						</button>

					</div>
                    <div id="divcss4">
						<button class="btn btn-info " style="height: 34px;width: 82px"  data-toggle="modal" data-target="#myModal">
							编辑资料
						</button>

					</div>

				</div>

			</div>
			<div id="divcss11">
				<div id="divcss12">
					<div id="divcss13">
						<center>管理</center>
					</div>

				</div>
				<div id="divcss14">
					<div id="divcss15">
						<center><button class="btn btn-info " style="height: 40px;width: 60%"  data-toggle="modal" onclick="window.location.href='test1.jsp'" >删除商品</button></center>
						</div>
					</div>
				<div id="divcss16">
					<div id="divcss17">
						<center><button class="btn btn-info " style="height: 40px;width: 60%"  data-toggle="modal" data-target="#myModal2">添加商品</button></center>
					</div>
				</div>
				<div id="divcss18">
					<div id="divcss19">
						<center><button class="btn btn-info " style="height: 40px;width: 60%"  data-toggle="modal" onclick="window.location.href='test1.jsp'" >更改商品信息</button></center>
					</div>
				</div>

			</div>

		</div>

	</div>
	<!-- // Submit Ad -->
	<!--footer section start-->		
		<footer>
			<div class="w3-agileits-footer-top">
				<div class="container">
					<div class="wthree-foo-grids">
						<div class="col-md-3 wthree-footer-grid">

						</div>
						<div class="col-md-3 wthree-footer-grid">
						</div>
						<div class="col-md-3 wthree-footer-grid">

						</div>
						<div class="col-md-3 wthree-footer-grid">

						</div>
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
			<script src="${pageContext.request.contextPath}/static/js/classie.js"></script>
			<script src="${pageContext.request.contextPath}/static/js/main.js"></script>
		<!-- //Navigation-JavaScript -->
		<!-- here stars scrolling icon -->
			<script type="text/javascript">
				$(document).ready(function() {
					$().UItoTop({ easingType: 'easeOutQuart' });
										
					});
			</script>
			<!-- start-smoth-scrolling -->
			<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/move-top.js"></script>
			<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/easing.js"></script>
			<script type="text/javascript">
				jQuery(document).ready(function($) {
					$(".scroll").click(function(event){		
						event.preventDefault();
						$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
					});
				});
			</script>
			<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>

			<script src="static/js/bootstrap.min.js"></script>
<script type="text/javascript" src="static/js/jquery-3.1.1.js">
	$(function (){
		$("#dialog").dialog({autoOpen:false});
		$("input[name='change']").click(function (){
			$("#dialog").dialog("open");

		});
		$("input[name='sc']").click(function (){
			$("dialog").dialog("close");
			window.location.reload();

		});

	});
</script>
			<!-- start-smoth-scrolling -->
		<!-- //here ends scrolling icon -->
</html>