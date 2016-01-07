<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=7">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>商家环境${my:config('title后缀','--开练网')}</title>
<meta name="keywords" content="${my:config('关键词','开练网')}" /> 
<meta name="description" content="${my:config('metadata','开练网')}" /><link rel="shortcut icon" href="${ctx}/favicon.ico" /> 
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/businesses.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="${ctx}/kindeditornew/themes/default/default.css" />
<script src="${ctx}/kindeditornew/kindeditor.js"></script>
<script src="${ctx}/kindeditornew/lang/zh_CN.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery-1.7.1.min.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/js.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/fun.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/form.js"></script>
	<!-- Add mousewheel plugin (this is optional) -->
	<script type="text/javascript" src="${ctx}/fancy/lib/jquery.mousewheel-3.0.6.pack.js"></script>

	<!-- Add fancyBox main JS and CSS files -->
	<script type="text/javascript" src="${ctx}/fancy/source/jquery.fancybox.js?v=2.1.5"></script>
	<link rel="stylesheet" type="text/css" href="${ctx}/fancy/source/jquery.fancybox.css?v=2.1.5" media="screen" />

	<!-- Add Button helper (this is optional) -->
	<link rel="stylesheet" type="text/css" href="${ctx}/fancy/source/helpers/jquery.fancybox-buttons.css?v=1.0.5" />
	<script type="text/javascript" src="${ctx}/fancy/source/helpers/jquery.fancybox-buttons.js?v=1.0.5"></script>

	<!-- Add Thumbnail helper (this is optional) -->
	<link rel="stylesheet" type="text/css" href="${ctx}/fancy/source/helpers/jquery.fancybox-thumbs.css?v=1.0.7" />
	<script type="text/javascript" src="${ctx}/fancy/source/helpers/jquery.fancybox-thumbs.js?v=1.0.7"></script>

	<!-- Add Media helper (this is optional) -->
	<script type="text/javascript" src="${ctx}/fancy/source/helpers/jquery.fancybox-media.js?v=1.0.6"></script>
<!--[if lte IE 6]>
<script src="script/png.js" type="text/javascript"></script>
    <script type="text/javascript">
        DD_belatedPNG.fix('div, ul, img, li, input , a');
    </script>
<![endif]--> 
</head>

<body>
<div class="selectLayer">
  <ul></ul>
</div>
<%@ include file="/page/kailianheader.jsp" %>

<div class="h25"></div>
<div class="w993">
<!--wal-->
<%@ include file="/page/centerleft.jsp" %>

<div class="fr w791">
      <div class="memberTitle"><h1>店铺管理 -  设备装备</h1>
            <a href="javascript:;" class="btn btn2 serviceLayerA" onclick="mod(0);">添加照片</a>
      </div>
      <div class="pageBox shop">
      <!--pageBox-->
      <div class="service">
          <ul>
          	<c:forEach var="p" items="${pg.result}" varStatus="vs">
          		<li>
                  <div class="imgDiv" style="text-align:center;vertical-align:middle;width:179px;height:119px;">
                  <a href="${ctx}/${p.resource}" class="fancybox-thumbs" data-fancybox-group="thumb"><img style="max-width:179px;max-height:119px;" src="${ctx}/${my:smallphoto(request,p.resource,'s')}"  /></a></div>
                  <div class="title"><a href="" title="${p.comment }">${my:maxleng(p.comment, 8)}</a>
                  <a href="#" onclick="mod(${vs.index + 1});">修改</a>
                  <a href="${ctx}/kailian/KlSellerShop/photos.do?delid=${p.id}&pageno=${pg.thisPageNumber}">删除</a>
                  </div>
              	</li>
          	</c:forEach>
          
          
             
          </ul>
          <span class="clear_f"></span>
      </div>
      <!--
      <div class="pageNum">每页有16条记录　第${pg.thisPageNumber}页　共${pg.lastPageNumber}页　<c:if test="${pg.thisPageNumber ne 1}">
      <a href="">首页</a></c:if> | <c:if test="${pg.lastPageNumber ne pg.thisPageNumber}"><a href="">末页</a></c:if>　转到<input type="text" />页</div>
      -->
      <!--pageBoxEnd-->
       ${my:drawpage(pg, pageContext.request,  null)}
      </div>
</div>
<span class="clear_f"></span>
<!--walEnd-->
</div>
<div class="h20"></div>

