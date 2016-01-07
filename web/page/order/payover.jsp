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
<title>支付${my:config('title后缀','--开练网')}</title>
<meta name="keywords" content="${my:config('关键词','开练网')}" /> 
<meta name="description" content="${my:config('metadata','开练网')}" /><link rel="shortcut icon" href="${ctx}/favicon.ico" /> 
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
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

<c:if test="${map.order.status eq 20}">
<div class="wal">
<!--wal-->
<div class="sucPayment">
      <div class="msg"><img src="${ctx}/image/limg53.gif"/>支付成功，转向课程管理界面，<a href="${ctx}/kailian/KlShoppingShoppingcartproduct/userindex.do">点击跳转 >>></a></div>
      <div class="content">
     订单号：<b>${map.order.id}</b>，系统已经给你手机发送课程购买成功订单号短信。<br />

      </div>
      <!--
      <h2>系统赠送您，体验课程</h2>
      <dl>
        <dt><a href=""><img src="image/nimg100.jpg"/></a></dt>
        <dd>
          课程名称：于鹏普拉提课程<br />
          店　　铺：于鹏普拉提课程<br />
          地　　址：北京市朝阳区甘露园19号
        </dd>
      </dl>
      <a href="" class="btn">领 取</a>
      -->
</div>
<!--walEnd-->
</div>
<div class="h20"></div>
<script>
function jump() {
	window.location.href="${ctx}/kailian/KlShoppingShoppingcartproduct/userindex.do";
}
setTimeout("jump();", 5000);
</script>
</c:if>

<c:if test="${map.order.status eq -20}">
<div class="wal">
<!--wal-->
<div class="sucPayment">
      <div class="msg"><img src="${ctx}/image/limg60.gif"/>支付失败，点击链接再次支付，<a href="${ctx}/kailian/KlShoppingShoppingcartproduct/userindex.do">点击跳转 >>></a></div>
</div>
<!--walEnd-->
</div>
<div class="h20"></div>
</c:if>

<%@ include file="/page/kailiantail.jsp" %>

</body>
</html>