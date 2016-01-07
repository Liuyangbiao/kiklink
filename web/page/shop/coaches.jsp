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
<title>教练信息${my:config('title后缀','--开练网')}</title>
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
      <div class="memberTitle"><h1>店铺管理 -  教练</h1>
            <a href="javascript:;" class="btn btn2 serviceLayerA" onclick="mod(0);">添加教练</a>
      </div>
      <div class="pageBox shop">
      <!--pageBox-->
      <div class="service">
      	<div>
      		<a href="${ctx}/kailian/KlSellerShop/coaches.do?sort=id desc"><span id="o1">默认排序</span></a>
      		&nbsp;&nbsp;
      		<a href="${ctx}/kailian/KlSellerShop/coaches.do?sort=name"><span id="o2">姓名排序</span></a>
      		&nbsp;&nbsp;
      		<a href="${ctx}/kailian/KlSellerShop/coaches.do?sort=birthYear"><span id="o3">年龄排序</span></a>
      		<br/><br/>
      	</div>
          <ul>
          	<c:forEach var="p" items="${pg.result}" varStatus="vs">
          		<li>
                  <div class="imgDiv" style="text-align:center;vertical-align:middle;width:179px;height:119px;">
                  	<a class="fancybox-thumbs" data-fancybox-group="thumb" href="${ctx}/${p.photo}">
                  		<img src="${ctx}/${my:smallphoto(request,p.photo,'s')}" style="max-width:179px;max-height:119px;" />
                  		</a></div>
                  <div class="title">
                  	<a>${p.name}</a>&nbsp;
                  	<a style="cursor:pointer;" onclick="mod(${vs.index+1})">修改</a>&nbsp;
                  	<a style="cursor:pointer;" onclick="if(confirm('您确定要删除教练${p.name}吗？')) del(${p.id})">删除</a>
                  </div>
              	</li>
          	</c:forEach>
          
          
             
          </ul>
          <span class="clear_f"></span>
      </div>

      ${my:drawpage(pg, pageContext.request,  null)}

</div>
<span class="clear_f"></span>
<!--walEnd-->
</div>
<div class="h20"></div>

