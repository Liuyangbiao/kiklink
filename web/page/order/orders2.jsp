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
      <div class="memberTitle"><h1>课程管理 - 用户管理</h1></div>
      <div class="pageBox">
      <!--pageBox-->
      <div class="myCourse">
            <ul>
              <li><input type="text" class="input1 input3" value="用户" /></li>
              <li class="liBtn"><input type="button" class="btn1" value="搜索" /></li>
            </ul>
      </div>
      <div class="Orders">
      <table width="100%" border="0" cellpadding="0" cellspacing="0">
         <tr>
           <th width="63"><input class="checkbox" type="checkbox"/>全</th>
           <th width="78">课程信息</th>
           <th width="70">购买人</th>
           <th width="56">数量</th>
           <th width="86">购买时间</th>
           <th width="88">购买日期</th>
           <th width="89"><select name=""><option value="">状态</option></select></th>
           <th class="th_01">操作</th>
         </tr>
         <tr>
           <td><input class="checkbox" type="checkbox"/></td>
           <td>器械健身</td>
           <td>郭靖</td>
           <td>2</td>
           <td>2014-2-22</td>
           <td>2014-5-22</td>
           <td>活跃用户</td>
           <td><a href="javascript:;" class="orderLayer1A">完课确认</a><a href="">短消息</a><a href="javascript:;" class="orderLayer4A">投诉</a><a href="javascript:;" class="jjjyLayerA">拒绝交易</a></td>
         </tr>
          <tr>
           <td><input class="checkbox" type="checkbox"/></td>
           <td>器械健身</td>
           <td>郭靖</td>
           <td>2</td>
           <td>2014-2-22</td>
           <td>2014-5-22</td>
           <td>活跃用户</td>
           <td><a href="javascript:;" class="orderLayer1A">完课确认</a><a href="">短消息</a><a href="javascript:;" class="orderLayer4A">投诉</a><a href="javascript:;" class="jjjyLayerA">拒绝交易</a></td>
         </tr>
         <c:forEach var="v" items="${map.page.result}">
         <tr>
           <td><input class="checkbox" type="checkbox"/></td>
           <td>
				<c:choose>
						<c:when test="v.classType eq 1">
							器械健身
						</c:when>
						<c:otherwise>
							其他
						</c:otherwise>
					</c:choose>
			</td>
           <td>${v.ext1}</td>
           <td>2</td>
           <td>${my:transDate(v.createtimelong)}</td>
           <td>2014-5-22</td>
           <td>活跃用户</td>
           <td><a href="javascript:;" class="orderLayer1A">完课确认</a><a href="">短消息</a><a href="javascript:;" class="orderLayer4A">投诉</a><a href="javascript:;" class="jjjyLayerA">拒绝交易</a></td>
         </tr>
         </c:forEach>
         <tr>
           <td><input class="checkbox" type="checkbox"/></td>
           <td>器械健身</td>
           <td>郭靖</td>
           <td>2</td>
           <td>2014-2-22</td>
           <td>2014-5-22</td>
           <td>未上课</td>
           <td><a href="javascript:;" class="orderLayer1A">完课确认</a><a href="">短消息</a><a href="javascript:;" class="orderLayer4A">投诉</a><a href="javascript:;" class="jjjyLayerA">拒绝交易</a></td>
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

<div class="pageLayer jjjyLayer">
<div class="bgT"></div>
<div class="bg">
      <h5>拒绝交易<a href="javascript:;" class="close"></a></h5>
      <div class="form2">
            <div class="msg">关闭交易：订单将取消，已收费用需退回给消费者，请慎重考虑。</div>
            <ul>
              <li><em>请输入关闭交易的原因：</em><textarea name="" cols="" rows=""></textarea></li>
              <li><input type="button" class="btn1" value="保 存" /><input type="button" class="btn1 btn2" value="修 改" /></li>
            </ul>
      </div>
</div>
<div class="bgB"></div>
</div>
<!---->
<div class="orderLayer orderLayer1">
<div class="bg">
     <h5>完课确认<a href="javascript:;" class="close"></a></h5>
     <div class="content">
     张三教练与2014-2-22日发来初级游泳的培训确认，<br />
您已经进行到"第三课时"了。
<br /><br />
如果没有异议请确认，若有异议请投诉！
     </div>
     <div class="btnDiv"><a href="">确 认</a></div>
     <div class="msg">如收到完课确认10天内未能评价，系统默认为中评并确认完课!</div>
</div>
</div>
<!---->
<div class="orderLayer orderLayer4">
<div class="bg">
     <h5>投诉<a href="javascript:;" class="close"></a></h5>
     <div class="form">
         <em>投诉原因：</em>
         <textarea name="" cols="" rows=""></textarea>
     </div>
     <div class="btnDiv"><input type="button" class="btn1" value="提 交" /></div>
</div>
</div>


<%@ include file="/page/kailiantail.jsp" %>

</body>
</html>