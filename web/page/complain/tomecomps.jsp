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
<title>投诉列表${my:config('title后缀','--开练网')}</title>
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
      <div class="memberTitle"><h1>投诉举报</h1></div>
      <div class="pageBox">
      <!--pageBox-->
      <div class="Orders">
      <table width="100%" border="0" cellpadding="0" cellspacing="0">
         <tr>
           <th width="113">投诉时间</th>
           <th width="115">投诉用户</th>
           <th width="130">投诉课程</th>
           <th width="299">投诉原因</th>
           <th class="th_01">处理意见</th>
         </tr>
        <c:forEach var="v" items="${map.page.result}">
         
         <tr>
           <td>${my:transDate(v.createtimelong)}</td>
           <td>${v.ext1}</td>
           <td>课程名称</td>
           <td>${v.content}</td>
           <td><a href="javascript:;" class="ComplaintLayerA">点击申诉</a></td>
         </tr>
		</c:forEach>
        <tr>
           <td>2014-03-30</td>
           <td>1123@163.com</td>
           <td>瑜伽课程</td>
           <td>用户手脚不干净，感觉非常不好！</td>
           <td><a href="javascript:;" class="ComplaintLayerA">点击申诉</a></td>
         </tr>
        
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
      <h5>申诉<a href="javascript:;" class="close"></a></h5>
      <div class="content">
      请将申诉原因电子邮件到：SERVICE@KAILIAN163.COM,我们将及时处理
      </div>
</div>
<div class="bgB"></div>
</div>

<%@ include file="/page/kailiantail.jsp" %>

</body>
</html>