<div class="pageLayer serviceLayer">
<div class="bgT"></div>
<div class="bg" id="bg0">
      <h5>添加教练<a href="javascript:;" class="close"></a></h5>
      <form id="form1" action="${ctx}/kailian/KlSellerShop/coaches.do" method="post">
      <div class="form">
      		<input id="shopId" name="shopId" type="hidden" value="${map.shop.id}" />
      	<ul>
            <li>
               <em>姓　　名：</em>
               <input name="name" id="name" type="text" class="input1" />
            </li>
            <!--
            <li>
               <em>年　　龄：</em>
              <select id="birthYear" name="birthYear" style="width:100px;">
                                  <c:forEach var="v1" begin="1900" end="2010">
                            		<option value="${v1}" <c:if test="${v1 eq 1980}"> selected="selected"</c:if>>${v1}</option>
                         		</c:forEach>
                            </select>
                            <select id="birthMonth" name="birthMonth" style="width:100px;">
                                  <c:forEach var="v1" begin="1" end="12">
                            		<option value="${v1}">${v1}</option>
                         		</c:forEach>
                            </select>
                            <select id="birthDate" name="birthDate" style="width:100px;">
                                  <c:forEach var="v1" begin="1" end="30">
                            		<option value="${v1}">${v1}</option>
                         		</c:forEach>
                            </select>
            </li>
            <li>
               <em>性　　别：</em>
               <input id="sex" name="sex" value="1" class="" checked="checked" type="radio"/>男
                             <input id="sex" name="sex" value="2" class="" type="radio"/>女
            </li>
            -->
            <li>
               <em>添加照片：</em>
               <div class="input1"><input id="photo" name="photo" onclick="" value="" style="width:300px;" type="text" /></div>
                 <input type="button" id="photo_button" class="btn2 fl" onclick="" value="上传照片..." />
            </li>
            <li class="li_02">
               <em>教练履历：</em>
               <textarea name="profile" cols="" rows=""></textarea>
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
      <h5>修改教练<a href="javascript:;" class="close"></a></h5>
      <form id="form1" action="${ctx}/kailian/KlSellerShop/coaches.do" method="post">
      <div class="form">
      		<input id="shopId" name="shopId" type="hidden" value="${map.shop.id}" />
      		<input id="tcoachid" name="tcoachid" type="hidden" value="${p.id}" />
      	<ul>
            <li>
               <em>姓　　名：</em>
               <input name="name" id="name" type="text" class="input1" value="${p.name}" />
            </li>
            <!-- 
            <li>
               <em>年　　龄：</em>
              <select id="birthYear" name="birthYear" style="width:100px;">
                                  <c:forEach var="v1" begin="1900" end="2010">
                            		<option value="${v1}" <c:if test="${v1 eq p.birthYear}"> selected="selected"</c:if>>${v1}</option>
                         		</c:forEach>
                            </select>
                            <select id="birthMonth" name="birthMonth" style="width:100px;">
                                  <c:forEach var="v1" begin="1" end="12">
                            		<option value="${v1}" <c:if test="${v1 eq p.birthMonth}"> selected="selected"</c:if>>${v1}</option>
                         		</c:forEach>
                            </select>
                            <select id="birthDate" name="birthDate" style="width:100px;">
                                  <c:forEach var="v1" begin="1" end="30">
                            		<option value="${v1}" <c:if test="${v1 eq p.birthDate}"> selected="selected"</c:if>>${v1}</option>
                         		</c:forEach>
                            </select>
            </li>
            <li>
               <em>性　　别：</em>
               <input id="sex" name="sex" value="1" class="" <c:if test="${p.sex eq 1}">checked="checked"</c:if> type="radio"/>男
                             <input id="sex" name="sex" value="2" class="" <c:if test="${p.sex eq 2}">checked="checked"</c:if> type="radio"/>女
            </li>
             -->
            <li>
               <em>照片：</em>
               <div class="input1"><input id="photo${vs.index}" name="photo" onclick="" value="${p.photo}" style="width:300px;" type="text" /></div>
                 <input type="button" id="photo_button${vs.index}" class="btn2 fl" onclick="" value="上传照片..." />&nbsp;尺寸:600*400
            </li>
            <li class="li_02">
               <em>资质荣誉：</em>
               <textarea name="honor" cols="" rows="">${p.honor}</textarea>
            </li>
            <li class="">
               <em>擅长什么：</em>
               <input name="goodat" id="goodat" type="text" class="input1" value="${p.goodat}" />
            </li>
            <li class="li_02">
               <em>教练履历：</em>
               <textarea name="profile" cols="" rows="">${p.profile}</textarea>
            </li>
          </ul>
      </div>
      <div class="btnDiv"><input name="" type="submit" value="提 交" /></div>
       </form>
</div>
</c:forEach>



<div class="bgB"></div>
</div>

<%@ include file="/page/kailiantail.jsp" %>
<script>
$(function(){
	var sort = "${param.sort}";
	if (sort == "id desc")
		$('#o1').css({'color':'red'});
	if (sort == "name")
		$('#o2').css({'color':'red'});
	if (sort == "birthYear")
		$('#o3').css({'color':'red'});
		
		

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


function del(id) {
	window.location.href="${ctx}/kailian/KlSellerShop/coaches.do?delid=" + id;
}


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
				
				
				K('#photo_button').click(function() {
					editor.loadPlugin('image', function() {
						editor.plugin.imageDialog({
							showRemote : false,
							imageUrl : K('#photo').val(),
							clickFn : function(url, title, width, height, border, align) {
								K('#photo').val(url);
								editor.hideDialog();
							}
						});
					});
				});
				
				<c:forEach var="p" items="${pg.result}" varStatus="vs">
				K('#photo_button${vs.index}').click(function() {
					editor.loadPlugin('image', function() {
						editor.plugin.imageDialog({
							showRemote : false,
							imageUrl : K('#photo${vs.index}').val(),
							clickFn : function(url, title, width, height, border, align) {
								K('#photo${vs.index}').val(url);
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