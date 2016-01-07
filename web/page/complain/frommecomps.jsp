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
<title>用户投诉${my:config('title后缀','--开练网')}</title>
<meta name="keywords" content="${my:config('关键词','开练网')}" /> 
<meta name="description" content="${my:config('metadata','开练网')}" /><link rel="shortcut icon" href="${ctx}/favicon.ico" /> 
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/member.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery-1.7.1.min.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/js.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/fun.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/form.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery_scroll.js"></script>
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
      <div class="memberTitle"><h1>投诉举报</h1><a href="${ctx}/kailian/KlShoppingShoppingcartproduct/myclass.do" class="btn ComplaintLayer2A"><img src="${ctx}/image/nimg16_7.png" />我要投诉</a></div>
      <div class="pageBox">
      <!--pageBox-->
      <div class="Orders">
      <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <th width="142">违规时间</th>
          <th width="132">举报教练</th>
          <th width="327">举报原因</th>
          <th class="th_01">处理结果</th>
        </tr>
        <c:forEach var="v" items="${map.page.result}">
        <tr>
          <td>2014-2-11</td>
          <td>${v.toUsername}</td>
          <td>${v.content}</td>
          <td>
          				${my:showcont('KlShoppingComplaints','status',v.status,0 )}
          	<!-- 
          <a href="javascript:;" class="ComplaintLayerA">点击查看</a>
           --></td>
        </tr>
        </c:forEach>
      <!-- 
        <tr>
          <td>2014-2-11</td>
          <td>张三</td>
          <td>上课期间教练总是接电话，影响教学质量。</td>
          <td><a href="javascript:;" class="ComplaintLayerA">点击查看</a></td>
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

<div class="orderLayer ComplaintLayer">
<div class="bgT"></div>
<div class="bg">
      <h5>处理意见<a href="javascript:;" class="close"></a></h5>
      <div class="content">
       经确认，您反应的问题属实，我们已经对教练进行警告处理，再有此类事情发生，可全额退款！请放心！
      </div>
</div>
<div class="bgB"></div>
</div>

<div class="orderLayer ComplaintLayer2">
<div class="bgT"></div>
<div class="bg">
      <h5>处理意见<a href="javascript:;" class="close"></a></h5>
      <div class="list">
          <ul>
            <li>
               <em>投诉教练：</em>
               <input type="text" class="input1" />
               <a href="javascript;" class="btn trainLayer2A"><img src="${ctx}/image/lico2.png" /></a>
            </li>
            <li class="li_01">
               <em>投诉事因：</em>
               <textarea name="" cols="" rows=""></textarea>
            </li>
            <li><input type="button" class="btn1" value="发布投诉" /></li>
          </ul>
      </div>

</div>
<div class="bgB"></div>
</div>


<%@ include file="/page/kailiantail.jsp" %>

</body>
</html>