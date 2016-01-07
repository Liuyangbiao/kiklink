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
<title>${map.shop.shopName}${my:config('title后缀','--开练网')}</title>
<meta name="keywords" content="${my:config('关键词','开练网')}" /> 
<meta name="description" content="${my:config('metadata','开练网')}" /><link rel="shortcut icon" href="${ctx}/favicon.ico" /> 
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/page1.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery-1.7.1.min.js"></script>
<link type="text/css" rel="stylesheet" href="${ctx}/scripts/jquery-easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${ctx}/scripts/jquery-easyui/themes/icon.css">
<script type="text/javascript" src="${ctx }/scripts/jquery-easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${ctx }/scripts/locale/easyui-lang-zh_CN.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery.tips.js"></script>
<script type="text/javascript" src="${ctx }/scripts/statics.js"></script>

<script language="javascript" type="text/javascript" src="${ctx}/script/js.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/fun.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/form.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/comment.js"></script>
<script type="text/javascript" src="http://cbjs.baidu.com/js/m.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=IjFqmaTMCOn1GkK6I1x4Go2P"></script>
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
<script src="${ctx}/script/png.js" type="text/javascript"></script>
    <script type="text/javascript">
        DD_belatedPNG.fix('div, ul, img, li, input , a');
    </script>
<![endif]--> 
<script>
	var host3 = "${ctx}";
</script>

<style type="text/css">
	.title {
		margin:0px;
		padding:0px;
		border:1pxx solid red;
	}
	
	.tabContent img {
		max-width:600px;
	}
</style>
</head>

<body>
<div class="selectLayer">
  <ul></ul>
</div>
<%@ include file="/page/kailianheader.jsp" %>

<div class="wal">
<!--wal-->
<div class="storePart1">
     <a href="" class="logo">
     <c:choose>
     	<c:when test="${map.shop.logo ne null}">
     		<img src="${ctx}/${map.shop.logo}" style="max-width:55px;max-height:77px;"/>
     	</c:when>
     	<c:otherwise>
     		<img src="${ctx}/image/logo.png" style="max-width:55px;max-height:77px;padding-top:20px;"/>
     	</c:otherwise>
     </c:choose>
     </a>
     <div class="title" style=""><a>${map.shop.shopName}</a>
     	<c:if test="${map.shop.comment ne null}">
     	${my:stars(ctx, map.shop.comment.point)}
     	</c:if>
     </div>
   
    
     <div class="msg">
         <b>地址：</b>${map.shop.address}　　
        
         <a id="fancybox-manual-b" href="#"><img src="${ctx}/image/nimg11.gif"/>显示地图</a>　电话：${map.shop.phoneno}
         </b>
     </div>
     
     <div class="mark">
     <font style="font-weight:bold;font-size:30pt;color:red;">${map.shop.comment.point}</font>
     <div>来自<span class="blue">${map.comments.totalCount}</span>条评论</div>
     </div>
