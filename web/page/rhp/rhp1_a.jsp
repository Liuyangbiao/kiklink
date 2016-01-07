<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>【热活派】10月26日攀岩免费体验专场，仅50个名额</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" /> 
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
<div class="telHead">

      <div class="logo"><a href=""><img src="${ctx}/image/logo2.png" width="130"/></a></div>
</div>
<div class="telBanner"><a href=""><img src="${ctx}/image/xiangshang.png"/></a></div>
<span class="clear_f"></span>

<div class="telPart1">
      <div class="title"><h1>活动日程<span style="padding-left:37px;padding-top:7px;">26</span></h1></div>
      <div class="bg">
             <ul>
               <li class="li_01">
                  <b><img src="${ctx}/image/limg28_1.png"/>集合时间</b>
                  <div class="content">${map.r.coTime}</div>
               </li>
               <li class="li_02">
                  <b><img src="${ctx}/image/limg28_2.png"/>活动地点</b>
                  <div class="content"><span>${map.r.coPosition}</span><a href="${ctx}/kailian/CmsStRehuopai/map.do?id=${map.r.id}"><img src="${ctx}/image/limg43_1.png" width="25"/></a></div>
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
                  ${my:replaceall(map.r.coAttentions,' ','<br/>')}
                  
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
</div>
<div class="telBanner"><a href="${ctx}/kailian/CmsStRhppeople/prereg.do?pid=${map.r.id}&mob=mob&ext5=${param.q}"><img src="${ctx}/image/img640.jpg"/></a></div>
<span class="clear_f"></span>

<div class="telPart2">
    <h1>合作伙伴</h1>
    <ul>
    <c:forEach var="t" items="${map.parts}">
      <li><a href="${t.url}"><img src="${ctx}/${t.logoimg}"/></a></li>
    </c:forEach>

    </ul>
    <span class="clear_f"></span>
    <div class="h10"></div>
</div>

<div class="telPart3">
   <h1><img src="${ctx}/image/limg25.png"/>其他详情</h1>
   <div class="list">
        <div class="bg1"></div>
        <ul>
        <c:forEach var="o" items="${map.others}">
          <li>
              <div class="imgDiv"><a href="${o.url}" target="_blank"><img src="${ctx}/${o.logoimg}" style="width:120px;height:120px;" /></a></div>
              <div class="name"><a href="${o.url}" target="_blank">[${o.pname}]</a></div>
              <div class="msg">本期特邀教练：${o.coachname}</div>
              <div class="content" id="ct1">
              ${my:maxleng(o.description,30)}
              </div>
              <div class="content2" id="ct2">
${o.description}              </div>
              <div class="btn"><a href="javascript:;">更多</a></div>
          </li>
         </c:forEach>
         
        </ul>
        <div class="bg2"></div>
   </div>
</div>

<div class="telPart4">
<a href="javascript:;" class="leftBtn"></a>
<a href="javascript:;" class="rightBtn"></a>
  <h1><img src="${ctx}/image/limg38.png" width="30"/>还有<span>其他好玩儿的～</span></h1>
  <div class="list">
        <ul>
        <c:forEach var="t" items="${map.tuijian}">
          <li>
              <div class="imgDiv"><a href=""><img src="${ctx}/${t.productimg}" style="width:120px;height:120px;" /></a></div>
              <div class="contentDiv">
                   <div class="price"><b>¥${t.price}</b></div>
                   <div class="msg"><a href="${t.ext2}" target="_blank">［${t.shopname}］</a></div>
                   <div class="content">${t.productname}</div>
              </div>
          </li>
         </c:forEach>
          
        </ul>
  </div>
</div>

<div class="telBanner"><a href=""><img src="${ctx}/image/img640_2.jpg"/></a></div>
<span class="clear_f"></span>
</body>
</html>
