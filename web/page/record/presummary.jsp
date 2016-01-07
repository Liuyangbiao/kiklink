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
<title>发布训练总结${my:config('title后缀','--开练网')}</title>
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
      <div class="memberTitle"><h1>训练总结</h1><a href="${ctx}/kailian/KlShoppingTrainningsummary/preshop.do" class="btn btn2">发布新训练总结</a></div>
      <div class="pageBox Orders">
      <!--pageBox-->
      <table width="100%" border="0" cellpadding="0" cellspacing="0">
         <tr>
           <th width="136">课程名称</th>
           <th width="134">课程类型</th>
           <th width="109">学员</th>
           <th width="126">授课时间</th>
           <th width="85">课时</th>
           <th width="79">费用</th>
           <th>状态</th>
         </tr>
       <c:forEach var="v" items="${map.page.result}">
         <tr>
           <td>器械健身</td>
           <td>分时课程</td>
           <td>${v.ext1}</td>
           <td>${my:transDate(v.createtimelong)}</td>
           <td>${v.count}</td>
           <td>${v.price}</td>
           <td>
           	<c:choose>
           		<c:when test="${v.hastrainsummary eq 1}">有</c:when>
           		<c:otherwise>无</c:otherwise>
           	</c:choose>
           </td>
         </tr>
        </c:forEach>
 
      </table>
      <!--pageBoxEnd-->
      ${my:drawpage(map.page, pageContext.request,  null)}
      </div>
</div>

<span class="clear_f"></span>
<!--walEnd-->
</div>
<div class="h20"></div>

<div class="pageLayer serviceLayer">
<div class="bgT"></div>
<div class="bg">
      <h5>添加教练<a href="javascript:;" class="close"></a></h5>
      <div class="form">
          <ul>
            <li>
               <em>照片：</em>
               <select name=""><option value="">请选择</option></select>
            </li>
            <li>
               <em>添加照片：</em>
               <input name="" type="text" class="input1" />
               <input name="" type="button" class="btn2" value="浏览..." />
               <input name="" type="button" class="btn2" value="上传" />
            </li>
            <li class="li_02">
               <em>照片说明：</em>
               <textarea name="" cols="" rows=""></textarea>
               <input name="" type="button" class="btn2" value="添加多张图片" />
            </li>
          </ul>
      </div>
      <div class="btnDiv"><input name="" type="button" value="添 加" /></div>
</div>
<div class="bgB"></div>
</div>



<%@ include file="/page/kailiantail.jsp" %>

</body>
</html>