</div>
<div class="fl w724">
     <div class="storePart2 fadeFlash">
           <ul>
           	<c:forEach var="f" items="${map.focus}" varStatus="vs">
           	
           		<li style="text-align:center;vertical-align:middle;">
           			<c:choose>
           				<c:when test="${f.comment ne null and f.comment ne ''}">
           				<a href="http://${f.comment}" target="_blank">
           				<img alt="${f.name}" src="${ctx}/${f.resource}" style="min-width:724px;min-height:305px;" />
           				</a>
           				</c:when>
           				<c:otherwise>
           				<a class="fancybox-thumbs" data-fancybox-group="thumb" href="${ctx}/${f.resource}">
           				<img alt="${f.name}" src="${ctx}/${f.resource}" style="min-width:724px;min-height:305px;" />
           				</a>
           				</c:otherwise>
           			</c:choose>
           			
           		</li>
           	</c:forEach>

           </ul>
           <div class="btnDiv">
           <c:forEach var="f" items="${map.focus}" varStatus="vs">
           	<span <c:if test="${vs.index eq 0}"> class="spanNow"</c:if>></span>
           </c:forEach>
           </div>
     </div>
     <!---->
     <div class="tab storeTab">
          <ul>
             <li class="liNow">商家介绍</li>
             <li>环境介绍</li>
             <!-- 
             <li>服务人群</li>
              -->
             <c:if test="${map.shop.classtable ne null and map.shop.classtable ne ''}">
             	<li>课表</li>
             </c:if>
             <li><a href="${ctx}/coachs_${map.shop.id}.html">教练团队</a></li>
             <li>用户评价</li>
             <li onmouseover="map.setZoom(12);">店铺地图</li>
           </ul>
     </div>
     <div class="tabContentDiv">
          <div class="tabContent storePart3">
          		<c:choose>
          			<c:when test="${fn:contains(map.shop.introduction,'<p>')}">
          				${my:replaceall(map.shop.introduction,'\\n','')}
          			</c:when>
          			<c:otherwise>
          				${my:replaceall(map.shop.introduction,'\\n','<br/>')}
          			</c:otherwise>
          		</c:choose>
                
          </div>
          <div class="tabContent storePart3" style="height:${fn:length(map.eqs.result)/3*180}px;">
          	<c:if test="${fn:length(map.eqs.result) le 0}">
            	环境介绍--暂无
            </c:if>
            <c:if test="${fn:length(map.eqs.result) gt 0}">
            	<c:forEach var="v" items="${map.eqs.result}">
            		<div style="width:220px;height:160px;float:left;text-align:center;vertical-align:bottom;">
            			<table>
            				<tr><td style="width:220px;height:120px;" align="center" valign="middle">
            					<a title="${my:replaceall(v.comment,'\\n','')}" class="fancybox-thumbs fancybox-effects-b" data-fancybox-group="thumb1" href="${ctx}/${my:smallphoto(request,v.resource,'m')}">
            						<img src="${ctx}/${my:smallphoto(request,v.resource,'s')}" style="max-width:180px;max-height:120px;margin:0 auto;" />
            					</a>
            				</td></tr>
            				<tr><td align="center">
            					<a class="easyui-tips" tooltip="${my:replaceall(v.comment,'\\n','')}">${my:maxleng(v.comment,10)}</a>
            				</td></tr>
            			</table>
            	
            			
            		</div>
            	</c:forEach>
            </c:if>
          </div>
          	<!-- 
          <div class="tabContent storePart3">
          
          	<c:if test="${map.shop.customtype ne null}">
          	${my:replaceall(map.shop.customtype,'\\n','<br/>')}
          	</c:if>
          	
          </div>
           -->
          <c:if test="${map.shop.classtable ne null and map.shop.classtable ne ''}">
           <div class="tabContent storePart3">
           	${map.shop.classtable}
           </div>
          </c:if>
          <div class="tabContent storePart3">
               <div class="">

<c:forEach var="c" items="${map.teachers.result}">
	 <h2>${c.name}</h2>
            <div class="img" style="text-align:center;vertical-align:middle;"><a href="${ctx}/coach_${map.shop.id}_${c.id}.html" target="_blank">
            <img src="${ctx}/${my:smallphoto(request,c.photo,'m')}" style="max-width:560px;max-height:400px;" /></a></div>
            <div class="msg">
            	${my:replaceall(c.profile,'\\n','<br/>')}
            	<br/><br/>
            </div>
</c:forEach>
            
</div>
          </div>
          <div class="tabContent storePart3">
               
<!--服务评价-->
<div class="DetailPart4_05">


	<div>

         <iframe id="commentiframe" src="${ctx}/shopcomment_${param.id}.html" style="border:0px;width:100%;height:auto;">
	
	</iframe>
         
