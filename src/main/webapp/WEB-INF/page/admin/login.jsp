<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"
	integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="
	crossorigin="anonymous"></script>
<script type="text/javascript">
		$(function(){
		$("#LOGSUB").click(function(){
			var username = $("#username").val();
			var password = $("#password").val();
			if(!username){
				alert("用户名必填!");
				$("#username").focus();
				return ;
			}
			if(!password){
				alert("密码必填!");
				$("#password").focus();
				return ;
			}
			
			var param = {"username":username,"password":password}; 
			$.post("http://localhost:8080/ssm-test/aloginaction",param,function(result){
				if(result){
					window.location.href="http://localhost:8080/ssm-test/homepage";	
					//alert("登录成功");
				}else{
					alert("用户名或者密码错误!");
				}
			});
		});
	
	});
		
	</script>
<title>管理员登陆</title>
<!-- Custom Theme files -->
<link href="${pageContext.request.contextPath}/res/css/admin/style.css" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="keywords" content="Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<!--Google Fonts-->
<link href='http://fonts.useso.com/css?family=Roboto:500,900italic,900,400italic,100,700italic,300,700,500italic,100italic,300italic,400' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
<!--Google Fonts-->
</head>
<body>
<div class="login">
	<h2>后台 管理</h2>
	<div class="login-top">
		<h1>LOGIN </h1>
		<form>
			<input type="text" value="username" id ="username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '管理员账号';}">
			<input type="password" value="password" id="password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'password';}">
	    </form>
	    <div class="forgot">
	    	<input type="submit" value="Login" id="LOGSUB">
	    </div>
	</div>
	<div class="login-bottom">
	</div>
</div>	
<div class="copyright">
</div>


</body>
</html>