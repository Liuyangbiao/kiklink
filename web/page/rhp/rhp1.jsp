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
<title>【热活派】10月26日攀岩免费体验专场，仅50个名额</title>
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/rhp.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery-1.7.1.min.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/js.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/fun.js"></script>
<!--[if lte IE 6]>
<script src="${ctx}/script/png.js" type="text/javascript"></script>
    <script type="text/javascript">
        DD_belatedPNG.fix('div, ul, img, li, input , a');
    </script>
<![endif]--> 
</head>

<body>
<%@ include file="/page/kailianheader.jsp" %>

<!--顶部end-->

<div class="rhpFlash fadeFlash" onclick="window.location.href='#pos';" style="cursor:pointer;">
     <ul>
     	<c:set value="0" var="ct" />
       <c:if test="${map.r.bigimg1 ne null and fn:length(map.r.bigimg1) ge 1}"><c:set value="${ct+1}" var="ct" /><li><a  style="background:url(${ctx}/${map.r.bigimg1}) center top no-repeat;"></a></li></c:if>
       <c:if test="${map.r.bigimg2 ne null and fn:length(map.r.bigimg2) ge 1}"><c:set value="${ct+1}" var="ct" /><li><a  style="background:url(${ctx}/${map.r.bigimg2}) center top no-repeat;"></a></li></c:if>
       <c:if test="${map.r.bigimg3 ne null and fn:length(map.r.bigimg3) ge 1}"><c:set value="${ct+1}" var="ct" /><li><a  style="background:url(${ctx}/${map.r.bigimg3}) center top no-repeat;"></a></li></c:if>
       <c:if test="${map.r.bigimg4 ne null and fn:length(map.r.bigimg4) ge 1}"><c:set value="${ct+1}" var="ct" /><li><a  style="background:url(${ctx}/${map.r.bigimg4}) center top no-repeat;"></a></li></c:if>
       <c:if test="${map.r.bigimg5 ne null and fn:length(map.r.bigimg5) ge 1}"><c:set value="${ct+1}" var="ct" /><li><a  style="background:url(${ctx}/${map.r.bigimg5}) center top no-repeat;"></a></li></c:if>
       <c:if test="${map.r.bigimg6 ne null and fn:length(map.r.bigimg6) ge 1}"><c:set value="${ct+1}" var="ct" /><li><a  style="background:url(${ctx}/${map.r.bigimg6}) center top no-repeat;"></a></li></c:if>

     </ul>
     <div class="btnDiv">
     	<c:forEach var="s" begin="1" end="${ct}">
     		<c:choose>
     			<c:when test="${s eq 1}">
     				<span class="spanNow"></span>
     			</c:when>
     			<c:otherwise><span></span></c:otherwise>
     		</c:choose>
     	</c:forEach>
     </div>
</div>
<a name="pos"></a>
<div class="rhpPart1">
      <div class="title">
            <div class="wal"><div>26</div><h1>活动日程</h1></div>
      </div>
      <div class="line"></div>
      <div class="wal list">
            <ul>
               <li class="li_01">
                  <b><img src="${ctx}/image/limg28_1.png"/>集合时间</b>
                  <div class="content">${map.r.coTime}</div>
               </li>
               <li class="li_02">
                  <b><img src="${ctx}/image/limg28_2.png"/>活动地点</b>
                  <div class="content"><span>${map.r.coPosition}</span><a href="${ctx}/kailian/CmsStRehuopai/map.do?id=${map.r.id}" target="_blank"><img src="${ctx}/image/limg43_1.png"/></a></div>
                  <div class="msg">
                        ${map.r.busWay} <br />${map.r.driveWay}
                  </div>
               </li>
               <li class="li_03">
                  <b><img src="${ctx}/image/limg28_3.png"/>活动流程</b>
                  <div class="content">
                  ${map.r.coProcess1}<br />
                  ${map.r.coProcess2}<br />
                  ${map.r.coProcess3}<br />
                  ${map.r.coProcess4}<br />
                  ${map.r.coProcess5}
                  </div>
               </li>
               <li class="li_04">
                  <b><img src="${ctx}/image/limg28_4.png"/>活动类别</b>
                  <div class="content">
                   ${map.r.coTypes}
                  </div>
               </li>
               <li class="li_05">
                  <b><img src="${ctx}/image/limg28_5.png"/>注意事项</b>
                  <div class="content">
                   ${map.r.coAttentions}
                  </div>
               </li>
               <li class="li_06">
                  <b><img src="${ctx}/image/limg28_6.png"/>活动费用</b>
                  <h2>¥${map.r.price}</h2>
                  <div class="div1">/人</div>
                  <div class="div2">${map.r.priceTip}</div>
               </li>
            </ul>
      </div>
      <a href="${ctx}/kailian/CmsStRhppeople/prereg.do?pid=${map.r.id}&ext5=${param.q}" class="btn"></a>
