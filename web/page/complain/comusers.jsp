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
<title>投诉${my:config('title后缀','--开练网')}</title>
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

<!--walEnd-->
</div>
<div class="h20"></div>

<div class="orderLayer trainLayer2">
<div class="bg">
      <h5><a href="javascript:;" class="close"></a></h5>
      <div class="form">
          <span>用户搜索</span>
          <input type="text" class="input1" />
          <input type="button" class="btn1" value="" />
      </div>
      <div class="table">
      <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <th width="15"><span style="color:#f4f4f4;">.</span></th>
          <th width="90"><div class="name_1">用户</div></th>
          <th width="140">购买课程</th>
          <th>购买时间 </th>
        </tr>
        <tr>
          <td><input class="checkbox" type="checkbox"/></td>
          <td><div class="name_1">杨过</div></td>
          <td>器械健身</td>
          <td>2014-03-31</td>
        </tr>
        <tr>
          <td><input class="checkbox" type="checkbox"/></td>
          <td><div class="name_1">杨过</div></td>
          <td>器械健身</td>
          <td>2014-03-31</td>
        </tr>
        <tr>
          <td><input class="checkbox" type="checkbox"/></td>
          <td><div class="name_1">杨过</div></td>
          <td>器械健身</td>
          <td>2014-03-31</td>
        </tr>
        <tr>
          <td><input class="checkbox" type="checkbox"/></td>
          <td><div class="name_1">杨过</div></td>
          <td>器械健身</td>
          <td>2014-03-31</td>
        </tr>
        <tr>
          <td><input class="checkbox" type="checkbox"/></td>
          <td><div class="name_1">杨过</div></td>
          <td>器械健身</td>
          <td>2014-03-31</td>
        </tr>
      </table>
      </div>
      <div class="btn"><a href="">第一页</a>|<a href="">上一页</a>|<a href="">下一页</a>|<a href="">最后一页</a></div>
</div>
</div>

<script>
	$('.trainLayer2').show();
</script>

</body>
</html>