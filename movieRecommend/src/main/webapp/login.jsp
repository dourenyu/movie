<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<!-- iOS 设备 begin -->
		<meta name="apple-mobile-web-app-title" content="标题">
		<!-- 添加到主屏后的标题（iOS 6 新增） -->
		<meta name="apple-mobile-web-app-capable" content="yes"/>
		<meta content="no" name="apple-touch-fullscreen">
		<meta content="yes" name="full-screen">
		<meta content="black" name="apple-mobile-web-app-status-bar-style">
		<meta content="telephone=yes,email=yes" name="format-detection">
		<meta content="address=no" name="format-detection">
		<title>登录</title>
		<link rel="stylesheet" type="text/css" href="font/iconfont.css"/>
		<link rel="stylesheet" type="text/css" href="css/reset.css"/>
		<link rel="stylesheet" type="text/css" href="css/style.css"/>
		
		<script src="js/jquery-1.10.1.min.js"></script>
		<script type="text/javascript">
			function loginAction(){
				$.ajax({
					type:"post",
					url:'${pageContext.request.getContextPath()}/user/toLogin',
					data:$("#login_form").serialize(),
					success:function(result){
						if(result.message == 'error'){
							alert("账号或密码错误！");
						}else{
							alert("登录成功！");
							window.location.href="${pageContext.request.getContextPath()}/toSkip/index";
						}				
					}
				})
			}
		</script>
	</head>
	
	<body>
		<header class="header">
		    <div class="wrapper">
		        <a class="site-logo" href="javascript:;">logo图</a>
		    </div>
		</header>
		
		<div class="content">
			<div class="fl logoPic">
		    	<img src="img/logo.png"/>
		   </div>
			<div class="fr formCon">
		        <div class="signup-form">
		        	<form action="" method="post" class="form form--stack" id="login_form">
				        <span class="login-type">账号登录</span>
				        <div class="form-field form-field--icon">
				            <i class="icon iconfont icon-user"></i>
				            <input type="text" id="uAccount" class="f-text" name="uAccount" placeholder="手机号/用户名/邮箱" value="">
				        </div>
				        <div class="form-field form-field--icon">
				            <i class="icon iconfont icon-password"></i>
				            <input type="password" id="uPassWord" class="f-text" name="uPassWord" placeholder="密码">
				        </div>
				        <div class="form-field cf lostKey signup-guide">
				        	<div class="fr"><a href="javascript:;" target="_top">忘记密码？</a></div>
				        </div>
				        <div class="form-field">
				        	<input type="button" name="" value="登录" class="btn btnLog" onclick="javascript:loginAction();" />
				        </div>
		                <div class="signup-guide">还没有账号？<a href="reg.html" target="_top">免费注册</a></div>
				    </form>
		        </div>
		    </div>
		</div>
	    
	    <footer>
		    <p class="copyright">
		        ©<a class="f1" href="javascript:;">meituan.com</a>&nbsp;
		        <a class="f1" target="_blank" href="javascript:;">京ICP证070791号</a>&nbsp;
		        <span class="f1">京公网安备11010502025545号</span>
		    </p>
		</footer>
		
	</body>
</html>