</div>
<!--服务评价End-->
          </div>


          </div>
          <div class="tabContent storePart3">
               <h2>地理位置</h2>
            <div class="content">
            ${map.shop.address}<br />
电话：${map.shop.phoneno} <br />
交通方式：${map.shop.ext9}
            </div>
            <div id="mapdiv" class="imgDiv" style="border:0px solid red;height:400px;"></div>
          </div>
     </div>
     <div class="h10"></div>
     <!--
     <div class="storePart4">
          <ul>
           <li><div><a href="javascript:;"><img src="${ctx}/image/nimg272.jpg"/></a></div></li>
           <li><div><a href="javascript:;"><img src="${ctx}/image/limg161.jpg"/></a></div></li>
           <li><div><a href="javascript:;"><img src="${ctx}/image/nimg120.jpg"/></a></div></li>
           <li><div><a href="javascript:;"><img src="${ctx}/image/nimg135.jpg"/></a></div></li>
           <li><div><a href="javascript:;"><img src="${ctx}/image/nimg120_2.jpg"/></a></div></li>
           <li><div><a href="javascript:;"><img src="${ctx}/image/nimg160.jpg"/></a></div></li>
           <li><div><a href="javascript:;"><img src="${ctx}/image/nimg135_2.jpg"/></a></div></li>
         </ul>
         <span class="clear_f"></span>
     </div>
     <div class="h10"></div>
     -->
     <div class="storePart5">
        <h2>本店课程</h2>
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
        	<c:forEach var="p" items="${map.products.result}" varStatus="st">
		        <c:if test="${p.ext10 ne -1 }">
		           <tr>
		             <td width="170"><div class="imgDiv">
		             	<a href="${ctx}/product_${p.id}.html"><img src="${ctx}/${p.photo}" style="width:122px;height:77px;" /></a>
		             	</div></td>
		             <td width="235"><div class="name" style="width:220px;"><a href="${ctx}/product_${p.id}.html">${p.name}</a></div></td>
		             <td width="120"><b>${p.price}</b>元/${my:classLength(p.ext8)}</td>
		             <td width="85">
		             <div class="inputDiv">
		             	 <div class="inputDiv numInput" style="position:relative;">
		             
		             <span class="jianBtn" onmouseup="" style="cursor:pointer;border:0px solid blue;position:absolute;left:1px;width:15px;height:20px;"></span>
		             <input type="text" id="countt${st.index}" name="name33" value="1" style="margin-left:15px;border:0px solid green;" />
		             <span class="jiaBtn" onmouseup="" style="cursor:pointer;border:0px solid blue;position:absolute;left:45px;width:15px;height:20px;">&nbsp;&nbsp;&nbsp;</span>
		             </div>
					</div>
		             </td>
		             <td>
		                 
		             </td>
		             <td>
		             <c:choose>
		         	<c:when test="${p.shopId eq 150 and p.buyedCount ge 30}">
		             	<a href="#" class="btn">已满</a>
		         	</c:when>
		         	<c:otherwise>
		             	<a href="#" onclick="window.location.href='${ctx}/kailian/KlShoppingShoppingcartproduct/shopCar.do?productid=${p.id}&count=' + $('#countt${st.index}').val();" class="btn">购买</a>
		             </c:otherwise>
		             </c:choose>
		             </td>
		           </tr>
	           </c:if>
           </c:forEach>
           
           
        </table>
     </div>
     <div class="h10"></div>
     <!---->
     <div class="storePart6">
          <h2>服务设施</h2><a name="sheshi"></a>
          <div class="list">
             <ul>
               <li><img id="ii1" src="${ctx}/image/nimg16_9.gif"/><span>免费</span></li>
             </ul>
          </div>
          <div class="list freelistxx">
             <ul>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>私人储物柜</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>私人储物柜锁</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>车位</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>锻炼服饰</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>补剂</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>体测</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>淋浴</span></li>
             </ul>
          </div>
          <div class="list freelistxx">
             <ul>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>桑拿</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>拖鞋</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>浴巾</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>糖果茶点</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>饮用水</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>功能饮料</span></li>
               <li><img src="${ctx}/image/nimg16_10.png"/><span>课后辅导</span></li>
             </ul>
          </div>
          <div class="list freelistxx">
             <ul>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>一对一指导</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>一对多指导</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>Wifi</span></li>
               <c:if test="${map.shop.ext6 ne null}">
               	<c:set value="${fn:split(map.shop.ext6, ',')}" var="frees" />
               		<c:forEach var="f1" items="${frees}">
               			<li><img src="${ctx}/image/nimg16_9.gif"/><span>${f1}</span></li>
               		</c:forEach>
               </c:if>

             </ul>
          </div>
          
          <div style="clear:both;"></div>
          <div class="list">
             <ul>
               <li><img id="ii2" src="${ctx}/image/nimg16_10.png"/><span>收费</span></li>
             </ul>
          </div>
          <div class="list moneylistxx">
             <ul>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>私人储物柜</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>私人储物柜锁</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>车位</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>锻炼服饰</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>补剂</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>体测</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>淋浴</span></li>
             </ul>
          </div>
          <div class="list moneylistxx">
             <ul>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>桑拿</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>拖鞋</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>浴巾</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>糖果茶点</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>饮用水</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>功能饮料</span></li>
               <li><img src="${ctx}/image/nimg16_10.png"/><span>课后辅导</span></li>
             </ul>
          </div>
          <div class="list moneylistxx">
             <ul>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>一对一指导</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>一对多指导</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>Wifi</span></li>

               <c:if test="${map.shop.ext7 ne null}">
               	<c:set value="${fn:split(map.shop.ext7, ',')}" var="moneys" />
               		<c:forEach var="f1" items="${moneys}">
               			<li><img src="${ctx}/image/nimg16_10.gif"/><span>${f1}</span></li>
               		</c:forEach>
               </c:if>
             </ul>
          </div>
          <span class="clear_f"></span>
     </div>
     
    

       <script>
     $(function(){
			$('.freelistxx ul li').hide();
			$('.moneylistxx ul li').hide();
			
      		//$('.storePart6 .list ul li img').css({'opacity':0});
      		var ads = "${map.shop.addition}";
      		
      		if (ads.length > 0) {
      		var ss = ads.split(",");
      			<c:if test="${map.shop.ext6 ne null}">
               	<c:set value="${fn:split(map.shop.ext6, ',')}" var="frees" />
               		<c:forEach var="f1" items="${frees}">
               			ss[ss.length] = "${f1}";
               		</c:forEach>
               </c:if>
      		
      		<c:if test="${map.shop.ext7 ne null}">
               	<c:set value="${fn:split(map.shop.ext7, ',')}" var="frees" />
               		<c:forEach var="f1" items="${frees}">
               			ss[ss.length] = "${f1}" + "-m";
               		</c:forEach>
               </c:if>
      		
      		for (var i = 0; i < ss.length; i ++) {
      			var s = ss[i];
      			var kk = s.split('-');
      			
      			if (kk.length == 1)
      				$(".freelistxx span:contains('" + kk[0] + "')").parent().show().find('img').css({'opacity':1}).attr("src","${ctx}/image/nimg16_9.gif");
      			else if (kk.length == 2)
      				$(".moneylistxx span:contains('" + kk[0] + "')").parent().show().find('img').css({'opacity':1}).attr("src","${ctx}/image/nimg16_10.png");
      			
      		}
      		
      		
      		
      		}
      		
      		$("span:contains('免费')").parent().show().find('img').css({'opacity':1}).attr("src","${ctx}/image/nimg16_9.gif");
      		$("span:contains('收费')").parent().show().find('img').css({'opacity':1}).attr("src","${ctx}/image/nimg16_10.png");
      		$('#ii1').show().css({'opacity':1});
      		$('#ii2').show().css({'opacity':1});
      		$('.freeli').show().css({'opacity':1});
      		$('.moneyli').show().css({'opacity':1});
     })
     </script>
     
     <div class="h10"></div>
     <!---->
     
     <c:if test="${map.comments.totalCount gt 0}">
     <div class="storePart7">
         <h1>用户评价</h1>
         <div class="contentDiv" style="height:60px;">
               <div class="title" style="float:left;"><b>${map.shop.comment.point}</b>/10分</div>
				<div style="float:left;padding-top:18px;">
				${my:stars(ctx, map.shop.comment.point)}
				</div>

         </div>
         <div class="list">
              <ul>
              <c:forEach var="c" items="${map.comments.result}">
                   <li>
                      <h5>${my:stars(ctx,c.point)}</h5>
                      <div class="time">${c.username}<span>${my:transTime(c.createtimelong)}</span></div>
                      <div class="content">
                        ${c.comment}
						</div>
                   </li>
                </c:forEach>
                   
				<!-- 
                   <li>
                      <h5><img src="${ctx}/image/nimg117_4.jpg"/>位置好，价格小贵</h5>
                      <div class="time">牛晓春<span>2014-02-07</span></div>
                      <div class="content">
                        好像是连锁店，在青年路也有一家，标志都是一样的，我感觉挺好的，主要是干净卫生，器材很新，好像是刚买不久，另外教练态度不错，还挺严格和负责任的，上次报的课没去参加还亲自打电话来问来的，很感动！
                      </div>
                   </li>
                  -->
                 </ul>
           </div>
           <!-- 
           ${my:drawpage(map.comments, pageContext.request,  null)}
            -->
     </div>
     </c:if>
     <script type="text/javascript">
     $('.storePart7').find('.list').find('li:last').css('border','0px');
     </script>
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
           <c:if test="${map.product.status ge 1}">
           	<a href="${ctx}/kailian/KlShoppingShoppingcartproduct/shopCar.do?productid=${p.id}&count=1" class="btn">立即购买</a>
     		</c:if>
     		</c:when>
     		<c:otherwise>
     			<script type="text/javascript">BAIDU_CLB_fillSlot("946201");</script>
     		</c:otherwise>
     	</c:choose>
     <!-- 
           <h2>增肌减脂私教课</h2>
           <div class="imgDiv"><a href=""><img src="${ctx}/image/limg202.jpg" alt="" /></a></div>
           <div class="content">
           多位全国健美冠军为你提供专业、系统的增肌减脂私人指导
           </div>
           <div class="price">特惠价：￥120元/小时</div>
           <a href="" class="btn">立即购买</a>
           -->
           
     </div>
     <div class="h10"></div>
     <!---->
     <div class="storePart_02">
          <h2>教练展示<a href="${ctx}/coachs_${map.shop.id}.html" target="_blank" class="more">更多教练>></a></h2>
          <div class="list">
            <ul>
            <c:forEach var="c" items="${map.teachers.result}">
              <li>
                  <div class="imgDiv" style="text-align:center;vertical-align:middle;"><a href="${ctx}/coach_${map.shop.id}_${c.id}.html" target="_blank">
                  <img src="${ctx}/${my:smallphoto(request,c.photo,'s')}" style="max-width:216px;max-height:144px;" /></a></div>
                  <div class="name"><a href="${ctx}/coach_${map.shop.id}_${c.id}.html" target="_blank">${c.name}</a></div>
                  <div class="content">${my:maxleng(c.profile,50)}</div>
              </li>
             </c:forEach>
            
            </ul>
         </div>
     </div>
     <!--
     <div class="h10"></div>
     <div class="storeImg"><a href=""><img src="${ctx}/image/limg266.jpg" alt="" /></a></div>
     <div class="h10"></div>
     
     <div class="storePart_03">
          <h2>分店信息</h2>
          <div class="content">青年路罗马嘉园英能健会所<span> 8.6评分</span></div>
     </div>
     -->
     <div class="h10"></div>
     <!---->
     <c:if test="${map.shop.weiboimg ne null and map.shop.weixinimg ne null}">
     <div class="storePart_04">
          <h2>二维码互动</h2>
          <div class="list">
              <ul>
              	<c:if test="${map.shop.weixinimg ne null}">
              		<li><img src="${ctx}/${map.shop.weixinimg}" style="width:100px;height:100px;" /><div>微信</div></li>
              	</c:if>
              	<c:if test="${map.shop.weiboimg ne null}">
              		<li><img src="${ctx}/${map.shop.weiboimg}" style="width:100px;height:100px;" /><div>微博</div></li>
              	</c:if>
                
              </ul>
              <span class="clear_f"></span>
          </div>
          <div class="msg">
             <b>提示：</b>扫描上方二维码关注我们，第一时间与我们互动，赢取奖品。
          </div>
     </div>
     <div class="h10"></div>
     </c:if>
     <!---->
     <div class="storeImg"><a href=""><img src="${ctx}/image/nimg266.jpg" alt="" /></a></div>
