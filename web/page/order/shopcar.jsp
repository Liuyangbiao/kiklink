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
<title>购物车${my:config('title后缀','--开练网')}</title>
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
.shopCart div table tr td {
	padding-top:20px;
} 
</style>
</head>

<body>
<div class="selectLayer">
  <ul></ul>
</div>
<%@ include file="/page/kailianheader.jsp" %>

<form id="form1" action="${ctx}/kailian/KlShoppingShoppingcartproduct/waitpay.do" method="post">
<input id="orderid" name="orderid" type="hidden" value="${map.order.id}" />
<!-- 
<div class="sideBar">
      <ul>
        <li><a href="#"></a></li>
        <li><a href="#"></a></li>
        <li><a href="#"></a></li>
      </ul>
</div>
 -->
<div class="pageStep"><img src="${ctx}/image/nimg804.jpg"/></div>
<div class="wal">
<!--wal-->
<h2 class="shopCartTitle">确认订单信息</h2>
<div class="shopCart">
     <div class="table">
     <form id="formx1" method="post" action="${ctx}/kailian/KlShoppingShoppingcartproduct/shopCar.do">
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
           <tr>
             <th width="80">.</th>
             <th width="90">购买服务</th>
             <th width="110">店铺名称</th>
             <th width="74">地点</th>
             <th width="107">课程类型</th>
             <th width="104">课时</th>
             <th width="115">单价</th>
             <th width="115">数量</th>
             <th width="93">价格</th>
             <th class="th_01" style="width:50px;">操作</th>
           </tr>
         <c:forEach var="p" items="${map.products}" varStatus="st">
           <tr>
             <td><input onclick="countMoney()" id="thedid${st.index}" name="delids" value="${p.id}" class="checkbox checkbox1 delids" type="checkbox" checked="checked" /></td>
             <td>${p.productName}</td>
             <td>${p.shopName}</td>
             <td>${p.city}</td>
             <td>单次卡</td>
             <td>${p.classCount}课时</td>
             <td><b>￥${p.perPrice}</b></td>
             <td>
             
             <div class="inputDiv numInput" style="position:relative;">
             
             <span class="jianBtn" onmouseup="ar[${st.index}] = [${p.perPrice}, (parseInt($('#countt${st.index}').val())-1)];countMoney();" style="cursor:pointer;border:0px solid blue;position:absolute;left:1px;width:15px;height:20px;"></span>
             <input type="text" onkeydown="jianQian(this)" onkeyup="calPri(this, true);" id="countt${st.index}" name="name${p.id}" pri="${p.perPrice }" value="${p.count}" style="margin-left:15px;border:0px solid green;" />
             <span class="jiaBtn" onmouseup="ar[${st.index}] = [${p.perPrice}, (parseInt($('#countt${st.index}').val())+1)];countMoney();" style="cursor:pointer;border:0px solid blue;position:absolute;left:45px;width:15px;height:20px;">&nbsp;&nbsp;&nbsp;</span>
             </div>
             
             </td>
             <td><b id="price${st.index}">${p.perPrice * p.count}</b></td>
             <td><a href="${ctx}/kailian/KlShoppingShoppingcartproduct/shopCar.do?delids=${p.id}" class="del">【删除】</a></td>
           </tr>
         </c:forEach>

        </table>
        </form>
     </div>
     <div class="msg"><input checked='checked' onclick="var ck = $(this).attr('checked')== 'checked' ?'checked':false;$('.checkbox1').attr('checked',ck);countMoney();" class="checkbox" type="checkbox"/>
     全选<a onclick="aa();$('#formx1').submit();" class="red">删除</a>
     </div>
<%--     <div class="msg1"><input class="checkbox" type="checkbox"/>开练卡</div>--%>
     <div class="price">
          <ul>
            <li>服务价格：<font id="money1">2000</font>元</li>
            <li>优惠价格：0元</li>
            <li>实付金额：<b id="money2">5980</b>元</li>
          </ul>
     </div>

     <div class="shopCart_03">
           <span>额外要求：</span>
           <textarea name="ext2" class="" cols="" rows=""></textarea>
           <div class="btnDiv">
                <a onclick="if (tcount <= 0) alert('请选择您要购买的课程'); else $('#form1').submit();" class="btn2" style="cursor:pointer;">去结算</a>
                <a href="${ctx}/kailian/KlSellerProduct/search.do" class="btn2 btn3">继续购物</a>
           </div>
     </div>
</div>
<div class="h15"></div>
<div class="shopCartList">
     <h2>购买该商品的用户还关注了其他商品</h2>
     <a href="" class="more">更多推荐 >></a>
     <a href="javascript:;" class="leftBtn"></a>
     <a href="javascript:;" class="rightBtn"></a>
     <div class="bg">
     <div class="list">
        <ul>
        	<c:forEach var="p" items="${map.suggest}">
          <li>
             <div class="imgDiv"><a href="${ctx}/kailian/KlSellerProduct/index.do?id=${p.id}" target="_blank"><img src="${ctx}/${p.photo}" style="width:159px;height:106px;"/></a></div>
             <div class="title"><a href="${ctx}/kailian/KlSellerProduct/index.do?id=${p.id}" target="_blank">${my:maxleng(p.name, 10)}</a></div>
          </li>
          	</c:forEach>
          
        </ul>
     </div>
     </div>
</div>
</form>
<!--walEnd-->
</div>
<div class="h20"></div>

<%@ include file="/page/kailiantail.jsp" %>
<script>
	var ar = [];
	var tcount = 0;
	var init1;
	<c:forEach var="p" items="${map.products}">
		ar[ar.length] = [${p.perPrice}, ${p.count}];
	</c:forEach>
	
	function countMoney() {
		tcount = 0;
		var t = 0.0;
		
		for (var i = 0; i < ar.length; i ++) {
			$('#price' + i).html("￥" + ar[i][0] * ar[i][1]);
			var ck = $('#thedid' + i).attr("checked") == "checked" ? true : false;
			if (ck) {
				if(ar[i][1] >= 0){
					tcount ++;
					t = t + ar[i][0] * ar[i][1];
				}
			}
		}
		$('#money1').html(t);
		$('#money2').html(t);
	}
	
	$(document).ready(function(){
		countMoney();
		$('.shopCart_01').hide();
	});
	
	
	function aa() {
		var delids = "";
		$('.delids').each(function(){
			//alert($(this).attr('checked'));
			if ($(this).attr('checked') == 'checked') {
				if (delids == "")
					delids += $(this).val();
				else
					delids += "," + $(this).val();
			}
		}
		);
		
		window.location.href = "${ctx}/kailian/KlShoppingShoppingcartproduct/shopCar.do?delids=" + delids;
	}
</script>

</body>
</html>