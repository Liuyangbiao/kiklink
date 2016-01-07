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
<title>课程预约${my:config('title后缀','--开练网')}</title>
<meta name="keywords" content="${my:config('关键词','开练网')}" /> 
<meta name="description" content="${my:config('metadata','开练网')}" /><link rel="shortcut icon" href="${ctx}/favicon.ico" /> 
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/member.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery-1.7.1.min.js"></script>
<link type="text/css" rel="stylesheet" href="${ctx}/scripts/jquery-easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${ctx}/scripts/jquery-easyui/themes/icon.css">
<script type="text/javascript" src="${ctx }/scripts/jquery-easyui/jquery.easyui.min.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery.tips.js"></script>

<script language="javascript" type="text/javascript" src="${ctx}/script/js.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/comment.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/fun.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/form.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery_scroll.js"></script>
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

<div class="pageTimeLayer"><div style="padding:18px 0 0 22px;"><div id="sellerPart2"></div></div></div>
<div class="pageTimeLayerBg"></div>
<script>

var host3 = "${ctx}";
/*
var date = new Date(new Date().valueOf() + 1*24*60*60*1000);
var date1 = new Date(date.valueOf() + 10 * 24 * 60*60 * 1000);
var tmp = date.getFullYear() + "-" + (date.getMonth()+1) + "-" + (date.getDate());
var tmp1 = date1.getFullYear() + "-" + (date1.getMonth()+1) + "-" + (date1.getDate());
//alert(tmp1);
WdatePicker({minDate:tmp,maxDate:tmp1,eCont:'sellerPart2',onpicked:function(dp){
	datetimestr = (dp.cal.getDateStr().replace('-','').replace('-',''));
	//alert(datetimestr);

	$('.dateLayer11').css('left',$('#sellerPart2').offset().left);
	$('.dateLayer11').css('top',$('#sellerPart2').offset().top);
	$('.dateLayer11').show();
	
	}})
*/
</script>
<div class="dateLayer11">
      <h5>上午</h5>
      <div class="list">
            <ul>
              <li><em>7</em>
                  <div id="time7"><span></span><span></span></div>
              </li>
              <li><em>8</em>
                  <div id="time8"><span></span><span></span></div>
              </li>
              <li><em>9</em>
                  <div id="time9"><span></span><span></span></div>
              </li>
              <li><em>10</em>
                  <div id="time10"><span></span><span></span></div>
              </li>
              <li><em>11</em>
                  <div id="time11"><span></span><span></span></div>
              </li>
              <li><em>12</em>
                  <div id="time12"><span></span><span></span></div>
              </li>
            </ul>
            <span class="clear_f"></span><span class="clear_f"></span>
      </div>
      <h5>下午</h5>
      <div class="list">
            <ul>
              <li><em>13</em>
                  <div id="time13"><span></span><span></span></div>
              </li>
              <li><em>14</em>
                  <div id="time14"><span></span><span></span></div>
              </li>
              <li><em>15</em>
                  <div id="time15"><span></span><span></span></div>
              </li>
              <li><em>16</em>
                  <div id="time16"><span></span><span></span></div>
              </li>
              <li><em>17</em>
                  <div id="time17"><span></span><span></span></div>
              </li>
              <li><em>18</em>
                  <div id="time18"><span></span><span></span></div>
              </li>
            </ul>
            <span class="clear_f"></span><span class="clear_f"></span>
      </div>
      <h5>晚上</h5>
      <div class="list">
            <ul>
              <li><em>19</em>
                  <div id="time19"><span></span><span></span></div>
              </li>
              <li><em>20</em>
                  <div id="time20"><span></span><span></span></div>
              </li>
              <li><em>21</em>
                  <div id="time21"><span></span><span></span></div>
              </li>
              <li><em>22</em>
                  <div id="time22"><span></span><span></span></div>
              </li>
            </ul>
            <span class="clear_f"></span>
            <a href="#" class="" style="background:#393c3d;color:#ffffff;padding:1px;margin:2px;" onclick="subtime();">确定</a>
            <a href="#" class="" style="background:#393c3d;color:#ffffff;padding:1px;margin:2px;" onclick="timeok(1,1,0);">取消</a>
      </div>
</div>

<%@ include file="/page/kailianheader.jsp" %>


<div class="h25"></div>
<div class="w993">
<!--wal-->
<%@ include file="/page/centerleft.jsp" %>