</div>
<span class="clear_f"></span>
<!--walEnd-->
</div>
<div class="h20"></div>




<%@ include file="/page/comment.jsp" %>



<div class="storeLayer">
     <div class="fl">
         <a href="javascript:;" class="leftBtn"></a>
         <a href="javascript:;" class="rightBtn"></a>
         <div class="list">
              <ul>
                 <li>
                    <div class="imgDiv"><a href=""><img src="${ctx}/image/nimg560_1.jpg"/></a></div>
                    <h2><a href="">齐全好用的力量设施</a></h2>
                    <div class="content">
二层力量训练区里，自由重量——深蹲架、平板卧推架、上斜卧推架、下斜卧推架，推举架应有尽有。哑铃负重从小到大，以5磅为级差，依次递增，满足不同力量水平训练者的不同需求。组合器械也非常全备——高位下拉器、坐姿划船器、坐姿推胸器、腿屈伸器、腿弯举器、手臂弯举训练器等等，种类繁多，无所不全。而且所有器械的动作轨迹都非常到位，练起来很顺手。
                    </div>
                 </li>
                 <li>
                    <div class="imgDiv"><a href=""><img src="${ctx}/image/nimg560_1.jpg"/></a></div>
                    <h2><a href="">齐全好用的力量设施</a></h2>
                    <div class="content">