</div>

<div class="rhpPart2">
    <h1>合作伙伴</h1>
    <div class="wal">
        <ul>
        <c:forEach var="t" items="${map.parts}">
          <li><a href="${t.url}" target="_blank"><img src="${ctx}/${t.logoimg}" style="width:184px;height:64px;"/></a></li>
         </c:forEach>
  
          
        </ul>
    </div>
</div>
<script type="text/javascript">
$('.rhpPart2').find('.wal').width($('.rhpPart2').find('li').length*220);
</script>

<div class="rhpPart3">
   <h1><img src="${ctx}/image/limg25.png"/>其他详情</h1>
   <div class="wal">
        <div class="bg1"></div>
        <ul>
        <c:forEach var="o" items="${map.others}">
          <li>
              <div class="imgDiv"><a href="${o.url}" target="_blank"><img src="${ctx}/${o.logoimg}" style="width:320px;height:260px;"/></a></div>
              <div class="name"><a href="${o.url}" target="_blank">[${o.pname}]</a></div>
              <div class="msg">本期特邀教练：${o.coachname}</div>
              <div class="content">
              ${o.description}
              </div>
          </li>
          </c:forEach>
         
        </ul>
        <div class="bg2"></div>
   </div>
</div>

<div class="rhpPart4">
<a href="javascript:;" class="leftBtn"></a>
<a href="javascript:;" class="rightBtn"></a>
<div class="wal">
  <h1><img src="${ctx}/image/limg38.png"/>还有<span>其他好玩儿的～</span></h1>
  <div class="list">
        <ul>
        <c:forEach var="t" items="${map.tuijian}">
          <li onclick="window.open('${t.ext3}','_blank');">
              <div class="imgDiv"><a href="${t.ext3}" target="_blank"><img src="${ctx}/${t.productimg}" style="width:204px;height:204px;" /></a></div>
              <div class="contentDiv">
                   <div class="price"><b>¥${t.price}/${t.perClassMinutes}</b></div>
                   <div class="msg"><a href="${t.ext2}" target="_blank">［${t.shopname}］</a></div>
                   <div class="content">${t.productname}</div>
              </div>
          </li>
         </c:forEach>
         <!--
          <li>
              <div class="imgDiv"><a href=""><img src="${ctx}/image/limg204_2.jpg"/></a></div>
              <div class="contentDiv">
                   <div class="price"><b>¥200</b>/ 75分钟</div>
                   <div class="msg"><a href="">［悠季瑜伽］</a></div>
                   <div class="content">一对多单次集体课程（最多6人）</div>
              </div>
          </li>
          <li>
              <div class="imgDiv"><a href=""><img src="${ctx}/image/limg204_1.jpg"/></a></div>
              <div class="contentDiv">
                   <div class="price"><b>¥200</b>/ 75分钟</div>
                   <div class="msg"><a href="">［悠季瑜伽］</a></div>
                   <div class="content">一对多单次集体课程（最多6人）</div>
              </div>
          </li>
          <li>
              <div class="imgDiv"><a href=""><img src="${ctx}/image/limg204_2.jpg"/></a></div>
              <div class="contentDiv">
                   <div class="price"><b>¥200</b>/ 75分钟</div>
                   <div class="msg"><a href="">［悠季瑜伽］</a></div>
                   <div class="content">一对多单次集体课程（最多6人）</div>
              </div>
          </li>
          <li>
              <div class="imgDiv"><a href=""><img src="${ctx}/image/limg204_1.jpg"/></a></div>
              <div class="contentDiv">
                   <div class="price"><b>¥200</b>/ 75分钟</div>
                   <div class="msg"><a href="">［悠季瑜伽］</a></div>
                   <div class="content">一对多单次集体课程（最多6人）</div>
              </div>
          </li>
          <li>
              <div class="imgDiv"><a href=""><img src="${ctx}/image/limg204_2.jpg"/></a></div>
              <div class="contentDiv">
                   <div class="price"><b>¥200</b>/ 75分钟</div>
                   <div class="msg"><a href="">［悠季瑜伽］</a></div>
                   <div class="content">一对多单次集体课程（最多6人）</div>
              </div>
          </li>
          <li>
              <div class="imgDiv"><a href=""><img src="${ctx}/image/limg204_1.jpg"/></a></div>
              <div class="contentDiv">
                   <div class="price"><b>¥200</b>/ 75分钟</div>
                   <div class="msg"><a href="">［悠季瑜伽］</a></div>
                   <div class="content">一对多单次集体课程（最多6人）</div>
              </div>
          </li>
          <li>
              <div class="imgDiv"><a href=""><img src="${ctx}/image/limg204_2.jpg"/></a></div>
              <div class="contentDiv">
                   <div class="price"><b>¥200</b>/ 75分钟</div>
                   <div class="msg"><a href="">［悠季瑜伽］</a></div>
                   <div class="content">一对多单次集体课程（最多6人）</div>
              </div>
          </li>
          -->
        </ul>
  </div>
