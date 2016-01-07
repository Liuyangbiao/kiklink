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
<title>开练网</title>
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

<div class="rhpFlash fadeFlash">
     <ul>
       <li><a href="#rhpPart1" style="background:url(${ctx}/image/img1600.jpg) center top no-repeat;"></a></li>
       <li><a href="#rhpPart1" style="background:url(${ctx}/image/img1600.jpg) center top no-repeat;"></a></li>
       <li><a href="#rhpPart1" style="background:url(${ctx}/image/img1600.jpg) center top no-repeat;"></a></li>
     </ul>
     <div class="btnDiv">
          <span class="spanNow"></span><span></span><span></span>
     </div>
</div>

<a name="rhpPart1" id="rhpPart1"></a>
<div class="bookTitle"><div><c:if test="${map.re le 0}"><img src="${ctx}/image/title5.png"/></c:if></div></div>
<div class="rhpBook">
<div class="wal">
      <div class="bookBg">
            <div class="bookOk">
            		<c:choose>
                 <c:when test="${map.re gt 0}">
                 <div class="imgDiv">
                 <img src="${ctx}/image/ico12.png"></div>
                 <h1>恭喜你,报名成功</h1>
                 <div class="content">稍后会将活动信息以短信的形式发送至您的手机</div>
                 <a href="${ctx}/index.html" class="btn">返回开练首页</a>
                 </c:when>
                 <c:otherwise>
                 <div class="imgDiv">
                 </div>
                 <h1>${map.word}</h1>
                 <div class="content"></div>
                 <a href="${ctx}/index.html" class="btn">返回开练首页</a>
                 </c:otherwise>
                </c:choose>
            </div>
      </div>
      <div class="bookB"></div>
</div>
</div>

<!--底部start-->
<%@ include file="/page/kailiantail.jsp" %>

</body>
</html>