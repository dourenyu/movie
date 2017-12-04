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
		<title>电影</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/reset.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css"/>
		<script src="${pageContext.request.contextPath}/js/jquery-1.10.1.min.js"></script>
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
		                <li><a href="javascript:;" class="active">电影</a></li>
		                <li><a href="cinemas.html">影院</a></li>
		                <li><a href="listTop.html">榜单</a></li>
		            </ul>
		        </div>
		
		        <div class="userInfo">
		            <div class="userAvatar">
		              <img src="${pageContext.request.contextPath}/img/loginPic.png">
		              <span class="caret"></span>
		              <ul class="userMenu">
		                <li><a href="javascript:void 0">登录</a></li>
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
		
		<div class="subnav">
		  <ul>
		    <li class="active">
		      <a href="javascript:;">正在热映</a>
		    </li>
		    <li>
		      <a href="javascript:;">即将上映</a>
		    </li>
		  </ul>
		</div>
		
		<div class="container">
			<div class="movies-channel">
				<div class="tags-panel">
					<ul class="tags-lines">
						<li class="tags-line">
					        <div class="tags-title">类型 :</div>
					        <ul class="tags">
					          <li class="active"><a href="javascript:;">全部</a></li>
					          <li><a href="javascript:;">爱情</a></li>
					          <li><a href="javascript:;">喜剧</a></li>
					          <li><a href="javascript:;">动画</a></li>
					          <li><a href="javascript:;">剧情</a></li>
					          <li><a href="javascript:;">恐怖</a></li>
					          <li><a href="javascript:;">惊悚</a></li>
					          <li><a href="javascript:;">科幻</a></li>
					          <li><a href="javascript:;">动作</a></li>
					          <li><a href="javascript:;">悬疑</a></li>
					          <li><a href="javascript:;">犯罪</a></li>
					          <li><a href="javascript:;">冒险</a></li>
					          <li><a href="javascript:;">战争</a></li>
					          <li><a href="javascript:;">奇幻</a></li>
					          <li><a href="javascript:;">运动</a></li>
					          <li><a href="javascript:;">家庭</a></li>
					          <li><a href="javascript:;">古装</a></li>
					          <li><a href="javascript:;">武侠</a></li>
					          <li><a href="javascript:;">西部</a></li>
					          <li><a href="javascript:;">历史</a></li>
					          <li><a href="javascript:;">传记</a></li>
					          <li><a href="javascript:;">情色</a></li>
					          <li><a href="javascript:;">歌舞</a></li>
					          <li><a href="javascript:;">黑色电影</a></li>
					          <li><a href="javascript:;">短片</a></li>
					          <li><a href="javascript:;">纪录片</a></li>
					          <li><a href="javascript:;">其他</a></li>
					        </ul>
					      </li>
						<li class="tags-line tags-line-border">
					        <div class="tags-title">区域 :</div>
					        <ul class="tags">
					          <li class="active">
					            <a href="javascript:;">全部</a>
					          </li>
					          <li>
					            <a href="javascript:;">大陆</a>
					          </li>
					          <li>
					            <a href="javascript:;">美国</a>
					          </li>
					          <li>
					            <a href="javascript:;">韩国</a>
					          </li>
					          <li>
					            <a href="javascript:;">日本</a>
					          </li>
					          <li>
					            <a href="javascript:;">中国香港</a>
					          </li>
					          <li>
					            <a href="javascript:;">中国台湾</a>
					          </li>
					          <li>
					            <a href="javascript:;">泰国</a>
					          </li>
					          <li>
					            <a href="javascript:;">印度</a>
					          </li>
					          <li>
					            <a href="javascript:;">法国</a>
					          </li>
					          <li>
					            <a href="javascript:;">英国</a>
					          </li>
					          <li>
					            <a href="javascript:;">俄罗斯</a>
					          </li>
					          <li>
					            <a href="javascript:;">意大利</a>
					          </li>
					          <li>
					            <a href="javascript:;">西班牙</a>
					          </li>
					          <li>
					            <a href="javascript:;">德国</a>
					          </li>
					          <li>
					            <a href="javascript:;">波兰</a>
					          </li>
					          <li>
					            <a href="javascript:;">澳大利亚</a>
					          </li>
					          <li>
					            <a href="javascript:;">伊朗</a>
					          </li>
					          <li>
					            <a href="javascript:;">其他</a>
					          </li>
					        </ul>
					    </li>
						<li class="tags-line tags-line-border">
					        <div class="tags-title">年代 :</div>
					        <ul class="tags">
					          	<li class="active"><a href="javascript:;">全部</a></li>
						        <li><a href="javascript:;">2017以后</a></li>
						        <li><a href="javascript:;">2017</a></li>
						        <li><a href="javascript:;">2016</a></li>
						        <li><a href="javascript:;">2015</a></li>
						        <li><a href="javascript:;">2014</a></li>
						        <li><a href="javascript:;">2013</a></li>
						        <li><a href="javascript:;">2012</a></li>
						        <li><a href="javascript:;">2011</a></li>
						        <li><a href="javascript:;">2000-2010</a></li>
						        <li><a href="javascript:;">90年代</a></li>
						        <li><a href="javascript:;">80年代</a></li>
						        <li><a href="javascript:;">70年代</a></li>
						        <li><a href="javascript:;">更早</a></li>
					        </ul>
					      </li>
					</ul>
				</div>
				<!--正在热映-->
				<div class="movies-panel">
					<div class="movies-sorter">
						<div class="cat-sorter">
					        <ul>
					          	<li>
						            <span class="sort-control-group">
						              	<span class="sort-control sort-radio sort-radio-checked"></span>
						             	 <span class="sort-control-label">按热门排序</span>
						            </span>
						        </li>
						        <li>
						            <span class="sort-control-group">
						              	<span class="sort-control sort-radio"></span>
						              	<span class="sort-control-label">按价格排序</span>
						            </span>
						        </li>
					        </ul>
					    </div>
					</div>
					<div class="panel-content">
						<ul class="movie-list">
							<li>
								<div class="movie-item">
									<a href="javascript:;">
										<div class="movie-poster">
											<img src="http://p1.meituan.net/movie/579a0919e926a80ad14c717c8d8a8394259181.jpg@160w_220h_1e_1c">
										</div>
									</a>
									<div class="channel-action channel-action-sale"><a>购票</a></div>
									<div class="movie-ver"><span class="imax3d"></span></div>
								</div>
								<div class="channel-detail movie-item-title" title="雷神3：诸神黄昏">
							      	<a href="javascript:;">雷神3：诸神黄昏</a>
							    </div>
							    <div class="channel-detail movie-score channel-detail-orange"><i class="integer">8.</i><i class="fraction">9</i></div>
							</li>
							<li>
								<div class="movie-item">
									<a href="javascript:;">
										<div class="movie-poster">
											<img src="http://p0.meituan.net/movie/385a6d22c2f1ed563aa58594d56cee39955568.jpg@160w_220h_1e_1c">
										</div>
									</a>
									<div class="channel-action channel-action-sale"><a>购票</a></div>
									<div class="movie-ver"><span class="imax2d"></span></div>
								</div>
								<div class="channel-detail movie-item-title" title="天才枪手">
							      	<a href="javascript:;">天才枪手</a>
							    </div>
							    <div class="channel-detail movie-score channel-detail-orange"><i class="integer">8.</i><i class="fraction">8</i></div>
							</li>
							<li>
								<div class="movie-item">
									<a href="javascript:;">
										<div class="movie-poster">
											<img src="http://p1.meituan.net/movie/9c80c528f3cd023472f2fec77671211b1021404.jpg@160w_220h_1e_1c">
										</div>
									</a>
									<div class="channel-action channel-action-sale"><a>购票</a></div>
									<div class="movie-ver"><span class="m3d"></span></div>
								</div>
								<div class="channel-detail movie-item-title" title="降魔传">
							      	<a href="javascript:;">降魔传</a>
							    </div>
							    <div class="channel-detail movie-score channel-detail-orange"><i class="integer">6.</i><i class="fraction">7</i></div>
							</li>
							<li>
								<div class="movie-item">
									<a href="javascript:;">
										<div class="movie-poster">
											<img src="http://p0.meituan.net/movie/7ab2cb2229baa239949d88de3e90b76d677059.jpg@160w_220h_1e_1c">
										</div>
									</a>
									<div class="movie-ver"><span class="m3d"></span></div>
								</div>
								<div class="channel-detail movie-item-title" title="狄仁杰之四大天王">
							      	<a href="javascript:;">狄仁杰之四大天王</a>
							    </div>
							    <div class="channel-detail movie-score channel-detail-orange">暂无评分</div>
							</li>
							<li>
								<div class="movie-item">
									<a href="javascript:;">
										<div class="movie-poster">
											<img src="http://p1.meituan.net/movie/8032e4157e1fb1f6cdb52fcc37698c074599808.jpg@160w_220h_1e_1c">
										</div>
									</a>
								</div>
								<div class="channel-detail movie-item-title" title="王牌特工2：黄金圈">
							      	<a href="javascript:;">王牌特工2：黄金圈</a>
							    </div>
							    <div class="channel-detail movie-score channel-detail-orange"><i class="integer">8.</i><i class="fraction">7</i></div>
							</li>
							<li>
								<div class="movie-item">
									<a href="javascript:;">
										<div class="movie-poster">
											<img src="http://p0.meituan.net/movie/d1fb78be16d3d365539424bcbda9bdaf372032.jpg@160w_220h_1e_1c">
										</div>
									</a>
								</div>
								<div class="channel-detail movie-item-title" title="妖猫传">
							      	<a href="javascript:;">妖猫传</a>
							    </div>
							    <div class="channel-detail movie-score channel-detail-orange">暂无评分</div>
							</li>
						</ul>
					</div>
					<div class="movies-pager">
						<ul class="list-pager">
							<li class="active"><a href="javascript:;">1</a></li>
							<li><a href="javascript:;">2</a></li>
							<li><a href="javascript:;">3</a></li>
							<li><a href="javascript:;">4</a></li>
							<li><a href="javascript:;">5</a></li>
							<li class="sep" href="javascript:;">...</li>
							<li><a href="javascript:;">8</a></li>
							<li><a href="javascript:;">下一页</a></li>
						</ul>
					</div>
				</div>
				<!--即将上映-->
				<div class="movies-panel none">
					<div class="movies-sorter">
						<div class="cat-sorter">
					        <ul>
					          	<li>
						            <span class="sort-control-group">
						              	<span class="sort-control sort-radio sort-radio-checked"></span>
						             	 <span class="sort-control-label">按热门排序</span>
						            </span>
						        </li>
						        <li>
						            <span class="sort-control-group">
						              	<span class="sort-control sort-radio"></span>
						              	<span class="sort-control-label">按价格排序</span>
						            </span>
						        </li>
					        </ul>
					    </div>
					</div>
					<div class="panel-content">
						<ul class="movie-list">
							<li>
								<div class="movie-item">
									<a href="javascript:;">
										<div class="movie-poster">
											<img src="http://p1.meituan.net/movie/e1134da5e8a314a2fda87ce79fd9f085262355.jpg@160w_220h_1e_1c">
										</div>
									</a>
								</div>
								<div class="channel-detail movie-item-title" title="解忧杂货店">
							      	<a href="javascript:;">解忧杂货店</a>
							    </div>
							    <div class="channel-detail channel-detail-orange"><span>72116</span>人想看</div>
							</li>
							<li>
								<div class="movie-item">
									<a href="javascript:;">
										<div class="movie-poster">
											<img src="http://p1.meituan.net/movie/3859caea55aa28b7a0414f88bd2b8f21702211.jpg@160w_220h_1e_1c">
										</div>
									</a>
									<div class="channel-action channel-action-pre"><a>预售</a></div>
								</div>
								<div class="channel-detail movie-item-title" title="烟花">
							      	<a href="javascript:;">烟花</a>
							   </div>
							    <div class="channel-detail channel-detail-orange"><span>62359</span>人想看</div>
							</li>
							<li>
								<div class="movie-item">
									<a href="javascript:;">
										<div class="movie-poster">
											<img src="http://p0.meituan.net/movie/9efefcccb19036ae3529dfded0a9223c1765339.jpg@160w_220h_1e_1c">
										</div>
									</a>
									<div class="movie-ver"><span class="imax3d"></span></div>
								</div>
								<div class="channel-detail movie-item-title" title="西游记女儿国">
							      	<a href="javascript:;">西游记女儿国</a>
							    </div>
							    <div class="channel-detail channel-detail-orange"><span>66792</span>人想看</div>
							</li>
							<li>
								<div class="movie-item">
									<a href="javascript:;">
										<div class="movie-poster">
											<img src="http://p0.meituan.net/movie/6615543c6a1d1db1dd36fc95bae30a8999788.jpg@160w_220h_1e_1c">
										</div>
									</a>
								</div>
								<div class="channel-detail movie-item-title" title="保持沉默">
							      	<a href="javascript:;">保持沉默</a>
							    </div>
							    <div class="channel-detail channel-detail-orange"><span>37448</span>人想看</div>
							</li>
							<li>
								<div class="movie-item">
									<a href="javascript:;">
										<div class="movie-poster">
											<img src="http://p1.meituan.net/movie/e8c309f834da36543ba458d6f676cfe9374254.jpg@160w_220h_1e_1c">
										</div>
									</a>
									<div class="channel-action channel-action-pre"><a>预售</a></div>
									<div class="movie-ver"><span class="m3d"></span></div>
								</div>
								<div class="channel-detail movie-item-title" title="太空救援">
							      	<a href="javascript:;">太空救援</a>
							    </div>
							    <div class="channel-detail channel-detail-orange"><span>3556</span>人想看</div>
							</li>
							<li>
								<div class="movie-item">
									<a href="javascript:;">
										<div class="movie-poster">
											<img src="http://p1.meituan.net/movie/f855385565c9a6ddf681eca549625ebe651084.jpg@160w_220h_1e_1c">
										</div>
									</a>
								</div>
								<div class="channel-detail movie-item-title" title="捉妖记2">
							      	<a href="javascript:;">捉妖记2</a>
							    </div>
							    <div class="channel-detail channel-detail-orange"><span>88972</span>人想看</div>
							</li>
							<li>
								<div class="movie-item">
									<a href="javascript:;">
										<div class="movie-poster">
											<img src="http://p0.meituan.net/movie/77dd82a972d27560ed3fe1c44bf66517233932.jpg@160w_220h_1e_1c">
										</div>
									</a>
								</div>
								<div class="channel-detail movie-item-title" title="男神时代">
							      	<a href="javascript:;">男神时代</a>
							    </div>
							    <div class="channel-detail movie-score channel-detail-orange">点映评分<i class="integer">7.</i><i class="fraction">9</i></div>
							</li>
							<li>
								<div class="movie-item">
									<a href="javascript:;">
										<div class="movie-poster">
											<img src="http://p0.meituan.net/movie/ae6b449d314d36c6da35ea243a8ee2a73080077.jpg@160w_220h_1e_1c">
										</div>
									</a>
								</div>
								<div class="channel-detail movie-item-title" title="机器之血">
							      	<a href="javascript:;">机器之血</a>
							    </div>
							    <div class="channel-detail movie-score channel-detail-orange"><span>48061</span>人想看</div>
							</li>
							<li>
								<div class="movie-item">
									<a href="javascript:;">
										<div class="movie-poster">
											<img src="http://p1.meituan.net/movie/b0463d95e071532a4c5cd4eb4e8488631018469.jpg@160w_220h_1e_1c">
										</div>
									</a>
								</div>
								<div class="channel-detail movie-item-title" title="引爆者">
							      	<a href="javascript:;">引爆者</a>
							    </div>
							    <div class="channel-detail movie-score channel-detail-orange">点映评分<i class="integer">8.</i><i class="fraction">4</i></div>
							</li>
							
							<li>
								<div class="movie-item">
									<a href="javascript:;">
										<div class="movie-poster">
											<img src="http://p1.meituan.net/movie/504c8a99ca8df70fd34b346dc97ffd41648958.jpg@160w_220h_1e_1c">
										</div>
									</a>
									<div class="movie-ver"><span class="m3d"></span></div>
								</div>
								<div class="channel-detail movie-item-title" title="谜巢">
							      	<a href="javascript:;">谜巢</a>
							    </div>
							    <div class="channel-detail movie-score channel-detail-orange"><span>32752</span>人想看</div>
							</li>
							<li>
								<div class="movie-item">
									<a href="javascript:;">
										<div class="movie-poster">
											<img src="http://p1.meituan.net/movie/e4939923185c102b559c369d5db08fa1778605.jpg@160w_220h_1e_1c">
										</div>
									</a>
									<div class="channel-action channel-action-pre"><a>预售</a></div>
								</div>
								<div class="channel-detail movie-item-title" title="这就是命">
							      	<a href="javascript:;">这就是命</a>
							    </div>
							    <div class="channel-detail channel-detail-orange"><span>6087</span>人想看</div>
							</li>
							<li>
								<div class="movie-item">
									<a href="javascript:;">
										<div class="movie-poster">
											<img src="http://p1.meituan.net/movie/584fe105f45dfabd1a566205ee8d326280432.jpg@160w_220h_1e_1c">
										</div>
									</a>
								</div>
								<div class="channel-detail movie-item-title" title="宝贝老板">
							      	<a href="javascript:;">宝贝老板</a>
							    </div>
							    <div class="channel-detail channel-detail-orange"><span>26186</span>人想看</div>
							</li>
						</ul>
					</div>
					<div class="movies-pager">
						<ul class="list-pager">
							<li class="active"><a href="javascript:;">1</a></li>
							<li><a href="javascript:;">2</a></li>
							<li><a href="javascript:;">3</a></li>
							<li><a href="javascript:;">4</a></li>
							<li><a href="javascript:;">5</a></li>
							<li class="sep" href="javascript:;">...</li>
							<li><a href="javascript:;">10</a></li>
							<li><a href="javascript:;">下一页</a></li>
						</ul>
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
			$(function(){
				$('.subnav li').click(function(){
					if(!$(this).hasClass('active')){
	                	$('.subnav li').removeClass('active');
			            $(this).addClass('active');
			        }
					var aa = $(this).index();
					$('.movies-channel').children('.movies-panel').addClass('none');
					$('.movies-channel').children('.movies-panel').eq(aa).removeClass('none');
				})
				$('.tags').children('li').click(function(){
					if(!$(this).hasClass('active')){
	                	$(this).parents('.tags').children('li').removeClass('active');
			            $(this).addClass('active');
			        }
				})
				$('.sort-control-group').click(function(){
					if(!$(this).children('.sort-control').hasClass('sort-radio-checked')){
	                	$('.sort-control').removeClass('sort-radio-checked');
			            $(this).children('.sort-control').addClass('sort-radio-checked');
			        }
				})
			})
		</script>
		
	</body>
</html>
