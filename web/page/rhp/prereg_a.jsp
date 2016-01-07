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

<div class="telBookTitle"><h1><div><img src="${ctx}/image/title2.png"></div></h1></div>
<div class="telBook">
<form id="form1" action="${ctx}/kailian/CmsStRhppeople/reg.do?mob=mob" method="post">

     <ul>
       <li>
         <div class="name"><span>＊</span>您的姓名</div>
                             <input type="hidden" id="pid" name="pid" value="${param.pid}" />
                             <input type="hidden" id="ext5" name="ext5" value="${param.ext5}" />
                     <input type="text" name="pname" id="pname" value="${param.pname}" class="input1">

       </li>
       <li>
         <div class="name">您的职业</div>
         <input type="text" class="input1" id="job" name="job" value="${param.job}" />
       </li>
       <li>
         <div class="name"><span>＊</span>联系方式</div>
                             <input type="text" class="input1" id="mobile" name="mobile" value="${param.mobile}" />

       </li>
       <li>
         <div class="name">联系地址</div>
                     <input type="text" class="input1 input2" id="ext1" name="ext1" value="${param.ext1}" />
       </li>
       <li>
         <div class="name">意见／建议</div>
                     <textarea name="ext2" cols="" rows="" id="ext2">${param.ext2}</textarea>
       </li>
       <li style="padding:10px 0;"><div style="text-align:center;padding-top:10px;font-size:30px;" onclick="$('#form1').submit();" class="btn1" value="确定提交">确定提交</div>
       <br/>
       <c:if test="${map.re lt 0}">
                <span style="font-size:17px;">${map.word}</span>
                </c:if>
       </li>
     </ul>
     </form>
</div>

</body>
</html>
