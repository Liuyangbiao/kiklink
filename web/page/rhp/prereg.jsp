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
<div class="bookTitle"><div><img src="${ctx}/image/title4.png"/></div></div>
<div class="rhpBook">
<div class="wal">
<form action="${ctx}/kailian/CmsStRhppeople/reg.do" method="post">
      <div class="bookBg">
            <div class="form">
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
                </ul>
                <div class="btnDiv"><input type="submit" class="btn1" value="确定提交">
                <br/><br/>
                <c:if test="${map.re lt 0}">
                <span style="font-size:17px;">${map.word}</span>
                </c:if>
                </div>
            </div>
      </div>
      <div class="bookB"></div>
    </form>
</div>
</div>

<!--底部start-->
<%@ include file="/page/kailiantail.jsp" %>

</body>
</html>