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
		<title>基本信息</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/swiper.min.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/reset.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css"/>
		<script src="${pageContext.request.contextPath}/js/jquery-1.10.1.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/swiper.min.js"></script>
	</head>
	
	<body>
		<div class="headerBox">
		  <div class="header-inner">
		        <a href="javascript:;" class="logo" data-act="icon-click"></a>
		        
		        <div class="city-container">
		        	<div class="city-selected">
		        		<div class="city-name">上海<span class="caret"></span></div>
		        	</div>
		        </div>
		        
		        <div class="nav">
		            <ul class="navbar">
		                <li><a href="index.html">首页</a></li>
		                <li><a href="movie.html">电影</a></li>
		                <li><a href="cinemas.html">影院</a></li>
		                <li><a href="listTop.html">榜单</a></li>
		            </ul>
		        </div>
		
		        <div class="userInfo">
		            <div class="userAvatar">
		              <img src="${pageContext.request.contextPath}/img/loginPic.png">
		              <span class="caret"></span>
		              <ul class="userMenu">
		                <li class="text-ellipsis">
		                  <a href="javascript:${pageContext.request.contextPath}/myOrder.jsp;">我的订单</a>
		                </li>
		                <li class="text-ellipsis"><a href="javascript:;">基本信息</a></li>
		                <li class="text-ellipsis"><a href="javascript:;">退出登录</a></li>
		              </ul>
		            </div>
		        </div>
		
		        <form class="searchForm">
		            <input class="search" type="search" maxlength="32" placeholder="找影视剧、影人、影院" >
		            <input class="submit" type="submit" value="">
		        </form>
		        
		  </div>
		</div>
		<div class="header-placeholder"></div>
		
		<div class="container">
			<div class="info-content clearfix">
				<div class="user-profile-nav">
			        <h1>个人中心</h1>
			        <a href="${pageContext.request.contextPath}/myOrder.jsp">我的订单</a>
			        <a href="javascript:;" class="active">基本信息</a>
			    </div>
			    <div class="orders-container">
			    	<div class="profile-title">基本信息</div>
			    	<div class="infoFrom">
			    		<div class="avatar-container fl">
			    			<div class="J-setted-avatar">
			    				<img src="https://img.meituan.net/avatar/7c29b2ae11a1abcf7ae1c2ec63e0f8c829562.jpg" />
			    			</div>
			    			<div class="upload-avatar-image">
			    				<input type="button" class="upload-btn" value="更换头像">
		    					<input type="file" id="fileUpload" name="file">
			    			</div>
			    			<div class="tips">支持JPG,JPEG,PNG格式,且文件需小于1M</div>
			    		</div>
			    		
		    			<form class="info-form fl">
				          <div class="info-form-section">
				            <label>昵称：</label>
				            <input type="text" placeholder="2-15个字，支持中英文、数字" value="Sunshine">
				          </div>
				          <div class="info-form-section">
				          	<label>性别：</label>
				          	<span class="sex"><input type="radio" name="sex" id="man" value="" /><label for="man">男</label></span>
				          	<span><input type="radio" name="sex" id="woman" value="" checked="" /><label for="woman">女</label></span>
				          </div>
				          <div class="info-form-section">
				            <label>生日：</label>
				            <span>
				            	<div class="ui-select">
				            		<select name="year" class="ui-select">
				            			<option>--</option>
				            			<option value="2017">2017</option>
								        <option value="2016">2016</option>
								        <option value="2015">2015</option>
								        <option value="2014">2014</option>
								        <option value="2013">2013</option>
								        <option value="2012">2012</option>
								        <option value="2011">2011</option>
								        <option value="2010" selected="">2010</option>
				            		</select>
				            	</div>
			            		<span class="tip">年</span>
				            </span>
				            <span>
				            	<div class="ui-select">
				            		<select name="month" class="ui-select">
				            			<option>--</option>
				            			<option value="1"selected="">1</option>
								        <option value="2">2</option>
								        <option value="3">3</option>
								        <option value="4">4</option>
								        <option value="5">5</option>
								        <option value="6">6</option>
				            		</select>
				            	</div>
			            		<span class="tip">月</span>
				            </span>
				            <span>
				            	<div class="ui-select">
				            		<select name="day" class="ui-select">
				            			<option>--</option>
				            			<option value="1"selected="">1</option>
								        <option value="2">2</option>
								        <option value="3">3</option>
								        <option value="4">4</option>
								        <option value="5">5</option>
								        <option value="6">6</option>
				            		</select>
				            	</div>
			            		<span class="tip">日</span>
				            </span>
				          </div>
				          <div class="info-form-section">
				          	<label>兴趣：</label>
				          	<div class="interest-list">
				          		<span>
					                <input type="checkbox" id="interest1" value="美食" class="ui-checkbox">
					                <label for="interest1">美食</label>
					            </span>
					            <span>
					                <input type="checkbox" id="interest2" value="电影" class="ui-checkbox">
					                <label for="interest2">电影</label>
					            </span>
					            <span>
					                <input type="checkbox" id="interest3" value="动漫" class="ui-checkbox">
					                <label for="interest3">动漫</label>
					            </span>
					            <span>
					                <input type="checkbox" id="interest4" value="摄影" class="ui-checkbox">
					                <label for="interest4">摄影</label>
					            </span>
					            <span>
					                <input type="checkbox" id="interest5" value="音乐" class="ui-checkbox">
					                <label for="interest5">音乐</label>
					            </span>
					            <span>
					                <input type="checkbox" id="interest6" value="财经" class="ui-checkbox">
					                <label for="interest6">财经</label>
					            </span>
					            <span>
					                <input type="checkbox" id="interest7" value="文字" class="ui-checkbox">
					                <label for="interest7">文字</label>
					            </span>
					            <span>
					                <input type="checkbox" id="interest8" value="体育" class="ui-checkbox">
					                <label for="interest8">体育</label>
					            </span>
					            <span class="bottom-tips">选择你的兴趣使你获得个性化的电影推荐哦</span>
				          	</div>
				          </div>
				          
				          <input type="submit" class="form-save-btn" value="保存">
				        </form>
			    	
			    	</div>
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
	
		<script>
			// 轮播图
			var swiper = new Swiper('.swiper-container', {
	        	pagination: '.swiper-pagination',
	        	slidesPerView: 1,	
	       		slidesPerGroup : 1,
				loop: true,
	       		paginationClickable: true,
				autoplay: 4000,
				prevButton: '.arrow-left',
        		nextButton: '.arrow-right',
	   		});

		</script>
	
	</body>
</html>
