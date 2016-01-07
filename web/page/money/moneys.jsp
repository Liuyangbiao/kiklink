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
<title>提现申请${my:config('title后缀','--开练网')}</title>
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
      <div class="memberTitle"><h1>资金管理</h1>
          <div class="tab">
              <ul>
                <li class="liNow">收入统计</li>
                <li>提现统计</li>
              </ul>
          </div>
      </div>
      <div class="pageBox tabContentDiv">
      <!--pageBox-->
      <div class="tabContent">
      	<!-- 
            <div class="fundsForm">
                  <ul>
                    <li><input type="text" class="input1" value="开始时间" onClick="WdatePicker()" /></li>
                    <li>至</li>
                    <li><input type="text" class="input1" value="结束时间" onClick="WdatePicker()" /></li>
                    <li class="liBtn"><input type="button" class="btn1" value="" /></li>
                  </ul>
            </div>
             -->
            <div class="fundsMsg">
            全部收入：<b class="red">${map.allincome}</b>元，已经提现 <b class="red">${map.gotincome}</b>元，还有 <b class="red">${map.allincome-map.gotincome}</b>元 可以提现。　<a href="${ctx}/kailian/KlShoppingGetmoney/premoney.do" class="btn">申请提现</a>
            </div>
            <div class="Orders">
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
               <tr>
                 <th width="133">订单号</th>
                 <th width="130">成交项目</th>
                 <th width="129">购买时间</th>
                 <th width="129">资金来源</th>
                 <th width="130">金额</th>
                 <th>状态</th>
               </tr>
              
 			<c:forEach var="v" items="${map.orders.result}">
               <tr>
                 <td>${v.id}</td>
                 <td>${v.productName}</td>
                 <td>${my:transDate(v.createtimelong)}</td>
                 <td>${v.ext1}</td>
                 <td>${v.price}</td>
                 <td>
					<c:choose>
						<c:when test="${v.status eq 50}">已提现</c:when>
						<c:otherwise>
							<a href="#">未提</a>
						</c:otherwise>
					</c:choose>
				</td>
               </tr>
             </c:forEach>
            </table>
            </div>
      </div>
      <div class="tabContent">
      	<!-- 
            <div class="fundsForm">
                  <ul>
                    <li><input type="text" class="input1" value="开始时间" onClick="WdatePicker()" /></li>
                    <li>至</li>
                    <li><input type="text" class="input1" value="结束时间" onClick="WdatePicker()" /></li>
                    <li class="liBtn"><input type="button" class="btn1" value="" /></li>
                  </ul>
            </div>
             -->
            <div class="Orders">
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
               <tr>
                 <th width="155">申请时间</th>
                 <th width="155">付款时间</th>
                 <th width="155">支付状态</th>
                 <th width="155">支付方式</th>
                 <th>支付金额</th>
               </tr>
               
 <c:forEach var="v" items="${map.moneys.result}">
               <tr>
                 <td>${my:transDate(v.createtimelong)}</td>
                 <td>
                 	<c:choose>
                 		<c:when test="${v.paytimelong le 0}">
                 			&nbsp;
                 		</c:when>
                 		<c:otherwise>
                 			${my:transDate(v.paytimelong)}
                 		</c:otherwise>
                 	</c:choose>
                 </td>
                 <td>
					<c:choose>
                 		<c:when test="${v.status eq 1}">
                 			成功
                 		</c:when>
                 		<c:when test="${v.status eq 0}">
                 			等待
                 		</c:when>
          
                 	</c:choose>
				</td>
                 <td>支付宝</td>
                 <td>${v.money}</td>
               </tr>
             </c:forEach>  
             
               <tr>
                 <td>2014-2-11</td>
                 <td>2014-3-11</td>
                 <td>成功</td>
                 <td>支付宝</td>
                 <td>200</td>
               </tr>
            </table>
            </div>
      </div>
      <!--pageBoxEnd-->
       ${my:drawpage(map.moneys, pageContext.request,  null)}
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

</html>