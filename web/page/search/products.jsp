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
<title>课程搜索${my:config('title后缀','--开练网')}</title>
<meta name="keywords" content="${my:config('关键词','开练网')}" /> 
<meta name="description" content="${my:config('metadata','开练网')}" /><link rel="shortcut icon" href="${ctx}/favicon.ico" /> 
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/help.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/page1.css" rel="stylesheet" type="text/css" />
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
     
     
     <div class="searchShow_1">
         <ul>
           <li><span>产品类型：</span>
               <div class="content cats">
               <a href="#" cat="-1">全部</a>
               <a href="#" cat="10">球类</a><a href="#" cat="20">健身/瑜伽</a>
               	<a href="#" cat="30">运动恢复</a><a href="#" cat="40">水上冰上</a>
               	<a href="#" cat="50">极限/户外</a><a href="#" cat="60">舞蹈</a><a href="#" cat="70">射击/搏击/格斗</a>
               </div>
           </li>
           <li class="cities"><span>北京地区：</span>
               <div class="content">
               <a href="#" city="-1">全部</a>
               <a href="#" city="2059">东城</a>
               <a href="#" city="2060">西城</a>
               <a href="#" city="2063">朝阳</a>
               <a href="#" city="2066">海淀</a>
               <a href="#" city="2064">丰台</a>
               <a href="#" city="2065">石景山</a>
               <a href="#" city="2067">门头沟</a>
               <a href="#" city="2068">房山</a>
               <a href="#" city="2070">顺义</a>
               <a href="#" city="2071">昌平</a>
               <a href="#" city="2072">大兴</a>
               <a href="#" city="2073">怀柔</a>

               </div>
           </li>
           <li class="hwords"><span>热词：</span>
           		<c:set value="${fn:split(my:getConfig('高级搜索热门标签',''),',')}" var="hws" />
               <div class="content">
               <a href="#">全部</a>
               <c:forEach var="v" items="${hws}">
               	<a href="#">${v}</a>
               </c:forEach>
               </div>
           </li>
         </ul>
      </div>
     
     
     
     <div class="courseEnd">
     	<form id="form2" action="${ctx}/kailian/KlSellerProduct/search.do" target="_self">
     		<input type="hidden" name="stype" id="stype" value="${param.stype}" />
     		<input type="hidden" name="name" id="name" value="${param.name}" />
     		<input type="hidden" name="sort" id="sort" value="${param.sort}" />
     		<input type="hidden" name="cat" id="cat" value="${param.cat}" />
     		<input type="hidden" name="cityid" id="cityid" value="${param.cityid}" />
          <div class="list">
               <ul>
                 <li><a href="javascript:searchit('id desc');">默认排序</a></li>
                 <li><a href="javascript:searchit('buyedCount desc');"><i>销量</i></a></li>
                 <li><a href="javascript:searchit('savedCount desc');"><i>人气</i></a></li>
                 <li><a href="javascript:searchit('flowerCount desc');"><i>评分</i></a></li>
                 <li><a href="javascript:searchit('id desc');"><i>最新</i></a></li>
                 <li>
                    <em>价格</em>
                    <input name="pricefrom" id="pricefrom" type="text" class="input1" value="${param.pricefrom}" onblur="searchit('id desc');" />
                    <div class="tips">-</div>
                    <input name="priceto" type="text" class="input1" value="${param.priceto}" onblur="searchit('id desc');"  />
                 </li>
                 <li>
                  <select name="provinceid" id="provinceid" onchange="searchit('${param.sort}');">
                  
                            <option value="">北京</option>
                            <!--
                            <option value="174">北京</option>
                            <option value="156">上海</option>
                            <option value="151">广州</option>
                            -->
                       </select>
                 </li>
                 <li><a href="${ctx}/kailian/KlSellerProduct/map.do" class="btn1">地图显示</a></li>
               </ul>
          </div>
          
          <script>
          function	searchit(sortt) {
          		$('#sort').val(sortt);
          		$('#form2').submit();
          	}
          </script>
         </form>
          <div class="table">
               <table width="100%" cellpadding="0" cellspacing="0" border="0">
               	<c:forEach var="v" items="${map.page.result}">
               	 	<c:if test="${v.ext10 ne -1 }">
                      <tr>
                        <td width="149"><a target="_blank" href="${ctx}/product_${v.id}.html"><img src="${ctx}/${v.photo}" style="width:130px;height:86px;" alt="" /></a></td>
                        <td width="226">
                            <h2>${v.ext5}</h2>
                            <div class="content">${v.name}
                            </div>
                        </td>
                        <td width="132">&nbsp;${v.price}元/${v.ext8}分钟</td>
                        <td width="168">${v.ext1}<br/><br/>
                            ${v.subname}</td>
                        <td><div class="div0">
                        	<!-- 
                        	服务：<img src="${ctx}/image/limg80.jpg" alt="" />
                        	 -->
                        	</div></td>
                      </tr>
                    </c:if>
                 </c:forEach>
                     
               
               </table>
          </div>
     </div>
     ${my:drawpage(map.page, pageContext.request,  null)}
</div>
<span class="clear_f"></span>
<!--walEnd-->
</div>
<div class="h20"></div>

<!--底部start-->
<%@ include file="/page/kailiantail.jsp" %>
<script>
$(document).ready(function(){

	$('.searchShow_1 .cats a').click(function() {
		$('#cat').val($(this).attr('cat'));
		searchit('${param.sort}');
	});
	
	$('.searchShow_1 .cities a').click(function() {
		$('#cityid').val($(this).attr('city'));
		searchit('${param.sort}');
	});
	
	$('.searchShow_1 .hwords a').click(function() {
		$('#name').val($(this).html());
		searchit('${param.sort}');
	});
	
	
	
	$('.searchShow_1 .cats a').each(function() {
		var c = $(this).attr('cat');
		if (c == '${param.cat}')
			$(this).addClass('searchHovers');
	});
	$('.searchShow_1 .cities a').each(function() {
		var c = $(this).attr('city');
		if (c == '${param.cityid}')
			$(this).addClass('searchHovers');
	});
	$('.searchShow_1 .hwords a').each(function() {
		var c = $(this).html();
		if (c == '${param.name}')
			$(this).addClass('searchHovers');
	});
	

	 $("#provinceid").find("option[value='${param.provinceid}']").attr("selected",true);
	});
	</script>
</body>
</html>