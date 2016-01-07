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
<title>预约码${my:config('title后缀','--开练网')}</title>
<meta name="keywords" content="${my:config('关键词','开练网')}" /> 
<meta name="description" content="${my:config('metadata','开练网')}" /><link rel="shortcut icon" href="${ctx}/favicon.ico" /> 
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/businesses.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="${ctx}/kindeditornew/themes/default/default.css" />
<script src="${ctx}/kindeditornew/kindeditor.js"></script>
<script src="${ctx}/kindeditornew/lang/zh_CN.js"></script>
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

	
      <div class="memberTitle"><h1>预约码</h1></div>
      <div class="pageBox pageForm">
      <!--pageBox-->
      <ul>
      	<form method="post" action="${ctx}/kailian/KlShoppingShoppingcartproduct/yuyuema.do">
         <li><em>输入预约码</em>
             <div class="input1 input2"><input id="yuyuema" name="yuyuema" value="${param.yuyuema}" type="text"/></div>
         </li>
         <li><input type="submit" class="btn1" value="查询" /></li>
         </form>
         
         <c:if test="${map.p eq null and param.yuyuema ne null}">
         	<li>预约码无效</li>
         </c:if>
         <form method="post" action="${ctx}/kailian/KlShoppingShoppingcartproduct/yuyuema.do">
         <input id="yuyuema" name="yuyuema" value="${param.yuyuema}" type="hidden"/>
         <c:if test="${map.p ne null and map.done eq null}">
         <li>
         	用户：${map.p.ext1}<br/>
         	课程：${map.p.productName}<br/>
         	<c:if test="${map.p.extInt4 ne -30}">
         		时间：${my:coachTime(map.p.extInt3,map.p.extInt1,map.p.extInt2)}<br/>
         	</c:if>
         	<input type="hidden" name="pid" value="${map.p.id}" />
         	<li><input type="submit" class="btn1" value="确认完课" /></li>
         </li>	
         </c:if>
         <c:if test="${map.p ne null}">
         	<li>${map.word}</li>
         </c:if>
         </form>
      </ul>
      <!--pageBoxEnd-->
      </div>
   </form>
</div>
<span class="clear_f"></span>
<!--walEnd-->
</div>
<div class="h20"></div>

<%@ include file="/page/searchuser.jsp" %>

<%@ include file="/page/kailiantail.jsp" %>
<script>



			
</script>
</body>
</html>

