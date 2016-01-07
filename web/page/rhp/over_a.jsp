<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>开练网</title>
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
<div class="telBanner"><a href=""><img src="${ctx}/image/xiangshang.png" style="border-bottom:#e32929 solid 1px;"/></a></div>
<span class="clear_f"></span>

<div class="telBookTitle"><h1><div><img src="${ctx}/image/title3.png"></div></h1></div>
<div class="telBookOk">
     <div class="content">
     <c:choose>
                 <c:when test="${map.re gt 0}">
           <div class="imgDiv"><img src="${ctx}/image/ico10.png"></div>
           <h1>恭喜你,报名成功</h1>
           <div>稍后会将活动信息以短信的形式发送<br>至您的手机。</div>
           </c:when>
                 <c:otherwise>
                 <div class="imgDiv"></div>
           <h1>${map.word}</h1>
           <div></div>
                 
                 </c:otherwise>
                </c:choose>
     </div>
</div>

</body>
</html>