二层力量训练区里，自由重量——深蹲架、平板卧推架、上斜卧推架、下斜卧推架，推举架应有尽有。哑铃负重从小到大，以5磅为级差，依次递增，满足不同力量水平训练者的不同需求。组合器械也非常全备——高位下拉器、坐姿划船器、坐姿推胸器、腿屈伸器、腿弯举器、手臂弯举训练器等等，种类繁多，无所不全。而且所有器械的动作轨迹都非常到位，练起来很顺手。
                    </div>
                 </li>
                 <li>
                    <div class="imgDiv"><a href=""><img src="${ctx}/image/nimg560_1.jpg"/></a></div>
                    <h2><a href="">齐全好用的力量设施</a></h2>
                    <div class="content">
二层力量训练区里，自由重量——深蹲架、平板卧推架、上斜卧推架、下斜卧推架，推举架应有尽有。哑铃负重从小到大，以5磅为级差，依次递增，满足不同力量水平训练者的不同需求。组合器械也非常全备——高位下拉器、坐姿划船器、坐姿推胸器、腿屈伸器、腿弯举器、手臂弯举训练器等等，种类繁多，无所不全。而且所有器械的动作轨迹都非常到位，练起来很顺手。
                    </div>
                 </li>
                 <li>
                    <div class="imgDiv"><a href=""><img src="${ctx}/image/nimg560_1.jpg"/></a></div>
                    <h2><a href="">齐全好用的力量设施</a></h2>
                    <div class="content">
