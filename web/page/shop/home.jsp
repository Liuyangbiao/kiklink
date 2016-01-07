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
<title>店铺管理${my:config('title后缀','--开练网')}</title>
<meta name="keywords" content="${my:config('关键词','开练网')}" /> 
<meta name="description" content="${my:config('metadata','开练网')}" /><link rel="shortcut icon" href="${ctx}/favicon.ico" /> 
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/businesses.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery-1.7.1.min.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/js.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/fun.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/form.js"></script>
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
      <div class="memberTitle"><h1>店铺管理</h1></div>
      <div class="pageBox shop">
      <!--pageBox-->
      <h1>
      	<c:choose>
      		<c:when test="${map.shop.ext8 eq null or map.shop.ext8 eq ''}">
      			普通店铺
      		</c:when>
      		<c:otherwise>
      			认证店铺
      		</c:otherwise>
      	</c:choose>
      		&nbsp;&nbsp;
      		<span style="font-size:16px;">
      			<a href="${ctx}/kailian/KlSellerShop/shopindex.do?id=${map.shop.id}" target="_blank">${ctx}/shop_${map.shop.id}.html &nbsp;&nbsp;点击预览</a>
      		</span>
      	</h1>
      	
      

      <div class="info">
           <ul>
              <li><em>服务的客户：</em>${map.shop.servedClients}个　</li>
              <c:choose>
              	<c:when test="${map.shop.comment.pointServiceAttitude eq null}">
              		<li><em>暂无评价</em></li>
              	</c:when>
              	<c:otherwise>
              		<li><em>服务态度：</em>${map.shop.comment.pointServiceAttitude}星　</li>
              		<li><em>专业态度：</em>${map.shop.comment.pointPerfational}星　</li>
              		<li><em>描述相符：</em>${map.shop.comment.pointDescriptionMatch}星</li>
              		<li><em>预约成功：</em>${map.shop.comment.pointAppointmentSuccessful}星</li>
              	</c:otherwise>
              </c:choose>
              
            </ul>
      </div>
      <div class="list">
           <ul>
             <li><a href="${ctx}/kailian/KlSellerShop/focus.do"><div><img src="${ctx}/image/nimg64_1.png"/></div>焦点图管理</a></li>
             <li><a href="${ctx}/kailian/KlSellerShop/basic.do"><div><img src="${ctx}/image/nimg64_2.png"/></div>基本信息</a></li>
             <li><a href="${ctx}/kailian/KlSellerProduct/classes.do"><div><img src="${ctx}/image/nimg64_3.png"/></div>课程信息管理</a></li>
             <li><a href="${ctx}/kailian/KlSellerShop/coaches.do"><div><img src="${ctx}/image/nimg64_4.png"/></div>教练资源内容管理</a></li>
             <!-- 
             <li><a href="${ctx}/kailian/KlSellerShop/basic.do"><div><img src="${ctx}/image/nimg64_5.png"/></div>地理位置内容管理</a></li>
              -->
             <li><a href="${ctx}/kailian/KlSellerShop/photos.do"><div><img src="${ctx}/image/nimg64_6.png"/></div>服务设施</a></li>
           </ul>
           <span class="clear_f"></span>
      </div>
      <!--pageBoxEnd-->
      </div>
</div>
<span class="clear_f"></span>
<!--walEnd-->
</div>
<div class="h20"></div>

<%@ include file="/page/kailiantail.jsp" %>
</body>
</html>