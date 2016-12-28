<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
	<script src="static/jquery/jquery-1.11.1.min.js"></script>
<script type="text/javascript">
    function aload(){
		var Cname=$("#Cname").val();
		var Cpassword=$("#Cpassword").val();
		var Cphone=$("#Cphone").val();
		if(Cname==null || Cname==''){
			alert("请输入用户名！");
		}else if(Cpassword==null || Cpassword==''){
			alert("请输入密码");
		}else if(Cphone==null || Cphone==''){
			alert("电话号码");
		}
		else{

		$.ajax({

			url:"${pageContext.request.contextPath}/Cyan",
			type:"post",
			dataType:"json",
			data:{Cname:Cname,Cpassword:Cpassword,Cphone:Cphone},
			success:function (result){
				if (result.success){
					alert("已存在该用户名！")
				}else{
					alert("该号码已经注册！")
				}
			}
		});
    }}
</script>
	<script type="text/javascript">
	function _submit_bubble(){
		var Cname=$("#Cname").val();
		var Cpassword=$("#Cpassword").val();
		var Cadress=$("#Cadress").val();
		var Cphone=$("#Cphone").val();
		var Ctest=$("#Ctest").val();
		if(Cname==null || Cname==''){
			alert("请输入用户名！");
		}else if(Cpassword==null || Cpassword==''){
			alert("请输入密码");
		}else if (Cadress==null||Cadress==""){
			alert("请输入详细地址")


		}else if(Cphone==null || Cphone==''){
			alert("电话号码");
		}else if(Ctest==null||Ctest==''){
			alert("请输入验证码")
		}
		else{
		$.ajax({

			url:"${pageContext.request.contextPath}/Cregister",
			type:"post",
			dataType:"json",
			data:{Cname:Cname,Cpassword:Cpassword,Cadress:Cadress,Cphone:Cphone,Ctest:Ctest},
			success:function (result){

				if (result.success==true){
					alert("请输入正确的验证码");
				}else if(result.success==false){
					alert("gfjhgfjhifgjhi");
					window.location.href="signin.jsp";
				}
			}
		});
	}
	}




</script>
</head>
<body>
	<!-- Navigation -->
		<!-- //Navigation -->
	<!-- header -->
	<header>
		<div class="w3ls-header"><!--header-one--> 

			<div class="w3ls-header-right">
				<ul>
					<li class="dropdown head-dpdn">
						<a href="signin.jsp" aria-expanded="false"><i class="fa fa-user" aria-hidden="true"></i>登录</a>
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
				<div class="clearfix"></div>
			</div>
		</div>
	</header>
	<!-- //header -->
	 <!-- sign up form -->
	 <section>
		<div id="agileits-sign-in-page" class="sign-in-wrapper">
			<div class="agileinfo_signin">
			<h3>注册</h3>
				<form action="${pageContext.request.contextPath}/Cregister" method="post" id="form1">
					<input type="text" id="Cname" name="Cname" placeholder="名字" required="">
					<input type="password" id="Cpassword" name="Cpassword" placeholder="密码" required="">
					<input type="text" id="Cadress" name="Cadress"placeholder="具体地址" required="">
					<input type="tel" id="Cphone" name="Cphone" placeholder="Mobile" required="" style="display: block ;width: 70%;float: left">
					<input type="button" value="发送验证码" onclick="aload()" style="display: block;  height: 40px; width: 30%;float: right;margin-top: 0;">
					<input type="text" id="Ctest" name="Ctest" placeholder="验证码" required="">
					<input type="submit" value="注册" <%--onclick="_submit_bubble()"--%>>
				</form>
			</div>
		</div>
	</section>
	<!-- //sign up form -->
	<!--footer section start-->		
		<footer>

			<div class="agileits-footer-bottom text-center">
			<div class="container">
				<div class="w3-footer-logo">
					<h1><a href="index.jsp"><span>Re</span>sale-v2</a></h1>
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