二层力量训练区里，自由重量——深蹲架、平板卧推架、上斜卧推架、下斜卧推架，推举架应有尽有。哑铃负重从小到大，以5磅为级差，依次递增，满足不同力量水平训练者的不同需求。组合器械也非常全备——高位下拉器、坐姿划船器、坐姿推胸器、腿屈伸器、腿弯举器、手臂弯举训练器等等，种类繁多，无所不全。而且所有器械的动作轨迹都非常到位，练起来很顺手。
                    </div>
                 </li>
               </ul>
         </div>
     </div>
     <div class="fr">
          <h2>华侨城英派斯健身会所</h2>
          <div class="msg"><b>地址：</b>朝阳区金蝉欢乐园2号园甲1号楼116号</div>
          <div class="tab storeTab1">
                <div class="bg">
                     <ul>
                      <li class="liNow">力量训练区</li>
                      <li>有氧训练区</li>
                      <li>泳池区</li>
                    </ul>
                </div>
          </div>
          <div class="tabContentDiv">
               <div class="tabContent storeList">
                     <ul>
                       <li><img src="${ctx}/image/nimg70_1.jpg"/></li>
                       <li><img src="${ctx}/image/nimg70_2.jpg"/></li>
                       <li><img src="${ctx}/image/nimg70_3.jpg"/></li>
                       <li><img src="${ctx}/image/nimg70_2.jpg"/></li>
                       <li><img src="${ctx}/image/nimg70_1.jpg"/></li>
                       <li><img src="${ctx}/image/nimg70_2.jpg"/></li>
                       <li><img src="${ctx}/image/nimg70_3.jpg"/></li>
                       <li><img src="${ctx}/image/nimg70_2.jpg"/></li>
                       <li><img src="${ctx}/image/nimg70_1.jpg"/></li>
                       <li><img src="${ctx}/image/nimg70_2.jpg"/></li>
                       <li><img src="${ctx}/image/nimg70_3.jpg"/></li>
                       <li><img src="${ctx}/image/nimg70_2.jpg"/></li>
                       <li><img src="${ctx}/image/nimg70_1.jpg"/></li>
                       <li><img src="${ctx}/image/nimg70_2.jpg"/></li>
                       <li><img src="${ctx}/image/nimg70_3.jpg"/></li>
                       <li><img src="${ctx}/image/nimg70_2.jpg"/></li>
                     </ul>
                     <span class="clear_f"></span>
               </div>
               <div class="tabContent storeList">
                     <ul>
                       <li><img src="${ctx}/image/nimg70_3.jpg"/></li>
                       <li><img src="${ctx}/image/nimg70_2.jpg"/></li>
                       <li><img src="${ctx}/image/nimg70_3.jpg"/></li>
                       <li><img src="${ctx}/image/nimg70_2.jpg"/></li>
                       <li><img src="${ctx}/image/nimg70_1.jpg"/></li>
                       <li><img src="${ctx}/image/nimg70_2.jpg"/></li>
                       <li><img src="${ctx}/image/nimg70_3.jpg"/></li>
                       <li><img src="${ctx}/image/nimg70_2.jpg"/></li>
                       <li><img src="${ctx}/image/nimg70_1.jpg"/></li>
                       <li><img src="${ctx}/image/nimg70_2.jpg"/></li>
                       <li><img src="${ctx}/image/nimg70_3.jpg"/></li>
                       <li><img src="${ctx}/image/nimg70_2.jpg"/></li>
                       <li><img src="${ctx}/image/nimg70_1.jpg"/></li>
                       <li><img src="${ctx}/image/nimg70_2.jpg"/></li>
                       <li><img src="${ctx}/image/nimg70_3.jpg"/></li>
                       <li><img src="${ctx}/image/nimg70_2.jpg"/></li>
                     </ul>
                     <span class="clear_f"></span>
               </div>
               <div class="tabContent storeList">
                     <ul>
                       <li><img src="${ctx}/image/nimg70_2.jpg"/></li>
                       <li><img src="${ctx}/image/nimg70_2.jpg"/></li>
                       <li><img src="${ctx}/image/nimg70_3.jpg"/></li>
                       <li><img src="${ctx}/image/nimg70_2.jpg"/></li>
                       <li><img src="${ctx}/image/nimg70_1.jpg"/></li>
                       <li><img src="${ctx}/image/nimg70_2.jpg"/></li>
                       <li><img src="${ctx}/image/nimg70_3.jpg"/></li>
                       <li><img src="${ctx}/image/nimg70_2.jpg"/></li>
                       <li><img src="${ctx}/image/nimg70_1.jpg"/></li>
                       <li><img src="${ctx}/image/nimg70_2.jpg"/></li>
                       <li><img src="${ctx}/image/nimg70_3.jpg"/></li>
                       <li><img src="${ctx}/image/nimg70_2.jpg"/></li>
                       <li><img src="${ctx}/image/nimg70_1.jpg"/></li>
                       <li><img src="${ctx}/image/nimg70_2.jpg"/></li>
                       <li><img src="${ctx}/image/nimg70_3.jpg"/></li>
                       <li><img src="${ctx}/image/nimg70_2.jpg"/></li>
                     </ul>
                     <span class="clear_f"></span>
               </div>
          </div>
     </div>
     <div class="clear_f"></div>
