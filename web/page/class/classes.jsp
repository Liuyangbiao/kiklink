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
<title>课程列表${my:config('title后缀','--开练网')}</title>
<meta name="keywords" content="${my:config('关键词','开练网')}" /> 
<meta name="description" content="${my:config('metadata','开练网')}" /><link rel="shortcut icon" href="${ctx}/favicon.ico" /> 
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/businesses.css" rel="stylesheet" type="text/css" />
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
      <div class="memberTitle"><h1>课程管理</h1></div>
      <div class="pageBox">
      <!--pageBox-->
      <div class="myCourse">
      	 <form id="form1" action="${ctx}/kailian/KlSellerProduct/classes.do" method="post">
            <ul>
              <li><input type="text" class="input1" name="name" id="name" value="${my:setvalue(param.name,'课程名称')}" /></li>
              <li> 
              <div class="selectDiv"><span>课程类型</span>
              	${my:input('KlSellerProduct','categoryid',param.categoryid,0,0 )}
              </div>
              </li>
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
           <th width="89"><a href="${ctx}/kailian/KlSellerProduct/classes.do?sort=id desc">编号</a></th>
           <th width="105"><a href="${ctx}/kailian/KlSellerProduct/classes.do?sort=name">课程名称</a></th>
           <th width="107"><a href="${ctx}/kailian/KlSellerProduct/classes.do?sort=id desc">课程类型</a></th>
           <th width="65"><a href="${ctx}/kailian/KlSellerProduct/classes.do?sort=classCount">课时</a></th>
           <th width="66"><a href="${ctx}/kailian/KlSellerProduct/classes.do?sort=price">价格</a></th>
           <th width="78"><a href="${ctx}/kailian/KlSellerProduct/classes.do?sort=buyedCount desc">购买人数</a></th>
           <th width="71"><a href="${ctx}/kailian/KlSellerProduct/classes.do?sort=status desc">状态</a></th>
           <th width="113">操作</th>
           <th class="th_01">用户评价</th>
         </tr>
   
         <c:forEach var="v" items="${map.page.result}">
         <tr>
           <td>${v.id}</td>
           <td>
           		<a target="_blank" href="${ctx}/kailian/KlSellerProduct/index.do?id=${v.id}">${v.name}</a>
           </td>
           <td>
           		${my:showcont('KlSellerProduct','categoryid',v.categoryid,0 )} 
           </td>
           <td>${v.classCount}</td>
           <td>${v.price}</td>
           <td>${v.buyedCount}</td>
           <td>
				<c:choose>
           			<c:when test="${v.status eq 0}">待审核</c:when>
           			<c:when test="${v.status eq 1 and v.ext10 eq 1}">已上线显示</c:when>
           			<c:when test="${v.status eq 1 and v.ext10 eq -1}">已上线隐藏</c:when>
           			<c:when test="${v.status eq -1}">未审核</c:when>
           			<c:when test="${v.status eq -2}">被隐藏</c:when>
           			<c:when test="${v.status eq -3}">被拒绝</c:when>
           			<c:when test="${v.status eq -5}">未审核</c:when>
           			<c:when test="${v.status eq -10}">未审核</c:when>
           			<c:otherwise>其他</c:otherwise>
           		</c:choose>
			</td>
           <td>
           		<c:if test="${v.status ge -10 and v.status ne 0}">
           			<a href="${ctx}/kailian/KlSellerProduct/premod.do?id=${v.id}">修</a>
           		</c:if>
           		<a href="#" onclick="if(confirm('您确定要删除这条信息吗？')) window.location.href='${ctx}/kailian/KlSellerProduct/classes.do?deleteid=${v.id}';">删</a>
           		
           		<c:if test="${v.status ne 0}">
           		<c:if test="${v.status eq -2}">
           			<a href="${ctx}/kailian/KlSellerProduct/classes.do?showid=${v.id}">上</a>
           		</c:if>
           		<c:if test="${v.status ge 1}">
           			<a href="${ctx}/kailian/KlSellerProduct/classes.do?hiddenid=${v.id}">下</a>
           		</c:if>
           		</c:if>
           		<c:if test="${v.status eq 1}">
	           		<c:if test="${v.ext10 eq -1}">
	           			<a href="${ctx}/kailian/KlSellerProduct/classes.do?sid=${v.id}">显</a>
	           		</c:if>
	           		<c:if test="${v.ext10 ne -1}">
	           			<a href="${ctx}/kailian/KlSellerProduct/classes.do?hid=${v.id}">隐</a>
	           		</c:if>
           		</c:if>
           		<!-- 
           		<a target="_blank" href="${ctx}/kailian/KlShoppingShoppingcartproduct/addToShopCar.do?productid=${v.id}&count=1">买</a>
           		<a href="${ctx}/kailian/KlSellerProduct/index.do?id=${v.id}">看</a>
           		 -->
           		</td>
           <td><a href="javascript:;" onclick="classescomments(20,${v.id});" class="yfpjLayerA">查看</a></td>
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

<div class="pageLayer pageLayer2 yfpjLayer">
<div class="bgT_1"></div>
<div class="bg">
      <h5>查看<a href="javascript:;" class="close"></a></h5>
      <div class="list">
         <ul id="rul">
         <!-- 
           <li>
               <div class="imgDiv"><div><a href=""><img src="${ctx}/image/nimg60_2.png"/></a></div>小溪</div>
               <i></i>
               <div class="contentDiv">
                   <div class="time">好评<span>2013-12-29 08:41</span></div>
                   <div class="content">是每周四都有吗？</div>
               </div>
           </li>
           <li> 
               <div class="imgDiv"><div><a href=""><img src="${ctx}/image/nimg60_2.png"/></a></div>小溪</div>
               <i></i>
               <div class="contentDiv">
                   <div class="time">好评<span>2013-12-29 08:41</span></div>
                   <div class="content">是每周四都有吗？</div>
               </div>
           </li>
            -->
         </ul>
      </div>
</div>
<div class="bgB"></div>
</div>


<%@ include file="/page/kailiantail.jsp" %>

</body>
<script>
	function subit() {
		//alert(1);
		if ($('#name').val() == '课程名称')
			$('#name').val('');
		if ($('#startd').val() == '开始时间')
			$('#startd').val('');
		if ($('#endd').val() == '结束时间')
			$('#endd').val('');
			
		$('#form1').submit();
	}
</script>
</html>