<div class="fr w791">
      <div class="memberTitle"><h1>课程预约</h1>
      <!-- 
           <div class="tips">您预约于鹏10个课时课程还未通过教练确认,1个取消预约未通过教练确认!</div>
            -->
      </div>
      <div class="pageBox">
      <!--pageBox-->
      <div class="Orders course">
      <table width="100%" border="0" cellpadding="0" cellspacing="0">
         <tr>
           <th width="220">课程名称</th>
           <th width="170">机构/教练名称</th>
           <th width="179">预约时间</th>
           <th width="90">预约码</th>
           <th class="th_01">操作</th>
         </tr> 
         <c:forEach var="v" items="${map.page.result}" varStatus="vs">
         <tr>
         <td style="text-align:left;"><a target="_blank" class="easyui-tips" tooltip="${v.productName}" alt="${v.productName}" href="${ctx}/kailian/KlSellerProduct/index.do?id=${v.productid}">
             	${my:maxleng(v.productName,17)}
             	<a/></td>
             <td style="text-align:left;">
             	<a target="_blank" class="easyui-tips" tooltip="${v.shopName}" href="${ctx}/kailian/KlSellerShop/shopindex.do?id=${v.shopid}">${my:maxleng(v.shopName,15)}</a></td>
             	<c:if test="${v.status == 15 }">
             		<td>&nbsp;</td>
           			<td>&nbsp;</td>
           			<td>
           			已退款，无法预约
           			</td>
             	</c:if>
             	<c:if test="${v.status ==20 }">
           		<c:choose>
           		<c:when test="${v.extInt4 eq -30}">
           			<td colspan=3 style="text-align:left;padding-left:10px;">
           				无需预约，验证码：${v.extInt5}${v.id}
           			</td>
           		</c:when>
           		<c:when test="${v.extInt4 eq -31}">
           			<td colspan=3 style="text-align:left;padding-left:10px;">
           				电话预约，验证码：${v.extInt5}${v.id}
           			</td>
           		</c:when>
           		<c:when test="${v.extInt4 eq 0}">
           			<td style="text-align:left;padding-left:10px;">${my:coachTime(v.extInt3,v.extInt1,v.extInt2)}&nbsp;</td>
           			<td>&nbsp;</td>
           			<td>
           			待确认<br/>
           			<a href="javascript:;" id="pageTimeLayer${vs.index}" class="pageTimeLayerA" onclick="classid1=${v.productid};shopproductid=${v.id};showyuyue('pageTimeLayer${vs.index}');">修改</a><br/>
           			<a href="${ctx}/kailian/KlShoppingCoachtime/updateStatus.do?pid=${v.id}&timestatus=-1">取消</a>
           			</td>
           		</c:when>
           		<c:when test="${v.extInt4 eq -10}">
           			<td style="text-align:left;padding-left:10px;">${my:coachTime(v.extInt3,v.extInt1,v.extInt2)}&nbsp;</td>
           			<td>&nbsp;</td>
           			<td>
           			<a class="orderLayer4A" onclick="$('#jujueyuanyin').html('${v.addition}');">被拒</a><br/>
           			<a href="javascript:;" id="pageTimeLayer${vs.index}" class="pageTimeLayerA" onclick="classid1=${v.productid};shopproductid=${v.id};showyuyue('pageTimeLayer${vs.index}');">预约</a>
           			</td>
           		</c:when>
           		<c:when test="${v.extInt4 eq -1 or v.extInt4 eq null}">
           			<td>&nbsp;</td>
           			<td>&nbsp;</td>
           			<td>
           			<a href="javascript:;" id="pageTimeLayer${vs.index}" class="pageTimeLayerA" onclick="classid1=${v.productid};shopproductid=${v.id};showyuyue('pageTimeLayer${vs.index}');">预约</a>
           			</td>
           		</c:when>
           		<c:when test="${v.extInt4 eq 1 }">
           			<td style="text-align:left;padding-left:10px;">${my:coachTime(v.extInt3,v.extInt1,v.extInt2)}&nbsp;</td>
           			<td>${v.extInt5}${v.id}</td>
           			<td>已确认<br/>
           			<a href="${ctx}/kailian/KlShoppingCoachtime/updateStatus.do?pid=${v.id}&timestatus=2000">取消</a>
           			</td>
           			
           		</c:when>
           		<c:when test="${v.extInt4 eq 2 }">
           			<td style="text-align:left;padding-left:10px;">${my:coachTime(v.extInt3,v.extInt1,v.extInt2)}&nbsp;</td>
           			<td>&nbsp;</td>
           			<td>已授课</td>
           			
           		</c:when>
           		<c:when test="${v.extInt4 eq -2 }">
           			<td>
           			&nbsp;
           			</td>
           			<td>&nbsp;</td>
           			<td>已取消待确认</td>
           		</c:when>
           		<c:when test="${v.extInt4 eq 3 }">
           			<td>
           			&nbsp;
           			</td>
           			<td>&nbsp;</td>
           			<td>已完课</td>
           		</c:when>
           		</c:choose>
             	</c:if>
         </tr>
        </c:forEach>
         <!-- 
         <tr>
           <td>于鹏普拉提课程</td>
           <td>于鹏普拉提工作室</td>
           <td><a href="javascript:;" class="timeA">3月22日上午9点-10点...</a></td>
           <td><a href="">修改</a><a href="">取消</a></td>
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

<div class="orderLayer orderLayer4">
<div class="bg">
     <h5>被拒绝<a href="javascript:;" class="close"></a></h5>
     <div class="form">
         <em>拒绝原因：</em>
         <textarea id="jujueyuanyin"></textarea>
     </div>
</div>
</div>
<%@ include file="/page/kailiantail.jsp" %>

</body>
</html>