</div>

<%@ include file="/page/kailiantail.jsp" %>
<script type="text/javascript">


$(function(){
	getStaticsData('shop,${map.shop.id}');
});


var map = new BMap.Map("mapdiv");
$(function(){

<c:if test="${map.shop.mapx ne null and map.shop.mapy ne null}">
map.centerAndZoom(new BMap.Point(${map.shop.mapx}-0.2,${map.shop.mapy}+0.1), 12);
var marker1 = new BMap.Marker(new BMap.Point(${map.shop.mapx},${map.shop.mapy}));  // 创建标注
map.addOverlay(marker1);              // 将标注添加到地图中
var infoWindow1 = new BMap.InfoWindow("${map.shop.address}");
marker1.addEventListener("click", function(){this.openInfoWindow(infoWindow1);});



map.addControl(new BMap.NavigationControl());  //添加默认缩放平移控件
map.addControl(new BMap.NavigationControl({anchor: BMAP_ANCHOR_TOP_RIGHT, type: BMAP_NAVIGATION_CONTROL_SMALL}));  //右上角，仅包含平移和缩放按钮
map.addControl(new BMap.NavigationControl({anchor: BMAP_ANCHOR_BOTTOM_LEFT, type: BMAP_NAVIGATION_CONTROL_PAN}));  //左下角，仅包含平移按钮
map.addControl(new BMap.NavigationControl({anchor: BMAP_ANCHOR_BOTTOM_RIGHT, type: BMAP_NAVIGATION_CONTROL_ZOOM}));  //右下角，仅包含缩放按钮
</c:if>


			$("#fancybox-manual-b").click(function() {
				$.fancybox.open({
					href : '${ctx}/page/map.jsp?x=${map.shop.mapx}&y=${map.shop.mapy}',
					type : 'iframe',
					padding : 5
				});
			});


$('.fancybox-thumbs').fancybox({
				prevEffect : 'none',
				nextEffect : 'none',

				closeBtn  : false,
				arrows    : true,
				nextClick : true,

				helpers : {
					
				}
			});	
			
			
$('.fancybox-thumbs1').fancybox({
				prevEffect : 'none',
				nextEffect : 'none',

				closeBtn  : false,
				arrows    : true,
				nextClick : true,

				helpers : {

				}
			});				

});

function iframeheight(ht) {
	//alert(ht);
	$('#commentiframe').css({height:ht+100});
}
   

</script>
</body>
</html>