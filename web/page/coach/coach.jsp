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
<link href="${ctx}/style/page1.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery-1.7.1.min.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/js.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/fun.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/form.js"></script>

<!-- Add jQuery library -->

	<!-- Add mousewheel plugin (this is optional) -->
	<script type="text/javascript" src="${ctx}/fancy/lib/jquery.mousewheel-3.0.6.pack.js"></script>

	<!-- Add fancyBox main JS and CSS files -->
	<script type="text/javascript" src="${ctx}/fancy/source/jquery.fancybox.js?v=2.1.5"></script>
	<link rel="stylesheet" type="text/css" href="${ctx}/fancy/source/jquery.fancybox.css?v=2.1.5" media="screen" />

	<!-- Add Button helper (this is optional) -->
	<link rel="stylesheet" type="text/css" href="${ctx}/fancy/source/helpers/jquery.fancybox-buttons.css?v=1.0.5" />
	<script type="text/javascript" src="../source/helpers/jquery.fancybox-buttons.js?v=1.0.5"></script>

	<!-- Add Thumbnail helper (this is optional) -->
	<link rel="stylesheet" type="text/css" href="${ctx}/fancy/source/helpers/jquery.fancybox-thumbs.css?v=1.0.7" />
	<script type="text/javascript" src="../source/helpers/jquery.fancybox-thumbs.js?v=1.0.7"></script>

	<!-- Add Media helper (this is optional) -->
	<script type="text/javascript" src="${ctx}/fancy/source/helpers/jquery.fancybox-media.js?v=1.0.6"></script>


<!--[if lte IE 6]>
<script src="${ctx}/script/png.js" type="text/javascript"></script>
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
<!-- 
<div class="sideBar">
      <ul>
        <li><a href="#"></a></li>
        <li><a href="#"></a></li>
        <li><a href="#"></a></li>
      </ul>
</div>
 -->
<div class="wal">
<!--wal-->
<div class="storePart1">
     <a href="" class="logo"><img src="${ctx}/<c:choose><c:when test="${map.shop.logo ne null}">${map.shop.logo}</c:when><c:otherwise>image/logo.png</c:otherwise></c:choose>" style="max-width:55px;max-height:77px;" /></a>
     <div class="title"><a href="${ctx}/shop_${map.shop.id}.html">${map.shop.shopName}</a>${my:stars(ctx, map.shop.comment.point)}</div>
     <div class="msg">
         <b>地址：</b>${map.shop.address}　　
         <a id="fancybox-manual-b" style="cursor:pointer;"><img src="${ctx}/image/nimg11.gif"/>显示地图</a>　电话：${map.shop.phoneno}
     </div>
     <div class="mark">
     
	<font style="font-weight:bold;font-size:30pt;color:red;">${map.shop.comment.point}</font>
     <div><c:if test="${map.shop.comment.targetid2 gt 0}">来自<span class="blue">${map.shop.comment.targetid2}</span>条评论</c:if></div>
     </div>
</div>
<div class="fl w724">
<div class="storeBox">
       <div class="sCoachShow">
           <h1>${map.coach.name}</h1>
           <div class="imgDiv"><img src="${ctx}/${my:smallphoto(request,map.coach.photo,'m')}" style="max-width:550px;max-height:367px;" /></div>
           <div class="content">
			${my:replaceall(map.coach.profile,'\\n','<br/>')}
           </div>
       </div>
</div>
</div>
<div class="fr w268">
     <div class="storePart_01">
           <c:choose>
     		<c:when test="${map.products ne null and fn:length(map.products.result) gt 0}">
     			<c:set value="${map.products.result[0]}" var="p" />
     			<h2>${p.name}</h2>
          	 <div class="imgDiv"><a href="${ctx}/product_${p.id}.html">
          	 <img src="${ctx}/${p.photo}" alt="${p.name}" style="width:216px;height:144px;" /></a></div>
           <div class="content">
           ${p.subname}
           </div>
           <div class="price">特惠价：￥${p.price}</div>
           <a href="${ctx}/kailian/KlShoppingShoppingcartproduct/shopCar.do?productid=${p.id}&count=1" class="btn">立即购买</a>
     		</c:when>
     		<c:otherwise>
     			<script type="text/javascript">BAIDU_CLB_fillSlot("946201");</script>
     		</c:otherwise>
     	</c:choose>
     </div>
     <div class="h10"></div>
     <!---->
     <div class="sCoachList">
          <h1>热门课程推荐 ...... </h1>
          <ul>
          	<c:forEach var="c" items="${map.products.result}">
            <li>
                <div class="imgDiv"><a href="${ctx}/product_${c.id}.html"><img src="${ctx}/${c.photo}" style="width:196;height:131px;" /></a></div>
                <h2><a href="">${c.name}</a></h2>
                <div class="content">归属店铺：${c.ext5}</div>
                <div class="price">￥${c.price}</div>
            </li>
            </c:forEach>
          
           
          </ul>
     </div>
</div>
<span class="clear_f"></span>
<!--walEnd-->
</div>
<div class="h20"></div>

<%@ include file="/page/kailiantail.jsp" %>
<script>
$(document).ready(function() {
			$("#fancybox-manual-b").click(function() {

				$.fancybox.open({
					href : '${ctx}/page/map.jsp?x=${map.shop.mapx}&y=${map.shop.mapy}',
					type : 'iframe',
					padding : 5
				});
			});
		});
</script>
</body>
</html>