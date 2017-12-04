<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/publish.css"/>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/upload.css"/>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.0.0.min.js" ></script>
 	<script type="text/javascript"	src="${pageContext.request.contextPath}/js/jquery.form.js"></script>
 	
 	<script>
 	
    //图片上传预览    IE是用了滤镜。
      function previewImage(file)
      {
        var MAXWIDTH  = 200; 
        var MAXHEIGHT = 200;
        var div = document.getElementById('preview');
        if (file.files && file.files[0])
        {
            div.innerHTML ='<img id=imghead onclick=$("#previewImg").click()>';
            var img = document.getElementById('imghead');
            img.onload = function(){
              var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
              img.width  =  rect.width;
              img.height =  rect.height;
//               img.style.marginLeft = rect.left+'px';
              img.style.marginTop = rect.top+'px';
            }
            var reader = new FileReader();
            reader.onload = function(evt){img.src = evt.target.result;}
            reader.readAsDataURL(file.files[0]);
        }
        else //兼容IE
        {
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
      
      
      $(function(){
			$(".please_sel").click(function(){
				$(".select").toggle();
			})

			$(".list_top ul li").click(function(){
				if(!$(this).hasClass("current")){
					$(".list_top ul li").removeClass("current");
					$(this).addClass("current");
				}
			})




			$(".post_want").hover(function(){
				if(!$(this).hasClass("post_sel")){
					$(".post_want").removeClass("post_sel");
					$(this).addClass("post_sel");
					$(this).children("ul.post_info").slideDown();
				}
				else {
					$(this).removeClass("post_sel");
					$(this).children("ul.post_info").slideUp();
				}
			})

			$("#nav li").click(function(){
				if(!$(this).hasClass("current")){
					$("#nav li").removeClass("current");
					$(this).addClass("current");

					$("#nav li").children("ul.drop").slideUp();
					$(this).children("ul.drop").slideDown();

				}
				else{
					$(this).children("ul.drop").slideToggle();
				}
			})


		})
		
		
		
		 function toPublishAdd(){
        	var desc = $("#desc").val();
        	if(desc.length<15){
        		alert("电影介绍不能少于15字");
        		return false;
        	}
        	var option = {
        		url:'${pageContext.request.getContextPath()}/movie/addMovie',
        		type :"post",
        		dataType:'json',
        		headers:{"ClientCallMode" : "ajax"}, 
        		success : function(data) {
        			if(data.message == 'error'){
						alert("发布失败！");
					}else{
						alert("发布成功！");
						window.location.href="${pageContext.request.getContextPath()}/index.jsp";
					}
                },
                error: function(data) {
                    alert(JSON.stringify(data) + "--上传失败,请刷新后重试");
                }
             };
       	 	$("#publish_form").ajaxSubmit(option);
       	 	return false;
        }

	</script>

 	
</head>
<body>
	 <form action="" method="post" enctype="multipart/form-data" id="publish_form" name="publish_form">
			        <img class="release-icon-main" src="${pageContext.request.contextPath}/img/release-icon.png" alt="">
			      
			        <div class="wave-fluid"></div>
			       
			        <div class="release-title">发布商品</div>
			        
			        <div class="upload-wr">
			            <div class="photo-area init-up">
			                <div class="upload-area" id="upload-area" style="position: relative;">
			                    <div id="upload">
			                    	<div id="addCommodityIndex" align="center">       
                                             <!--input-group start-->
                                            <div class="input-group row">
                                                <div class="col-sm-9 big-photo">
                                                    <div id="preview">
                                                        <img id="imghead" border="0" src="${pageContext.request.contextPath}/img/photo_icon.png" width="200" height="200" onclick="$('#previewImg').click();">
                                                     </div>         
                                                    <input type="file" name="file" onchange="previewImage(this)" style="display: none;" id="previewImg">
                                                </div>
                                            </div>
                                            <!--input-group end-->
       
										</div>
			                    </div>
			                <div class="moxie-shim moxie-shim-html5" style="position: absolute; top: 2px; left: 0px; width: 160px; height: 160px; overflow: hidden; z-index: 49;"><input id="html5_1bf40o41s1klurqu8v4dn37go3" type="file" style="font-size: 999px; opacity: 0; position: absolute; top: 0px; left: 0px; width: 100%; height: 100%;" accept="image/*" capture="camera"></div>
			                
			                </div>
			                <div class="photo-caution"><span>最多上传四张图片，支持jpg、png、gif格式</span></div>
			            </div>
			        </div>
			        
			        <div class="form-wr">
			            <div class="form-must-wr">
			                <div class="form-item l goods-title">
			                    <div class="form-key"><span>电影名称</span></div>
			                    <div class="form-value">
			                        <div class="form-input-wr">
			                            <input type="text" id="title" name="mv_name" placeholder="最多25个字">
			                        </div>
			                    </div>
			                </div>
			                <div class="form-item xl goods-desc">
			                    <div class="form-key"><span>电影介绍</span></div>
			                    <div class="form-value">
			                        <div class="form-input-wr">
			                            <textarea name="mv_details" id="desc" placeholder="填写电影简介"></textarea>
			                        </div>
			                    </div>
			                </div>
			                <div class="form-item l goods-title">
			                    <div class="form-key"><span>评分</span></div>
			                    <div class="form-value">
			                        <div class="form-input-wr">
			                            <input type="text" id="trade_place" name="mv_grade" placeholder="最高100分" value="">
			                        </div>
			                    </div>
			                </div>
			                <div class="form-item m goods-price">
			                    <div class="form-key"><span>价格</span></div>
			                    <div class="form-value">
			                        <div class="form-input-wr">
			                            <input class="price" type="text" id="price" name="mv_price">
			                        </div>
			                    </div>
			                </div>
			             </div>
			              <button type="button" class="form-submit" onclick="toPublishAdd();">马上发布</button>
		</form>
	
</body>
</html>