<div class="pageLayer serviceLayer">
<div class="bgT"></div>
<div class="bg" id="bg0">
      <h5>添加照片<a href="javascript:;" class="close"></a></h5>
      <form id="form1" action="${ctx}/kailian/KlSellerShop/photos.do" method="post">
      <div class="form">
      
      		<input id="ownnerid" name="ownnerid" type="hidden" value="${map.shop.id}" />
      		<input id="ownnertype" name="ownnertype" type="hidden" value="20" />
      		<input id="pageNumber" name="pageNumber" value="${pg.thisPageNumber}" type="hidden" />
          <ul>
          <!-- 
            <li>
               <em>照片：</em>
                
               <select id="category" name="category"><option value="20">训练器械</option><option value="30">训练装备</option></select>
            </li>
            -->
            <li>
               <em>添加照片：</em>
               <div class="input1"><input id="resource" name="resource" onclick="" value="" type="text" /></div>
                 <input type="button" id="resource_button" class="btn2 fl" onclick="" value="上传照片..." />
                 &nbsp;尺寸:600*400
            </li>
            <li class="li_02">
               <em>照片说明：</em>
               <textarea name="comment1" cols="" rows=""></textarea>
               <!--
               <input name="" type="button" class="btn2" value="添加多张图片" />
               -->
            </li>
          </ul>
        
      </div>
      <div class="btnDiv"><input name="" type="submit" value="添 加" /></div>
       </form>
</div>

<c:forEach var="p" items="${pg.result}" varStatus="vs">
<div class="bg" id="bg${vs.index+1}">
      <h5>修改照片<a href="javascript:;" class="close"></a></h5>
      <form id="form1" action="${ctx}/kailian/KlSellerShop/photos.do" method="post">
      <div class="form">
      		<input id="theid" name="theid" type="hidden" value="${p.id}" />
      		<input id="ownnerid" name="ownnerid" type="hidden" value="${p.ownnerid}" />
      		<input id="ownnertype" name="ownnertype" type="hidden" value="20" />
      		<input id="pageNumber" name="pageNumber" value="${pg.thisPageNumber}" type="hidden" />
          <ul>
          <!-- 
            <li>
               <em>照片：</em>
                
               <select id="category" name="category"><option value="20">训练器械</option><option value="30">训练装备</option></select>
            </li>
            -->
            <li>
               <em>添加照片：</em>
               <div class="input1"><input id="resource${vs.index+1}" name="resource" onclick="" value="${p.resource}" type="text" /></div>
                 <input type="button" id="resource_button${vs.index+1}" class="btn2 fl" onclick="" value="上传照片..." />
                 &nbsp;尺寸:600*400
            </li>
            <li class="li_02">
               <em>照片说明：</em>
               <textarea name="comment1" cols="" rows="">${p.comment}</textarea>
               <!--
               <input name="" type="button" class="btn2" value="添加多张图片" />
               -->
            </li>
          </ul>
        
      </div>
      <div class="btnDiv"><input name="" type="submit" value="修 改" /></div>
       </form>
</div>
</c:forEach>

<div class="bgB"></div>
</div>

<%@ include file="/page/kailiantail.jsp" %>
<script>
$(function(){


$('.fancybox-thumbs').fancybox({
				prevEffect : 'none',
				nextEffect : 'none',

				closeBtn  : false,
				arrows    : true,
				nextClick : true,

				helpers : {

				}
			});	
			
	});
			
function mod(index) {
	$('.pageLayer').hide();
		$('.serviceLayer').css('left',$('.serviceLayerA').offset().left-474);
		$('.serviceLayer').css('top',$('.serviceLayerA').offset().top+32);
		$('.serviceLayer').show();
		
		$('.bg').hide();
		$('#bg' + index).show();
}

KindEditor.ready(function(K) {
				var editor = K.editor({
					allowFileManager : true
				});
				
				/*
				K('#resource_button').click(function() {
					editor.loadPlugin('image', function() {
						editor.plugin.imageDialog({
							showRemote : false,
							imageUrl : K('#resource').val(),
							clickFn : function(url, title, width, height, border, align) {
								K('#resource').val(url);
								editor.hideDialog();
							}
						});
					});
				});
				*/
				
				K('#resource_button').click(function() {
					editor.loadPlugin('multiimage', function() {
						editor.plugin.multiImageDialog({
							clickFn : function(urlList) {
								var url = "";
								K.each(urlList, function(i, data) {
									url += data.url + ",";
									//alert(data.url);
								});
								K('#resource').val(url);
								editor.hideDialog();
							}
						});
					});
				});
				
				<c:forEach var="p" items="${pg.result}" varStatus="vs">
				K('#resource_button${vs.index+1}').click(function() {
					editor.loadPlugin('multiimage', function() {
						editor.plugin.multiImageDialog({
							clickFn : function(urlList) {
								var url = "";
								K.each(urlList, function(i, data) {
									url += data.url + ",";
									//alert(data.url);
								});
								K('#resource${vs.index+1}').val(url);
								editor.hideDialog();
							}
						});
					});
				});
				
				</c:forEach>
				
				
			});
			
</script>
</body>
</html>