</div>
</div>

<div class="rhpPart5">
     <h1><img src="${ctx}/image/limg33_3.png"/>往期回顾</h1>
     <a href="javascript:;" class="leftBtn"></a>
     <a href="javascript:;" class="rightBtn"></a>
     <div class="wal">
     <div class="list">
          <ul>
          <li>
               <div class="time">7月20日 卡丁车赛</div>
               <div class="imgDiv"><a href="http://www.kiklink.com/kailian/CmsGroup/getTopic.do?topicid=32" target="_blank"><img style="max-width:108px;max-height:108px;" src="${ctx}/image/limg108_1.png"/></a></div>
            </li>
            <li>
               <div class="time">8月24日 剑道之旅</div>
               <div class="imgDiv"><a href="http://www.kiklink.com/kailian/CmsGroup/getTopic.do?topicid=28" target="_blank"><img style="max-width:108px;max-height:108px;" src="${ctx}/image/jiandaojun.jpg" style="width:108px;height:108px;" /></a></div>
            </li>
            <li>
               <div class="time">8月31日 高尔夫体验日</div>
               <div class="imgDiv"><a href="http://www.kiklink.com/kailian/CmsGroup/getTopic.do?topicid=27" target="_blank"><img style="max-width:108px;max-height:108px;" src="${ctx}/image/gaoerfujun.jpg" style="width:108px;height:108px;" /></a></div>
            </li>
            <li>
               <div class="time">9月13日 瑜伽体验日</div>
               <div class="imgDiv"><a href="http://www.kiklink.com/kailian/CmsGroup/getTopic.do?topicid=33" target="_blank"><img style="max-width:108px;max-height:108px;" src="${ctx}/image/yujiajun.jpg" style="width:108px;height:108px;" /></a></div>
            </li>
          
          </ul>
     </div>
     </div>
</div>

<!--底部start-->
<%@ include file="/page/kailiantail.jsp" %>
</body>
</html>