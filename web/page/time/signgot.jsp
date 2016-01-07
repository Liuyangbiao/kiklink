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
<title>签到${my:config('title后缀','--开练网')}</title>
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
<script src="${ctx}/script/png.js" type="text/javascript"></script>
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

<!--顶部end-->

<div class="h25"></div>
<div class="w993">
<!--wal-->
<%@ include file="/page/centerleft.jsp" %>

<div class="fr w791">
      <div class="memberTitle"><h1>签到管理</h1></div>
      <div class="pageBox">
      <!--pageBox-->
      <div class="myCourse">
      	<form action="${ctx}/kailian/KlShoppingCoachtime/signgot.do" method="post">
            <ul>
            
              <li><input type="text" name="orderid" id="orderid" value="${param.orderid}" class="input1 input3" placeholder="订单号" /></li>
              <li><input type="text" name="ext1" id="ext1" value="${param.ext1}" class="input1 input4" placeholder="购买者" /></li>
              <li class="liBtn"><input type="submit" class="btn1" value="搜索" /></li>
            </ul>
          </form>
      </div>
      <div class="Orders">
      <table width="100%" border="0" cellpadding="0" cellspacing="0">
             <tr>
               <th width="111">订单号</th>
               <th width="111">课程类型</th>
               <th width="101">购买用户</th>
               <th width="73">单价</th>
               <th width="72">购买时间</th>
               <th width="71">总价</th>
               <th width="102">预约时间</th>
               <th class="th_01">操作</th>
             </tr>
             
             <c:forEach var="v" items="${map.page.result}">
             <tr>
               <td>${v.orderid}</td>
               <td>
					${my:showcont('KlShoppingShoppingcartproduct','classType',v.classType,0)}
				</td>
               <td>${v.ext1}</td>
               <td>${v.perPrice}</td>
               <td>${my:transDate(v.createtimelong)}</td>
               <td>${v.price}</td>
               <td>${my:coachTime(v.extInt3,v.extInt1,v.extInt2)}</td>
               <td><a href="javascript:;" onclick="draw1(${v.id},'${v.progress}', ${v.count});" class="signInA">签到</a></td>
             </tr>
             </c:forEach>
             <tr>
             	<td colspan=8>
             		${my:drawpage(map.page, pageContext.request,  null)}
             	</td>
             </tr>
             <!-- 
             <tr>
               <td>10202023</td>
               <td>器械健身</td>
               <td>郭靖</td>
               <td>40</td>
               <td>5</td>
               <td>200</td>
               <td>2014-2-11</td>
               <td><a href="javascript:;" class="signInA">签到</a></td>
             </tr>
             -->
      </table>
      </div>
      <!--pageBoxEnd-->
      </div>
</div>
<span class="clear_f"></span>
<!--walEnd-->
</div>
<div class="h20"></div>

<div class="signInLayer">
<form id="form1" action="${ctx}/kailian/KlShoppingCoachtime/signgot.do">
<input type="hidden" id="opid" name="opid" value="" />
      <div class="closeDiv"><a href="javascript:;" class="close"></a></div>
      <ul>
        <li>
        <!-- 
        <input type="checkbox" class="checkbox" />签到</li>
         -->
        <li>
        <div class="selectDiv1"><span></span>
        <!-- 
        <select><option>第一课时</option></select>
         -->
        </div>
        </li>
        <li><input type="submit" class="btn1" value="签 到" /></li>
      </ul>
</form>
</div>

<div class="pageLayer lyLayer">
<div class="bgT"></div>
<div class="bg">
      <h5>用户的留言内容<a href="javascript:;" class="close"></a></h5>
      <div class="content">
　　用户留言内容文字信息，用户留言内容文字信息，用户留言内容文字信息，用户留言内容文字信息，用户留言内容文字信息，用户留言内容文字信息，用户留言内容文字信息，用户留言内容文字信息，用户留言内容文字信息，用户留言内容文字信息，用户留言内容文字信息。
      </div>
</div>
<div class="bgB"></div>
</div>

<script>
	function draw1(opid,start, count) {
		$('#opid').val(opid);
		
		 if (start == null || start == "" )
		 	start = 1;
		
		 var cont = "<select id='keshi' name='keshi'>";
		
		 for (var i = start; i <= count; i ++) {
		 	cont += "<option value='" + i + "'>第" + i + "课时</option>";
		 }
		// alert(start	);
		
		 cont += "</select>";
		 //$('.selectDiv1').html(cont);
		
	}	
</script>
<!--底部start-->
<%@ include file="/page/kailiantail.jsp" %>

</body>
</html>