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
<title>我的投诉${my:config('title后缀','--开练网')}</title>
<meta name="keywords" content="${my:config('关键词','开练网')}" /> 
<meta name="description" content="${my:config('metadata','开练网')}" /><link rel="shortcut icon" href="${ctx}/favicon.ico" /> 
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/businesses.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery-1.7.1.min.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/js.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/fun.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/form.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/date/My97DatePicker/WdatePicker.js"></script>
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
      <div class="memberTitle"><h1>我的投诉</h1></div>
      <div class="pageBox">
      <!--pageBox-->
      <div class="Orders">
      <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr>
           <th width="130">被投诉人</th>
           <th width="424">投诉原因</th>
           <th width="103">操作</th>
           <th class="th_01">处理意见</th>
        </tr>
        <c:forEach var="v" items="${map.page.result}">
        <tr>
           <td>${v.toUsername}</td>
           <td><div class="name_1">${v.content}</div></td>
           <td>
           <c:choose>
           		<c:when test="${v.status eq 0}">
           			<a href="${ctx}/kailian/KlShoppingComplaints/mycomps.do?did=${v.id}">删除</a>
           		</c:when>
           		<c:when test="${v.status eq 1}">
           			
           		</c:when>
           		<c:otherwise>
           		
           		</c:otherwise>
           	</c:choose>
           </td>
           <td>
           	${my:showcont('KlShoppingComplaints','status',v.status,0 )}
           </td>
           <!--
           <td><a href="javascript:;" class="myComplaintsLayerA">无</a></td>
           -->
        </tr>
        </c:forEach>
<!--
        <tr>
           <td>杨过</td>
           <td><div class="name_1">用户手脚不干净，感觉非常不好！</div></td>
           <td><a href="${ctx}/kailian/KlShoppingComplaints/mycomps.do?did=${v.id}">删除</a></td>
           <td>无</td>
        </tr>
        -->
      </table>
      </div>
      <!--pageBoxEnd-->
       ${my:drawpage(map.page, pageContext.request,  null)}
      </div>
</div>
<span class="clear_f"></span>
<!--walEnd-->
</div>
<div class="h20"></div>

<div class="pageLayer_1 myComplaintsLayer">
<div class="bgT"></div>
<div class="bg">
      <div class="content">
管理员已经是核实你的投诉信息，你可以在订单管理里面关闭交易！
      </div>
</div>
<div class="bgB"></div>
</div>

<%@ include file="/page/kailiantail.jsp" %>

</body>
</html>