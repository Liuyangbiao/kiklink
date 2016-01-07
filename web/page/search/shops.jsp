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
<title>店铺搜索${my:config('title后缀','--开练网')}</title>
<meta name="keywords" content="${my:config('关键词','开练网')}" /> 
<meta name="description" content="${my:config('metadata','开练网')}" /><link rel="shortcut icon" href="${ctx}/favicon.ico" /> 
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/help.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery-1.7.1.min.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/js.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/fun.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/form.js"></script>
<!--[if lte IE 6]>
<script src="${ctx}/script/png.js" type="text/javascript"></script>
    <script type="text/javascript">
        DD_belatedPNG.fix('div, ul, img, li, input , a');
    </script>
<![endif]--> 
<style type="text/css">
body{background:#f6f5f3;}
</style>
</head>

<body>
<div class="selectLayer">
  <ul></ul>
</div>
<%@ include file="/page/kailianheader.jsp" %>

<!--顶部end-->

<div class="h15"></div>
<div class="wal">
<!--wal-->
<div class="fl w206">
     <%@ include file="/page/searchleft.jsp" %>

</div>
<div class="fr w776 pageBox">
     <div class="helpTitle">
          <h1>高级搜索</h1>
          <div class="pageNow"><em>当前位置：</em><a href="">首页</a>搜索详情</div>
     </div>
     <div class="courseEnd">
     <form id="form2" action="${ctx}/kailian/KlSellerProduct/search.do" target="_self">
     		<input type="hidden" name="stype" id="stype" value="${param.stype}" />
     		<input type="hidden" name="name" id="name" value="${param.name}" />
     		<input type="hidden" name="sort" id="sort" value="${param.sort}" />
     
          <div class="list">
               <ul>
                 <li><a href="javascript:searchit('id desc');">默认排序</a></li>
                 <li><a href="javascript:searchit('id desc');"><i>星级</i></a></li>
                 <li><a href="javascript:searchit('id desc');"><i>人气</i></a></li>
                 <li><a href="javascript:searchit('id desc');"><i>好评率</i></a></li>
                 <li><em>店铺类型</em>
                     
                          <select name="shoptype" onchange="searchit('id desc');">
                              <option value="0">全部</option>
                              <option value="2" <c:if test="${param.shoptype eq 2}"> selected='selected'</c:if>>机构</option>
                              <option value="1" <c:if test="${param.shoptype eq 1}"> selected='selected'</c:if>>个人</option>
                          </select>
                      
                 </li>
                 <li>
                      <select name="">
                          <option value="">所在地</option>
                          <option value="">所在地2</option>
                          <option value="">所在地3</option>
                      </select>
            
                 </li>
                 <li><a href="${ctx}/kailian/KlSellerProduct/map.do" class="btn1">地图显示</a></li>
               </ul>
          </div>
         </form>
     </div>
     <script>
          function	searchit(sortt) {
          		$('#sort').val(sortt);
          		$('#form2').submit();
          	}
          </script>
     <div class="shopEnd">
          <ul>
          
         <c:forEach var="v" items="${map.page.result}">
          
            <li>
                <div class="fl">
                     <div class="imgDiv"><a target="_blank" href="${ctx}/shop_${v.id}.html">
                     <c:choose>
                     	<c:when test="${v.logo ne null and v.logo ne ''}">
                     		<img src="${ctx}/${v.logo}" style="width:130px;height:86px;" alt="" />
                     	</c:when>
                     	<c:otherwise>
                     		<img src="${ctx}/image/logo.png" style="width:130px;height:86px;" alt="" />
                     	</c:otherwise>
                     </c:choose>
                     
                     
                     </a></div>
                     <h2><a href="${ctx}/shop_${v.id}.html">${v.shopName}</a></h2>
                     <div class="content">位置：${v.address}</div>
                     <div class="mark">
                     <!-- 
                     	好评率：<b>99.57%</b><img src="${ctx}/image/limg70.gif" alt="" />
                      -->
                     </div>
                </div>
                <div class="fr">
                      <dl>
                      	<c:forEach var="p" items="${v.products}">
	                      	<c:if test="${p.ext10 ne -1 }">
		                        <dd><a href="${ctx}/product_${p.id}.html" target="_blank"><img src="${ctx}/${p.photo}" style="width:130px;height:86px;" alt="" /></a><div><a href="${ctx}/product_${p.id}.html" target="_blank" title="${p.name }">${my:maxleng(p.name, 8)}</a></div></dd>
	                      	</c:if>
                        </c:forEach>
                      </dl>
                </div>
            </li>
           </c:forEach>
          
		<!-- 
            <li>
                <div class="fl">
                     <div class="imgDiv"><a href=""><img src="${ctx}/image/limg130.jpg" alt="" /></a></div>
                     <h2><a href="">张三的店铺</a></h2>
                     <div class="content">位置：北京市朝阳区广渠路</div>
                     <div class="mark">好评率：<b>99.57%</b><img src="${ctx}/image/limg70.gif" alt="" /></div>
                </div>
                <div class="fr">
                      <dl>
                        <dd><a href=""><img src="${ctx}/image/limg110.jpg" alt="" /></a><div><a href="">课程名称</a></div></dd>
                        <dd><a href=""><img src="${ctx}/image/limg110.jpg" alt="" /></a><div><a href="">课程名称</a></div></dd>
                        <dd><a href=""><img src="${ctx}/image/limg110.jpg" alt="" /></a><div><a href="">课程名称</a></div></dd>
                      </dl>
                </div>
            </li>
            -->
          </ul>
     </div>
          ${my:drawpage(map.page, pageContext.request,  null)}

</div>
<span class="clear_f"></span>
<!--walEnd-->
</div>
<div class="h20"></div>

<!--底部start-->
<%@ include file="/page/kailiantail.jsp" %>

</body>
</html>