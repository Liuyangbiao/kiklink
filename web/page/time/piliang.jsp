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
<title>批量设置时间${my:config('title后缀','--开练网')}</title>
<meta name="keywords" content="${my:config('关键词','开练网')}" /> 
<meta name="description" content="${my:config('metadata','开练网')}" /><link rel="shortcut icon" href="${ctx}/favicon.ico" /> 
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/businesses.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/member2.css" rel="stylesheet" type="text/css" />

<script language="javascript" type="text/javascript" src="${ctx}/script/jquery-1.7.1.min.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/js.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/fun.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/form.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/comment.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/date/My97DatePicker/WdatePicker.js"></script>
<!--[if lte IE 6]>
<script src="script/png.js" type="text/javascript"></script>
    <script type="text/javascript">
        DD_belatedPNG.fix('div, ul, img, li, input , a');
    </script>
<![endif]--> 
<script>
	var host3 = "${ctx}";
</script> 
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
      <div class="memberTitle"><h1>批量设置可预约时间</h1><a href="javascript:;" class="sellerPart2Btn">批量设置</a></div>

      <div class="pageBox">
      <!--pageBox-->
      <div class="Orders">
      <table width="100%" border="0" cellpadding="0" cellspacing="0">
         <tr>
           <th width="89"><a href="${ctx}/kailian/KlSellerProduct/classes.do?sort=id desc">编号</a></th>
          <th width="100"><a href="${ctx}/kailian/KlSellerProduct/classes.do?sort=ext2">课程名</a></th>
           <th width="105"><a href="${ctx}/kailian/KlSellerProduct/classes.do?sort=name">日期区间</a></th>
           
           <th width="157"><a href="${ctx}/kailian/KlSellerProduct/classes.do?sort=id desc">周期</a></th>
           <th width="120"><a href="${ctx}/kailian/KlSellerProduct/classes.do?sort=classCount">时间</a></th>
           <th width="71"><a href="${ctx}/kailian/KlSellerProduct/classes.do?sort=price">操作</a></th>

         </tr>
   
         <c:forEach var="v" items="${map.page.result}">
         <tr>
         	<td>
         		${v.id}	
         	</td>
         	<td>
         		${my:maxleng(v.ext2,10)}
         	</td>
         	<td>
         		${v.datefrom}到${v.dateto}
         	</td>
         	<td>
         		<c:set value="${fn:split(v.weekdays,',')}" var="wds" />
         		<c:forEach var="wd" items="${wds}">
         			<c:choose>
         				<c:when test="${wd eq '7'}">
         					周日&nbsp;
         				</c:when>
         				<c:otherwise>
         					周${wd}&nbsp;
         				</c:otherwise>
         			</c:choose>		
         		</c:forEach>		
         	</td>
         	<td>
         		<fmt:formatNumber value="${(v.timefrom-v.timefrom%100)/100}" type="number"/>:
         		<c:choose>
         			<c:when test="${v.timefrom%100 eq 0}">:00</c:when>
         			<c:otherwise>:30</c:otherwise>
         		</c:choose>
         		到
         		<fmt:formatNumber value="${(v.timeto-v.timeto%100)/100}" type="number"/>:
         		<c:choose>
         			<c:when test="${v.timeto%100 eq 0}">:00</c:when>
         			<c:otherwise>:30</c:otherwise>
         		</c:choose>
         	</td>
         	<td>
         		<a href="${ctx}/kailian/KlShoppingPiliangtime/piliangs.do?delid=${v.id}">删除</a>
         		
         	</td>
         </tr>  
         </c:forEach>
         
       
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

<div class="orderLayer sellerPart2Layer">
<div class="bgT"></div>
<div class="bg">
<form id="formx" action="${ctx}/kailian/KlShoppingPiliangtime/piliang.do" method="post">
      <h5>批量设置可预约时间<a href="javascript:;" class="close"></a></h5>
      <div class="form" style="height:auto;">
      
            <ul>
            	<li>
            	<em>课  程</em>
            	<select id="ext1" name="ext1">
            		<c:forEach var="v" items="${map.products}">
            			<option value="${v.id}">${my:maxleng(v.name, 30)}</option>
            		</c:forEach>
            	</select>
            	</li>
              <li>
              	<em>日  期</em>
              	&nbsp;&nbsp;
              	<input class="datefrom" id="datefroms" name="datefroms" type="text" id="d28" onClick="WdatePicker({dateFmt:'yyyy/MM/dd'})" style="width:80px;" placeholder="开始日期" />
              	到&nbsp;&nbsp;
              	<input class="dateto" id="datetos" name="datetos" type="text" id="d28" style="width:80px;" onClick="WdatePicker({dateFmt:'yyyy/MM/dd'})" placeholder="结束日期" />
              	&nbsp;&nbsp;
              	<input id="quanri" type="checkbox" onclick="allday();" />全周
              </li>
              <li>
              	<c:forEach var="v" begin="1" end="7">
              		<c:if test="${v ne 7}">
              			<input name="weekdays" type="checkbox" class="timeday" value="${v}" />星期${v}
              		</c:if>
              		<c:if test="${v eq 7}">
              			<input name="weekdays" type="checkbox" class="timeday" value="${v}" />星期日
              		</c:if>
              	</c:forEach>
              </li>
              <li><em>时间段</em>
              	<select name="timefrom" id="timefrom">
              	<c:forEach var="v" begin="0" end="23">
              		<option value="${v * 100}">${v}:00</option>
              		<option value="${v * 100 + 30}">${v}:30</option>
              	</c:forEach>
              	</select><em>到</em><select name="timeto" id="timeto">
				<c:forEach var="v" begin="0" end="23">
              		
              		<option value="${v * 100 + 30}">${v}:30</option>
              		<option value="${v * 100 + 100}">${v+1}:00</option>
              	</c:forEach>
				</select></li>
            </ul>
           
      </div>
      <!-- 
      <div class="btnDiv1"><a href="" class="btn">添加更多天</a></div>
      
      <div class="inputDiv"><input name="canuse" type="radio" value="1" checked="" />可用时间　　<input name="canuse" type="radio" value="0" />不可用时间</div>
       -->
      <div class="btnDiv"><input style="cursor:pointer;" type="submit" value="发 布" /></div>
      </form>
</div>
<div class="bgB"></div>
</div>



<%@ include file="/page/kailiantail.jsp" %>

</body>
<script>
	
//批量设置时间	
function allday() {
	var ck = $('#quanri').attr('checked');
	if (ck == 'checked' || ck == true) {
		$('.timeday').attr('checked', true);
	}
	else {
		$('.timeday').attr('checked', false);
	}	
}

$('.datefrom').blur(function() {
	$('.dateto').click(function() {
		WdatePicker({dateFmt:'yyyy/MM/dd',minDate:$('.datefroms').val()})
	});
});

function submitpiliang() {
	if ($('#datefroms').val() == "" || $('#datefroms').val() == undefined || $('#datetos').val() == "" || $('#datetos').val() == undefined) 
	{
		alert("请设置开始、结束时间");
		return;
	}
	$('#formx').submit();
}

</script>
</html>