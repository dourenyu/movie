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
		<title>注册</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css"/>
		<script src="${pageContext.request.contextPath}/js/jquery-1.10.1.min.js"></script>
		<script type="text/javascript"	src="${pageContext.request.contextPath}/js/jquery.form.js"></script>
		<script type="text/javascript">
		function toReg(){
	        	var option = {
	        		url:'${pageContext.request.getContextPath()}/user/reg',
	        		type :"post",
	        		dataType:'json',
	        		headers:{"ClientCallMode" : "ajax"}, 
	        		success : function(data) {
	        			if(data.message == 'error'){
							alert("注册失败！");
						}else{
							alert("注册成功！");
							window.location.href="${pageContext.request.getContextPath()}/index.jsp";
						}
	                },
	                error: function(data) {
	                    alert(JSON.stringify(data) + "--注册失败,请刷新后重试");
	                }
	             };
	       	 	$("#form_reg").ajaxSubmit(option);
	       	 	return false;
		}
		</script>
	</head>
	
	<body>
		<nav class="navbar navbarMi">
			<div class="wrapper">
		        <a class="site-logo" href="javascript:;">标题</a>
		    </div>
		</nav>
		
		<div class="container">
			<div class="col-md-8">
				<form class="form-horizontal" id="form_reg" name="form_reg">
					<div class="form-group">
						<label for="name" class="col-sm-2 col-sm-offset-3 control-label">用户名</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" name="name" placeholder="name">
						</div>
					</div>
					<div class="form-group">
						<label for="password" class="col-sm-2 col-sm-offset-3 control-label">密码</label>
						<div class="col-sm-4">
							<input type="password" class="form-control" name="password" placeholder="password">
						</div>
					</div>
					<div class="form-group">
						<label for="passwordSure" class="col-sm-2 col-sm-offset-3 control-label">确认密码</label>
						<div class="col-sm-4">
							<input type="password" class="form-control" name="passwordSure" placeholder="passwordSure">
						</div>
					</div>
					<div class="form-group">
						<label for="phone" class="col-sm-2 col-sm-offset-3 control-label">手机号</label>
						<div class="col-sm-4">
							<input type="tel" class="form-control" name="phone" placeholder="phone">
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-5 col-sm-7">
							<button type="button" class="btn btn-default" onclick="toReg()">注册</button>
						</div>
					</div>
				</form>
			</div>
		    
		    <div class="col-md-4">
		    	<div class="logoPic">
		    		<img src="img/logo.png"/>
		    	</div>
	    	</div>
		</div>
	    
	    <footer>
		    <p>
		        ©<a href="javascript:;">meituan.com</a>&nbsp;
		        <a target="_blank" href="javascript:;">京ICP证070791号</a>&nbsp;
		        <span>京公网安备11010502025545号</span>
		    </p>
		</footer>
		
	</body>
</html>
