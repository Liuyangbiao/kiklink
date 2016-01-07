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
<title>订单列表${my:config('title后缀','--开练网')}</title>
<meta name="keywords" content="${my:config('关键词','开练网')}" /> 
<meta name="description" content="${my:config('metadata','开练网')}" /><link rel="shortcut icon" href="${ctx}/favicon.ico" /> 
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/member.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery-1.7.1.min.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/js.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/fun.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/form.js"></script>
<!--[if lte IE 6]>
<script src="script/png.js" type="text/javascript"></script>
    <script type="text/javascript">
        DD_belatedPNG.fix('div, ul, img, li, input , a');
    </script>
<![endif]--> 
</head>

<body>
<div class="selectLayer">
  <ul></ul>
</div>
<%@ include file="/page/kailianheader.jsp" %>


<div class="h25"></div>
<div class="w993">
<!--wal-->
<%@ include file="/page/centerleft.jsp" %>


<div class="fr w791">
      <div class="memberTitle"><h1>订单管理</h1></div>
      <div class="pageBox Orders">
     
      <table width="100%" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <th width="120">订单号</th>
            <th width="170">订单信息</th>
            <th width="100">订单价格</th>
            <th width="150">时间</th>
            <th width="90">
            <div class="selectDiv1"><span></span>
             <form id="form1" action="${ctx}/kailian/KlShoppingOrder/userorders.do" method="post">
                  <select name="status" id="status" onchange="$('#form1').submit();">
                  <option value="-1">订单状态</option>
                  <option value="10">未支付</option>
                  <option value="20">已支付</option>
                  <option value="30">已完成</option>
                  <option value="-10">已结束</option>
                  <option value="-20">支付失败</option>
                  <option value="-30">已关闭</option>
                  </select>
               </form>
            </div>
            </th>
            <th class="th_01">操作</th>
          </tr>
          
          
          <c:forEach var="v" items="${map.page.result}" >
          <c:if test="${v.status ne null and v.status ne 0}">
          <tr>
              <td>${v.id}</td>
              <c:if test="${v.extInt4 ne null}">
              <td>共${v.extInt4}个课程</td>
              </c:if>
              <c:if test="${v.extInt4 eq null}">
              <td>开练卡不包含课程信息</td>
              </c:if>
              <td>${v.price}元</td>
              <td>${my:transDate(v.createtimelong)}</td>
              <td><span class="">
              	<c:choose>
              	
              		<c:when test="${v.status eq 10}">未支付</c:when>
              		<c:when test="${v.status eq 20}">已支付</c:when>
              		<c:when test="${v.status eq 30}">已完成</c:when>
              		<c:when test="${v.status eq -10}">已结束</c:when>
              		<c:when test="${v.status eq -20}">支付失败</c:when>
              		<c:when test="${v.status eq -30}">已关闭</c:when>
              		<c:otherwise>
              			未知状态
              		</c:otherwise>
              	</c:choose>
              </span></td>
              <td align="left" style="text-align:left;">
              <c:if test="${v.extInt4 ne null}">
              <a href="${ctx}/kailian/KlShoppingShoppingcartproduct/userorderdetail.do?orderid=${v.id}">查看</a>
              </c:if>
<%--              	<a href="${ctx}/kailian/KlShoppingShoppingcartproduct/userorderdetail.do?orderid=${v.id}">查看</a>--%>
              	<c:if test="${v.status eq 10 or v.status eq -20}">
              		<a href="${ctx}/kailian/KlShoppingShoppingcartproduct/waitpay2.do?orderid=${v.id}">支付</a>
              		&nbsp;
              		<a href="${ctx}/kailian/KlShoppingOrder/del.do?id=${v.id}">删除</a>
              	</c:if>
              	<!-- 
              	<c:if test="${v.status eq 10 or v.status eq -20}">
				
					<a href="${ctx}/kailian/KlShoppingOrder/updateStatus.do?id=${v.id}&status=-30" target="_blank">关闭交易</a>
				</c:if>
				 -->
              	<!-- 
              	<a href="">还要买</a>
              	 
              	<a href="${ctx}/kailian/KlShoppingShoppingcartproduct/payOver.do?orderid=${v.id}&status=20" target="_blank">ok</a>
              	<a href="${ctx}/kailian/KlShoppingShoppingcartproduct/payOver.do?orderid=${v.id}&status=-20" target="_blank">fail</a>
              	-->

              	
              </td>
            </tr>
            </c:if>
           </c:forEach>
          
           
      </table>
      ${my:drawpage(map.page, pageContext.request,  null)}
      </div>
</div>
<span class="clear_f"></span>
<!--walEnd-->
</div>
<div class="h20"></div>
<%@ include file="/page/kailiantail.jsp" %>
</body>
<script>
	$(function(){

		$("#status").find("option[value='${param.status}']").attr("selected",true);
	})
	
</script>
</html>