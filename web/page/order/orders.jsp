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
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery-1.7.1.min.js"></script>
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/businesses.css" rel="stylesheet" type="text/css" />
<link type="text/css" rel="stylesheet" href="${ctx }/scripts/jquery-easyui/themes/default/easyui.css">
<link type="text/css" rel="stylesheet" href="${ctx }/css/themes/icon.css">
<script type="text/javascript" src="${ctx }/scripts/jquery-easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${ctx }/scripts/locale/easyui-lang-zh_CN.js"></script>

<script language="javascript" type="text/javascript" src="${ctx}/script/js.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/fun.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/form.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/comment.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/date/My97DatePicker/WdatePicker.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery.tips.js"></script>
<script>
	var host3 = "${ctx}";
</script>
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
      <div class="memberTitle"><h1>订单管理</h1><div class="tips1">&nbsp;</div></div>
      <div class="pageBox">
      <!-- pageBox -->
      <div class="myCourse">
      <form id="form1" action="${ctx}/kailian/KlShoppingShoppingcartproduct/orders.do" method="post">
      
            <ul>
              <li><input type="text" class="input1" value="${param.ext1}" id="ext1" name="ext1" placeholder="客户" /><input type="hidden" value="" name="sort"/></li>
<%--              <li> --%>
<%--              <div class="selectDiv"><span></span>--%>
<%--              ${my:input('KlShoppingShoppingcartproduct','classType',param.classType,0,0 )}--%>
<%--              </div>--%>
<%--              </li>--%>
             <li><input type="text" id="startd" name="startd" class="input1 input2" value="${my:setvalue(param.startd,'开始时间')}" onClick="WdatePicker()" /></li>
              <li><span>至</span></li>
              <li><input type="text" id="endd" name="endd" class="input1 input2" value="${my:setvalue(param.endd,'结束时间')}" onClick="WdatePicker()" /></li>
             
              <li class="liBtn"><input type="button" onclick="subit();" class="btn1" value="搜索" /></li>
            </ul>
          </form>
      </div>
      <div class="Orders">
      <table width="100%" border="0" cellpadding="0" cellspacing="0">
             <tr>
               <th width="111">订单产品号</th>
               <th width="111">课程</th>
               <th width="101">购买用户</th>
               <!-- 
               <th width="73">单价</th>
               <th width="72">数量</th>
                -->
               <th width="71" onclick="show('perPrice*count')"><a>总价</a></th>
               <th width="102" onclick="show('createtimelong')"><a>购买时间</a></th>
               <th width="145">预约状态</th>
               <th class="th_01">操作</th>
             </tr>
             
             <c:forEach var="v" items="${map.page.result}">
             <c:if test="${v.status ne null or 1 eq 1}">
             <tr>
               <td>${v.orderid}-${v.id}</td>
               <td>
					<a tooltip="${v.productName}" class="btn easyui-tips" href="${ctx}/kailian/KlSellerProduct/index.do?id=${v.productid}" target="_blank">${my:maxleng(v.productName,6)}</a>
				</td>
               <td><a tooltip="${v.ext1},点击查看联系方式" class="btn easyui-tips" style="cursor:pointer;" onclick="showuserinfo('${v.userid}');">${v.ext1}</a></td>
               <!-- 
               <td>${v.perPrice}</td>
               <td>${v.count}</td>
                -->
               <td>${v.perPrice * v.count}</td>
               <td>${my:transDate(v.createtimelong)}</td>
               <td>
               	<c:choose>
               		<c:when test="${v.extInt4 eq -30}">
               			无需预约
               		</c:when>
               		<c:when test="${v.extInt4 eq -31}">
               			电话预约
               		</c:when>
               		<c:when test="${v.extInt4 eq 0}">
               			待确认
               			${my:coachTime(v.extInt3,v.extInt1,v.extInt2)}
               		</c:when>
               		<c:when test="${v.extInt4 eq -10}">
               			被拒绝
               			${my:coachTime(v.extInt3,v.extInt1,v.extInt2)}
               		</c:when>
               		<c:when test="${v.extInt4 eq -1 or v.extInt4 eq null}">
               			未预约
               		</c:when>
               		<c:when test="${v.extInt4 eq 1}">
               			已确认
               			${my:coachTime(v.extInt3,v.extInt1,v.extInt2)}
               		</c:when>
               		<c:when test="${v.extInt4 eq 2}">
               			已授课
               		</c:when>
               		<c:when test="${v.extInt4 eq -2}">
               			已取消待确认
               		</c:when>
					<c:when test="${v.extInt4 eq 3}">
               			已完课
               		</c:when>
					
               	</c:choose>
               </td>
               <td>
               
               	<c:choose>
               		<c:when test="${v.status ge 20}">
               		<!-- 
               			<a href="${ctx}/kailian/KlShoppingShoppingcartproduct/closebyshop.do?id=${v.id}&pageno=${param.pageno}&pageNumber=${param.pageNumber}">关闭交易</a>
               		 -->
               		<a href="javascript:;" class="orderLayer4A">投诉</a>
               		</c:when>
               		<c:when test="${v.status eq -41}">
               			关闭审核中
               		</c:when>
					<c:when test="${v.status eq -42}">
               			交易已关闭
               		</c:when>
               	</c:choose>
               		 <a href="javascript:;" class="lyLayerA" onclick="orderext(${v.productid},${v.userid},${v.orderid});">查看留言</a> 
               		&nbsp;
               </td>
             </tr>
             </c:if>
             </c:forEach>
           
