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
<title>等待支付${my:config('title后缀','--开练网')}</title>
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


<div class="payment">
订单提交成功，请您尽快付款！      订单号：<b>${map.order.id}</b>     
<c:if test = "${map.isCard ne true }">
您的帐户余额是：<b><c:if test="${map.user.moneyleft ne null }">${map.user.moneyleft }元</c:if><c:if test="${map.user.moneyleft eq null }">0元</c:if></b>
</c:if>
&nbsp;&nbsp;&nbsp;应付金额：<b id="price"> 元</b><br />
请您在提交订单后24小时内完成支付，否则订单会自动取消。
</div>
<div class="h25"></div>
<div class="wal">
<!--wal-->
<div class="paymentList">
	 <c:if test = "${map.isCard ne true }">
		 <c:if test="${map.order.finalPrice gt map.user.moneyleft }">
	     	<div class="title"><input type="radio" class="radio" checked="true" /><img src="${ctx}/image/nimg95.jpg"/></div>
	     </c:if>
	 </c:if>
	 <c:if test = "${map.isCard eq true }">
     	<div class="title"><input type="radio" class="radio" checked="true" /><img src="${ctx}/image/nimg95.jpg"/></div>
	 </c:if>
     <!--
     <h2>网银支付</h2>
     <div class="list">
        <ul>
          <li class="liNow"><input type="radio" class="radio" checked="checked" /><img src="${ctx}/image/nimg190_1.jpg"/> </li>
          <li><input type="radio" class="radio" /><img src="${ctx}/image/nimg190_2.jpg"/> </li>
          <li><input type="radio" class="radio" /><img src="${ctx}/image/nimg190_3.jpg"/> </li>
          <li><input type="radio" class="radio" /><img src="${ctx}/image/nimg190_4.jpg"/> </li>
          <li><input type="radio" class="radio" /><img src="${ctx}/image/nimg190_5.jpg"/> </li>
          <li><input type="radio" class="radio" /><img src="${ctx}/image/nimg190_1.jpg"/> </li>
          <li><input type="radio" class="radio" /><img src="${ctx}/image/nimg190_2.jpg"/> </li>
          <li><input type="radio" class="radio" /><img src="${ctx}/image/nimg190_3.jpg"/> </li>
          <li><input type="radio" class="radio" /><img src="${ctx}/image/nimg190_4.jpg"/> </li>
          <li><input type="radio" class="radio" /><img src="${ctx}/image/nimg190_5.jpg"/> </li>
          <li><input type="radio" class="radio" /><img src="${ctx}/image/nimg190_1.jpg"/> </li>
          <li><input type="radio" class="radio" /><img src="${ctx}/image/nimg190_2.jpg"/> </li>
          <li><input type="radio" class="radio" /><img src="${ctx}/image/nimg190_3.jpg"/> </li>
          <li><input type="radio" class="radio" /><img src="${ctx}/image/nimg190_4.jpg"/> </li>
          <li><input type="radio" class="radio" /><img src="${ctx}/image/nimg190_5.jpg"/> </li>
          <li><input type="radio" class="radio" /><img src="${ctx}/image/nimg190_1.jpg"/> </li>
          <li><input type="radio" class="radio" /><img src="${ctx}/image/nimg190_2.jpg"/> </li>
          <li><input type="radio" class="radio" /><img src="${ctx}/image/nimg190_3.jpg"/> </li>
          <li><input type="radio" class="radio" /><img src="${ctx}/image/nimg190_4.jpg"/> </li>
          <li><input type="radio" class="radio" /><img src="${ctx}/image/nimg190_5.jpg"/> </li>
          <li><input type="radio" class="radio" /><img src="${ctx}/image/nimg190_1.jpg"/> </li>
          <li><input type="radio" class="radio" /><img src="${ctx}/image/nimg190_2.jpg"/> </li>
          <li><input type="radio" class="radio" /><img src="${ctx}/image/nimg190_3.jpg"/> </li>
          <li><input type="radio" class="radio" /><img src="${ctx}/image/nimg190_4.jpg"/> </li>
        </ul>
        <span class="clear_f"></span>
     </div>
     <div class="btn"><a href="${ctx}/kailian/KlShoppingShoppingcartproduct/payOver.do?orderid=${map.order.id}&status=20"><span>下一步</span></a></div>
     -->
     <div class="btn"><a href="#" onclick="$('#aliform').submit();"><span>下一步</span></a></div>
</div>
<!--walEnd-->
</div>
<div class="h20"></div>

 <form id="aliform" name="alipayment" action="${ctx}/alipayapi.jsp" method=post target="_self">
						<input size="30" type="hidden" name="WIDseller_email" value="pay@kiklink.com" />
						<input size="30" type="hidden" name="WIDout_trade_no" value="${map.order.id}" />
						<input size="30" type="hidden" name="WIDsubject" value="kiklink product" />
						<input size="30" type="hidden" name="WIDtotal_fee" value="" />
						<input size="30" type="hidden" name="WIDbody" value="kiklink product" />
						<input size="30" type="hidden" name="WIDshow_url" value="http://www.kiklink.com" />
		</form>
						<input size="30" type="hidden" name="price" value="${map.order.finalPrice}" />
						<input size="30" type="hidden" name="ye" value="${map.user.moneyleft}" />


<%@ include file="/page/kailiantail.jsp" %>
<script>
function jump() {
	alert("会话超时！重新登录");
	window.location.href="${ctx}/kailian/CmsUserInfo/logout.do";
}
$(function(){
	var id = ${map.order.id};
	if(!${map.isCard}){//非开练卡
		var pri = $("input[name=price]").val();
		var ye = $("input[name=ye]").val();
		if(parseFloat(pri) > parseFloat(ye)){//付款大于余额
			var price = parseFloat(pri) - parseFloat(ye);
			$("input[name=WIDtotal_fee]").val(price);
			$("#price").text(price + "元");
		} else {//付款小于等于余额
			var price = pri;
			$("#price").text(price + "元");
			$("input[name=WIDtotal_fee]").val(price);
			$("#aliform").attr("action", "${ctx}/kailian/KlShoppingShoppingcartproduct/payOverByLocal.do?orderId="+id);
		}
	} else {//开练卡
		var price = $("input[name=price]").val();
		$("#price").text(price + "元");
		$("input[name=WIDtotal_fee]").val($("input[name=price]").val());
	}
});
$(".btn").find("a").click(function(){
	
	$("#aliform").submit();
});
</script>
</body>
</html>