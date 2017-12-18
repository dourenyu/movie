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
		<title>首页</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/font/iconfont.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/swiper.min.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/reset.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css"/>
		<script src="${pageContext.request.contextPath}/js/jquery-1.10.1.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/swiper.min.js"></script>
		
		
		<script>
			function toMovie(){
				window.location.href="${pageContext.request.getContextPath()}/movie/list";
			}
		</script>
	</head>
	
	<body>
		<div class="headerBox">
		  <div class="header-inner">
		        <a href="javascript:;" class="logo" data-act="icon-click"></a>
		        
		        <div class="nav">
		            <ul class="navbar">
		                <li><a href="javascript:;" class="active">首页</a></li>
		                <li><a href="javascript:toMovie();">电影</a></li>
		                <li><a href="javascript:;">影院</a></li>
		                <li><a href="javascript:;">榜单</a></li>
		            </ul>
		        </div>
		
		        <div class="userInfo">
		            <div class="userAvatar">
		              <img src="${pageContext.request.contextPath}/img/loginPic.png">
		              <span class="caret"></span>
		              <ul class="userMenu">
		                <li><a href="${pageContext.request.contextPath}/login.jsp">登录</a></li>
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
		<!--轮播banner图-->
		<div class="banner">
			<a class="arrow arrow-left" href="javascript:;"></a>
			<a class="arrow arrow-right" href="javascript:;"></a>
			<div class="swiper-container">
            	<div class="swiper-wrapper">
					<div class="swiper-slide">
						<a href="javascript:;">
							<div class="swipePic"><img src="${pageContext.request.contextPath}/img/banner1.jpg"></div>
						</a>
					</div>
					<div class="swiper-slide">
						<a href="javascript:;">
							<div class="swipePic"><img src="${pageContext.request.contextPath}/img/banner2.jpg"></div>
						</a>
					</div>
					<div class="swiper-slide">
						<a href="javascript:;">
							<div class="swipePic"><img src="${pageContext.request.contextPath}/img/banner3.jpg"></div>
						</a>
					</div>
            	</div>
				<!-- Add Pagination -->
				<div class="swiper-pagination"></div> 
			</div>
		</div>
		
		<div class="container">
			<div class="infoContent">
				<div class="fr aside">
					<!--榜单-->
					<div class="ranking-box-wrapper">
						<div class="panel">
							<div class="panel-header">
								<span class="panel-title">榜单</span>
							</div>
							<div class="panel-content">
								<ul class="ranking-wrapper ranking-box">
									<li class="ranking-item ranking-top ranking-index-1">
								      	<a href="javascript:;">
									        <div class="ranking-top-left fl">
									            <i class="ranking-top-icon"></i>
									            <img class="ranking-img  default-img" src="http://p0.meituan.net/movie/5289fa9d56a76ca6807700b5122e4b5f835754.jpg@120w_80h_1e_1c">
									        </div>
									        <div class="ranking-top-right">
									          <div class="ranking-top-right-main">
									            <span class="ranking-top-moive-name">正义联盟</span>
								              		<p class="ranking-top-wish">
								                  <span class="stonefont">524.64</span>万
								              		</p>
								          		</div>
								        	</div>
								        </a>
								    </li>
									<li class="ranking-item ranking-index-2">
									    <a href="javascript:;">
									        <div class="normal-link">
									          	<i class="ranking-index">2</i>
									            <span class="ranking-movie-name">降魔传</span>
									            <div class="ranking-num-info fr">
									                <span class="stonefont">91.98</span>万
									            </div>
									        </div>
									    </a>
									</li>
									<li class="ranking-item ranking-index-3">
									    <a href="javascript:;">
									        <div class="normal-link">
									          	<i class="ranking-index">3</i>
									            <span class="ranking-movie-name">东方快车谋杀案</span>
									            <div class="ranking-num-info fr">
									                <span class="stonefont">80.56</span>万
									            </div>
									        </div>
									    </a>
									</li>
									<li class="ranking-item ranking-index-4">
									    <a href="javascript:;">
									        <div class="normal-link">
									          	<i class="ranking-index">4</i>
									            <span class="ranking-movie-name">雷神3：诸神黄昏</span>
									            <div class="ranking-num-info fr">
									                <span class="stonefont">64.31</span>万
									            </div>
									        </div>
									    </a>
									</li>
									<li class="ranking-item ranking-index-5">
									    <a href="javascript:;">
									        <div class="normal-link">
									          	<i class="ranking-index">5</i>
									            <span class="ranking-movie-name">英雄本色</span>
									            <div class="ranking-num-info fr">
									                <span class="stonefont">50.58</span>万
									            </div>
									        </div>
									    </a>
									</li>
									<li class="ranking-item ranking-index-6">
									    <a href="javascript:;">
									        <div class="normal-link">
									          	<i class="ranking-index">6</i>
									            <span class="ranking-movie-name">烽火芳菲</span>
									            <div class="ranking-num-info fr">
									                <span class="stonefont">49.66</span>万
									            </div>
									        </div>
									    </a>
									</li>
									<li class="ranking-item ranking-index-7">
									    <a href="javascript:;">
									        <div class="normal-link">
									          	<i class="ranking-index">7</i>
									            <span class="ranking-movie-name">不成问题的问题</span>
									            <div class="ranking-num-info fr">
									                <span class="stonefont">44.76</span>万
									            </div>
									        </div>
									    </a>
									</li>
									<li class="ranking-item ranking-index-8">
									    <a href="javascript:;">
									        <div class="normal-link">
									          	<i class="ranking-index">8</i>
									            <span class="ranking-movie-name">暴雪将至</span>
									            <div class="ranking-num-info fr">
									                <span class="stonefont">42.26</span>万
									            </div>
									        </div>
									    </a>
									</li>
									<li class="ranking-item ranking-index-9">
									    <a href="javascript:;">
									        <div class="normal-link">
									          	<i class="ranking-index">9</i>
									            <span class="ranking-movie-name">七十七天</span>
									            <div class="ranking-num-info fr">
									                <span class="stonefont">39.09</span>万
									            </div>
									        </div>
									    </a>
									</li>
									<li class="ranking-item ranking-index-10">
									    <a href="javascript:;">
									        <div class="normal-link">
									          	<i class="ranking-index">10</i>
									            <span class="ranking-movie-name">恐袭波士顿</span>
									            <div class="ranking-num-info fr">
									                <span class="stonefont">34.51</span>万
									            </div>
									        </div>
									    </a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="fl main">
					<div class="movie-grid">
						<!--正在热映-->
						<div class="panel">
							<div class="panel-header">
								<span class="panel-title">正在热映（26部）</span>
								<span class="panel-more fr">
							        <a href="javascript:;">
							          <span>全部</span>
							        </a>
							        <span class="panel-arrow panel-arrow-red"></span>
							      </span>
							</div>
							<div class="panel-content">
								<ul class="movie-list">
									<li>
										<div class="movie-item">
											<a href="javascript:;">
												<div class="movie-poster">
													<img src="http://p1.meituan.net/movie/b9395cd202a461303cf06cea89292071556090.png@160w_220h_1e_1c">
													<div class="movie-overlay movie-overlay-bg">
											          <div class="movie-info">
											            <div class="movie-score fr"><i class="integer">8.</i><i class="fraction">6</i></div>
											            <div class="movie-title movie-title-padding" title="正义联盟">正义联盟</div>
											          </div>
											        </div>
												</div>
											</a>
											<div class="movie-detail movie-detail-strong movie-sale">
												<a href="javascript:;" class="active">购 票</a>
											</div>
											<div class="movie-ver"><span class="imax3d"></span></div>
										</div>
									</li>
									<li>
										<div class="movie-item">
											<a href="javascript:;">
												<div class="movie-poster">
													<img src="http://p0.meituan.net/movie/7797d45caf40fcfcdc0f88378850e2441016690.jpg@160w_220h_1e_1c">
													<div class="movie-overlay movie-overlay-bg">
											          <div class="movie-info">
											            <div class="movie-title movie-title-padding" title="追捕">追捕</div>
											          </div>
											        </div>
												</div>
											</a>
											<div class="movie-detail movie-detail-strong movie-sale">
												<a href="javascript:;" class="active">购 票</a>
											</div>
											<div class="movie-ver"></div>
										</div>
									</li>
									<li>
										<div class="movie-item">
											<a href="javascript:;">
												<div class="movie-poster">
													<img src="http://p1.meituan.net/movie/ce979de334b1b6229ba125b4a31f5ce1650096.png@160w_220h_1e_1c">
													<div class="movie-overlay movie-overlay-bg">
											          <div class="movie-info">
											          	<div class="movie-score fr"><i class="integer">8.</i><i class="fraction">2</i></div>
											            <div class="movie-title movie-title-padding" title="东方快车谋杀案">东方快车谋杀案</div>
											          </div>
											        </div>
												</div>
											</a>
											<div class="movie-detail movie-detail-strong movie-sale">
												<a href="javascript:;" class="active">购 票</a>
											</div>
											<div class="movie-ver"></div>
										</div>
									</li>
									<li>
										<div class="movie-item">
											<a href="javascript:;">
												<div class="movie-poster">
													<img src="http://p0.meituan.net/movie/3565875a1049ba86706e48f4ed2c7680510984.jpg@160w_220h_1e_1c">
													<div class="movie-overlay movie-overlay-bg">
											          <div class="movie-info">
											            <div class="movie-title movie-title-padding" title="寻梦环游记">寻梦环游记</div>
											          </div>
											        </div>
												</div>
											</a>
											<div class="movie-detail movie-detail-strong movie-sale">
												<a href="javascript:;" class="active">购 票</a>
											</div>
											<div class="movie-ver"><span class="m3d"></span></div>
										</div>
									</li>
									<li>
										<div class="movie-item">
											<a href="javascript:;">
												<div class="movie-poster">
													<img src="http://p1.meituan.net/movie/9c80c528f3cd023472f2fec77671211b1021404.jpg@160w_220h_1e_1c">
													<div class="movie-overlay movie-overlay-bg">
											          <div class="movie-info">
											            <div class="movie-title movie-title-padding" title="降魔传">降魔传</div>
											          </div>
											        </div>
												</div>
											</a>
											<div class="movie-detail movie-detail-strong movie-sale">
												<a href="javascript:;" class="active">购 票</a>
											</div>
											<div class="movie-ver"><span class="m3d"></span></div>
										</div>
									</li>
									<li>
										<div class="movie-item">
											<a href="javascript:;">
												<div class="movie-poster">
													<img src="http://p1.meituan.net/movie/b0463d95e071532a4c5cd4eb4e8488631018469.jpg@160w_220h_1e_1c">
													<div class="movie-overlay movie-overlay-bg">
											          <div class="movie-info">
											            <div class="movie-title movie-title-padding" title="引爆者">引爆者</div>
											          </div>
											        </div>
												</div>
											</a>
											<div class="movie-detail movie-detail-strong movie-sale">
												<a href="javascript:;" class="active">购 票</a>
											</div>
											<div class="movie-ver"></div>
										</div>
									</li>
									<li>
										<div class="movie-item">
											<a href="javascript:;">
												<div class="movie-poster">
													<img src="http://p1.meituan.net/movie/579a0919e926a80ad14c717c8d8a8394259181.jpg@160w_220h_1e_1c">
													<div class="movie-overlay movie-overlay-bg">
											          <div class="movie-info">
											          	<div class="movie-score fr"><i class="integer">8.</i><i class="fraction">9</i></div>
											            <div class="movie-title movie-title-padding" title="雷神3：诸神黄昏">雷神3：诸神黄昏</div>
											          </div>
											        </div>
												</div>
											</a>
											<div class="movie-detail movie-detail-strong movie-sale">
												<a href="javascript:;" class="active">购 票</a>
											</div>
											<div class="movie-ver"></div>
										</div>
									</li>
									<li>
										<div class="movie-item">
											<a href="javascript:;">
												<div class="movie-poster">
													<img src="http://p0.meituan.net/movie/c73c3b0511b40f083845445f1099a0a8958380.jpg@160w_220h_1e_1c">
													<div class="movie-overlay movie-overlay-bg">
											          <div class="movie-info">
											          	<div class="movie-score fr"><i class="integer">6.</i><i class="fraction">8</i></div>
											            <div class="movie-title movie-title-padding" title="暴雪将至">暴雪将至</div>
											          </div>
											        </div>
												</div>
											</a>
											<div class="movie-detail movie-detail-strong movie-sale">
												<a href="javascript:;" class="active">购 票</a>
											</div>
											<div class="movie-ver"></div>
										</div>
									</li>
								</ul>
							</div>
						</div>
						<!--即将上映-->
						<div class="panel">
							<div class="panel-header">
								<span class="panel-title textcolor_blue">即将上映（276部）</span>
								<span class="panel-more fr">
							        <a href="javascript:;" class="textcolor_blue">
							          <span>全部</span>
							        </a>
							        <span class="panel-arrow panel-arrow-blue"></span>
							      </span>
							</div>
							<div class="panel-content">
								<ul class="movie-list">
									<li>
										<div class="movie-item">
											<a href="javascript:;">
												<div class="movie-poster">
													<img src="http://p1.meituan.net/movie/e6112778e12a47fb358d1dbf92ba857d950271.jpg@160w_220h_1e_1c">
													<div class="movie-overlay movie-overlay-bg">
											          <div class="movie-info">
											            <div class="movie-title" title="一路绽放">一路绽放</div>
											          </div>
											        </div>
												</div>
											</a>
											<div class="movie-detail movie-wish"><span class="stonefont">1312</span>人想看</div>
											<div class="movie-detail movie-detail-strong movie-presale">
												<a href="javascript:;" class="movie-presale-sep">预告片</a><a href="javascript:;" class="active">预 售</a>
											</div>
										</div>
										<div class="movie-detail movie-rt">11月23日上映</div>										
									</li>
									<li>
										<div class="movie-item">
											<a href="javascript:;">
												<div class="movie-poster">
													<img src="http://p0.meituan.net/movie/7797d45caf40fcfcdc0f88378850e2441016690.jpg@160w_220h_1e_1c">
													<div class="movie-overlay movie-overlay-bg">
											          <div class="movie-info">
											            <div class="movie-title" title="追捕">追捕</div>
											          </div>
											        </div>
												</div>
											</a>
											<div class="movie-detail movie-wish"><span class="stonefont">59725</span>人想看</div>
											<div class="movie-detail movie-detail-strong movie-presale">
												<a href="javascript:;" class="movie-presale-sep">预告片</a><a href="javascript:;" class="active">预 售</a>
											</div>
										</div>
										<div class="movie-detail movie-rt">11月24日上映</div>										
									</li>
									<li>
										<div class="movie-item">
											<a href="javascript:;">
												<div class="movie-poster">
													<img src="http://p0.meituan.net/movie/fe0224d3bde17520754f58f956232f68534526.png@160w_220h_1e_1c">
													<div class="movie-overlay movie-overlay-bg">
											          <div class="movie-info">
											            <div class="movie-title" title="推理笔记">推理笔记</div>
											          </div>
											        </div>
												</div>
											</a>
											<div class="movie-detail movie-wish"><span class="stonefont">37431</span>人想看</div>
											<div class="movie-detail movie-detail-strong movie-presale">
												<a href="javascript:;" class="movie-presale-sep">预告片</a><a href="javascript:;" class="active">预 售</a>
											</div>
										</div>
										<div class="movie-detail movie-rt">11月24日上映</div>										
									</li>
									<li>
										<div class="movie-item">
											<a href="javascript:;">
												<div class="movie-poster">
													<img src="http://p1.meituan.net/movie/b0463d95e071532a4c5cd4eb4e8488631018469.jpg@160w_220h_1e_1c">
													<div class="movie-overlay movie-overlay-bg">
											          <div class="movie-info">
											            <div class="movie-title" title="引爆者">引爆者</div>
											          </div>
											        </div>
												</div>
											</a>
											<div class="movie-detail movie-wish"><span class="stonefont">35923</span>人想看</div>
											<div class="movie-detail movie-detail-strong movie-presale">
												<a href="javascript:;" class="movie-presale-sep">预告片</a><a href="javascript:;" class="active">预 售</a>
											</div>
										</div>
										<div class="movie-detail movie-rt">11月24日上映</div>										
									</li>
									<li>
										<div class="movie-item">
											<a href="javascript:;">
												<div class="movie-poster">
													<img src="http://p0.meituan.net/movie/3565875a1049ba86706e48f4ed2c7680510984.jpg@160w_220h_1e_1c">
													<div class="movie-overlay movie-overlay-bg">
											          <div class="movie-info">
											            <div class="movie-title" title="寻梦环游记">寻梦环游记</div>
											          </div>
											        </div>
												</div>
											</a>
											<div class="movie-detail movie-wish"><span class="stonefont">12900</span>人想看</div>
											<div class="movie-detail movie-detail-strong movie-presale">
												<a href="javascript:;" class="movie-presale-sep">预告片</a><a href="javascript:;" class="active">预 售</a>
											</div>
											<div class="movie-ver"><span class="m3d"></span></div>
										</div>
										<div class="movie-detail movie-rt">11月24日上映</div>										
									</li>
									<li>
										<div class="movie-item">
											<a href="javascript:;">
												<div class="movie-poster">
													<img src="http://p1.meituan.net/movie/29e0754e8d5e4f4edf6375a9c2198db3364727.jpg@160w_220h_1e_1c">
													<div class="movie-overlay movie-overlay-bg">
											          <div class="movie-info">
											            <div class="movie-title" title="七月半3：灵触第七感">七月半3：灵触第七感</div>
											          </div>
											        </div>
												</div>
											</a>
											<div class="movie-detail movie-wish"><span class="stonefont">7504</span>人想看</div>
											<div class="movie-detail movie-detail-strong movie-presale">
												<a href="javascript:;" class="movie-presale-sep">预告片</a><a href="javascript:;" class="active">预 售</a>
											</div>
										</div>
										<div class="movie-detail movie-rt">11月24日上映</div>										
									</li>
									<li>
										<div class="movie-item">
											<a href="javascript:;">
												<div class="movie-poster">
													<img src="http://p1.meituan.net/movie/c66bef60115f204d1385d93027979c9e5057446.jpg@160w_220h_1e_1c">
													<div class="movie-overlay movie-overlay-bg">
											          <div class="movie-info">
											            <div class="movie-title" title="刺杀盖世太保">刺杀盖世太保</div>
											          </div>
											        </div>
												</div>
											</a>
											<div class="movie-detail movie-wish"><span class="stonefont">3933</span>人想看</div>
											<div class="movie-detail movie-detail-strong movie-presale">
												<a href="javascript:;" class="movie-presale-sep">预告片</a><a href="javascript:;" class="active">预 售</a>
											</div>
										</div>
										<div class="movie-detail movie-rt">11月24日上映</div>										
									</li>
									<li>
										<div class="movie-item">
											<a href="javascript:;">
												<div class="movie-poster">
													<img src="http://p1.meituan.net/movie/6dc90ebc7b3b740f6242c55ef0ee4961815296.png@160w_220h_1e_1c">
													<div class="movie-overlay movie-overlay-bg">
											          <div class="movie-info">
											            <div class="movie-title" title="嘉年华">嘉年华</div>
											          </div>
											        </div>
												</div>
											</a>
											<div class="movie-detail movie-wish"><span class="stonefont">3790</span>人想看</div>
											<div class="movie-detail movie-detail-strong movie-presale">
												<a href="javascript:;" class="movie-presale-sep">预告片</a><a href="javascript:;" class="active">预 售</a>
											</div>
										</div>
										<div class="movie-detail movie-rt">11月24日上映</div>										
									</li>
								</ul>
							</div>
						</div>
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