<!--
             <tr>
               <td>10202023</td>
               <td>器械健身</td>
               <td>郭靖</td>
               <td>40</td>
               <td>5</td>
               <td>200</td>
               <td>2014-2-11</td>
               <td>关闭交易</td>
             </tr>
           
             <tr class="orderLayer5A">
               <td><span class="red">器械健身</span></td>
               <td><span class="red">分时课程</span></td>
               <td><span class="red">郭靖</span></td>
               <td><span class="red">20</span></td>
               <td><span class="red">3</span></td>
               <td><span class="red">60</span></td>
               <td><span class="red">2014-2-11</span></td>
               <td>关闭交易</td>
        -->
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


<div class="orderLayer orderLayer4">
<div class="bg">
     <h5>投诉/退款<a href="javascript:;" class="close"></a></h5>
     <div class="form">
         <em>输入原因：</em>
         <textarea name="content" id="content" cols="" rows=""></textarea>
     </div>
     <div class="btnDiv"><input type="button" class="btn1" value="提 交" onclick="subcomplaint();" /></div>
</div>
</div>

<div class="pageLayer lyLayer">
<div class="bgT"></div>
<div class="bg">
      <h5>用户的留言内容<a href="javascript:;" class="close"></a></h5>
      <div id="liuyan" class="content">
　　
      </div>
</div>
<div class="bgB"></div>
</div>

<div class="pageLayer pageLayer2 orderLayer5">
<div class="bgT"></div>
<div class="bg">
      <h5 style="background:none;"><a href="javascript:;" class="close"></a></h5>
      <div class="table">
          <table width="100%" cellpadding="0" cellspacing="0" border="0">
                <tr>
                  <th width="80">编号</th>
                  <th width="110">课程类型</th>
                  <th width="140">课程类型</th>
                  <th width="103">购买者</th>
                  <th width="93">课时</th>
                  <th width="80">价格</th>
                  <th>操作</th>
                </tr>
                <tr>
                  <td>10202023</td>
                  <td>器械健身</td>
                  <td>普通分时课程</td>
                  <td>郭靖</td>
                  <td>5</td>
                  <td>200</td>
                  <td><a href="">隐藏</a>　<a href="">投诉</a></td>
                </tr>
                <tr>
                  <td>10202023</td>
                  <td>器械健身</td>
                  <td>普通分时课程</td>
                  <td>郭靖</td>
                  <td>5</td>
                  <td>200</td>
                  <td><a href="">隐藏</a>　<a href="">投诉</a></td>
                </tr>
                <tr>
                  <td>10202023</td>
                  <td>器械健身</td>
                  <td>普通分时课程</td>
                  <td>郭靖</td>
                  <td>5</td>
                  <td>200</td>
                  <td><a href="">隐藏</a>　<a href="">投诉</a></td>
                </tr>
                <tr>
                  <td>10202023</td>
                  <td>器械健身</td>
                  <td>普通分时课程</td>
                  <td>郭靖</td>
                  <td>5</td>
                  <td>200</td>
                  <td><a href="">隐藏</a>　<a href="">投诉</a></td>
                </tr>
          </table>
     </div>
</div>
<div class="bgB"></div>
</div>

<%@ include file="/page/kailiantail.jsp" %>

</body>
<script>
	function subit() {
		//alert(1);
//		if ($('#name').val() == '课程名称')
//			$('#name').val('');
		if ($('#startd').val() == '开始时间')
			$('#startd').val('');
		if ($('#endd').val() == '结束时间')
			$('#endd').val('');
			
		$('#form1').submit();
	}
	function show(obj){
		$("input[name=column]").val(obj);
		$('#form1').submit();
	}
</script>
</html>