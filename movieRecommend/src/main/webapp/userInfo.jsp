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
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/reset.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css"/>
		
		<script src="${pageContext.request.contextPath}/js/jquery-1.10.1.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/select.js"></script>
		<script type="text/javascript"	src="${pageContext.request.contextPath}/js/jquery.form.js"></script>
		
		<script type="text/javascript">
		 function toAlterInfo(){
	        	var option = {
	        		url:'${pageContext.request.getContextPath()}/user/alterInfo',
	        		type :"post",
	        		dataType:'json',
	        		headers:{"ClientCallMode" : "ajax"}, 
	        		success : function(data) {
	        			if(data.message == 'error'){
							alert("修改失败！");
						}else{
							alert("修改成功！");
							window.location.href="${pageContext.request.getContextPath()}/index.jsp";
						}
	                },
	                error: function(data) {
	                    alert(JSON.stringify(data) + "--修改失败,请刷新后重试");
	                }
	             };
	       	 	$("#form_info").ajaxSubmit(option);
	       	 	return false;
	        }

		</script>

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
		                  <a href="javascript:;">我的订单</a>
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
			        <a href="myOrder.html">我的订单</a>
			        <a href="javascript:;" class="active">基本信息</a>
			    </div>
			    <div class="orders-container">
			    	<div class="profile-title">基本信息</div>
			    	<div class="infoFrom">
			    	<form class="info-form fl" enctype="multipart/form-data" id="form_info" name="form_info">
			    		<!-- 更换头像 -->
			    		<div class="avatar-container fl">
			    			<div class="J-setted-avatar" id="preview">
		                        <img id="imghead" border="0" src="https://img.meituan.net/avatar/7c29b2ae11a1abcf7ae1c2ec63e0f8c829562.jpg" onclick="$('#previewImg').click();">
		                     </div> 

			    			<div class="upload-avatar-image">
			    				<input type="button" class="upload-btn" value="更换头像">
		    					<input type="file" id="fileUpload" name="file" onchange="previewImage(this)" id="previewImg">
			    			</div>
			    			<div class="tips">支持JPG,JPEG,PNG格式,且文件需小于1M</div>
			    		</div>
			    		<!-- 基本信息 -->
				          <div class="info-form-section">
				            <label>昵称：</label>
				            <input type="text"  name="uiname" placeholder="2-15个字，支持中英文、数字" value="Sunshine">
				          </div>
				          <div class="info-form-section">
				          	<label>性别：</label>
				          	<span class="sex"><input type="radio" name="sex" id="man" value="man" /><label for="man">男</label></span>
				          	<span><input type="radio" name="sex" id="woman" value="woman" checked="" /><label for="woman">女</label></span>
				          </div>
				          <div class="info-form-section">
				            <label>生日：</label>
							<div class="ui-select date">
								<select name="year" id="year">
									<option value="">选择年份</option>
								</select>
								<select name="month" id="month">
									<option value="">选择月份</option>
								</select>
								<select name="days" id="days">
									<option value="">选择日期</option>
								</select>
							</div>
				          </div>
				          <div class="info-form-section">
				          	<label>兴趣：</label>
				          	<div class="interest-list">
				          		<span>
					                <input type="checkbox" id="interest1" name="uilike" value="a" class="ui-checkbox">
					                <label for="interest1">美食</label>
					            </span>
					            <span>
					                <input type="checkbox" id="interest2" name="uilike" value="b" class="ui-checkbox">
					                <label for="interest2">电影</label>
					            </span>
					            <span>
					                <input type="checkbox" id="interest3" name="uilike" value="c" class="ui-checkbox">
					                <label for="interest3">动漫</label>
					            </span>
					            <span>
					                <input type="checkbox" id="interest4" name="uilike" value="d" class="ui-checkbox">
					                <label for="interest4">摄影</label>
					            </span>
					            <span>
					                <input type="checkbox" id="interest5" name="uilike" value="e" class="ui-checkbox">
					                <label for="interest5">音乐</label>
					            </span>
					            <span>
					                <input type="checkbox" id="interest6" name="uilike" value="f" class="ui-checkbox">
					                <label for="interest6">财经</label>
					            </span>
					            <span>
					                <input type="checkbox" id="interest7" name="uilike" value="g" class="ui-checkbox">
					                <label for="interest7">文字</label>
					            </span>
					            <span>
					                <input type="checkbox" id="interest8" name="uilike" value="h" class="ui-checkbox">
					                <label for="interest8">体育</label>
					            </span>
					            <span class="bottom-tips">选择你的兴趣使你获得个性化的电影推荐哦</span>
				          	</div>
				          </div>
				          
				          <input type="button" class="form-save-btn" value="保存" onclick="toAlterInfo()">
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
	   		// 年月日
	   		$(function(){
				$(".date").selectDate()
				
				$("#days").focusout(function(){
					var year = $("#year option:selected").html()
					var month = $("#month option:selected").html()
					var day = $("#days option:selected").html()
					console.log(year+month+day)
				})
				
			})

		   	//图片上传预览    IE是用了滤镜。
	        function previewImage(file) {
	          var MAXWIDTH  = 90; 
	          var MAXHEIGHT = 90;
	          var div = document.getElementById('preview');
	          if (file.files && file.files[0]) {
	              div.innerHTML ='<img id=imghead onclick=$("#previewImg").click()>';
	              var img = document.getElementById('imghead');
	              img.onload = function(){
	                var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
	                img.width  =  rect.width;
	                img.height =  rect.height;
					// img.style.marginLeft = rect.left+'px';
	                img.style.marginTop = rect.top+'px';
	              }
	              var reader = new FileReader();
	              reader.onload = function(evt){img.src = evt.target.result;}
	              reader.readAsDataURL(file.files[0]);
	          } else {
	          	//兼容IE
	            var sFilter='filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src="';
	            file.select();
	            var src = document.selection.createRange().text;
	            div.innerHTML = '<img id=imghead>';
	            var img = document.getElementById('imghead');
	            img.filters.item('DXImageTransform.Microsoft.AlphaImageLoader').src = src;
	            var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
	            status =('rect:'+rect.top+','+rect.left+','+rect.width+','+rect.height);
	            div.innerHTML = "<div id=divhead style='width:"+rect.width+"px;height:"+rect.height+"px;margin-top:"+rect.top+"px;"+sFilter+src+"\"'></div>";
	          }
	        }
	        function clacImgZoomParam( maxWidth, maxHeight, width, height ){
	            var param = {top:0, left:0, width:width, height:height};
	            if( width>maxWidth || height>maxHeight ){
	                rateWidth = width / maxWidth;
	                rateHeight = height / maxHeight;
	                
	                if( rateWidth > rateHeight ){
	                    param.width =  maxWidth;
	                    param.height = Math.round(height / rateWidth);
	                }else{
	                    param.width = Math.round(width / rateHeight);
	                    param.height = maxHeight;
	                }
	            }
	            param.left = Math.round((maxWidth - param.width) / 2);
	            param.top = Math.round((maxHeight - param.height) / 2);
	            return param;
	        }

		</script>
	
	</body>
</html>
