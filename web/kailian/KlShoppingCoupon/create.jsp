<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", KlShoppingCoupon.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/KlShoppingCoupon" />
<c:set var="ttid" value="ID"></c:set>
<c:set var="ttcreator" value="CREATOR"></c:set>
<c:set var="ttcreatetime" value="CREATE_TIME"></c:set>
<c:set var="ttdeleted" value="DELETED"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="/admin/admincommon/head.jsp" %>
</head>
<body>
<div id="body-wrapper">
  <!-- LOGO与左侧菜单 -->
  <!-- End #sidebar -->
  <div id="main-content">
    <!-- 如果没有js -->
    <%@ include file="/admin/admincommon/nojs.jsp" %>
    <!-- 标题与大图标 -->
     <%@ include file="/admin/admincommon/headicons.jsp" %>
    <!-- End .clear -->

    
    <!-- 搜索 -->
        <div class="content-box column-right" style="width:100%">
      <div class="content-box-header">
        <!-- Add the class "closed" to the Content box header to have it closed by default -->
        <h3>创建<%=JSTLTagUtils.getCnname("KlShoppingCoupon","table_name")%></h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">
          	<form id="form1" action="${ctx}/kailian/KlShoppingCoupon/save.do" method="post">
		<a class="button" onclick="if(doeditors()) $('#form1').submit();" >提交</a>&nbsp;&nbsp;
		<a class="button" onclick="backtolist();">返回列表</a>&nbsp;&nbsp;
		<a class="button" onclick="history.back();">后退</a>
		
		<fieldset>
			<input type="hidden" id="id" name="id" value="${model.id}"/>
		
		<!-- ONGL access static field: @package.class@field or @vs@field -->
		
			<c:set var="tt" value="ID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			</c:if>
		
			<c:set var="tt" value="USERID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='userid_p' class='p123'>
				 <label id='userid_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCoupon",KlShoppingCoupon.ALIAS_USERID)%>:
				 </label>
${my:input('KlShoppingCoupon','userid',model.userid,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="COUPONCODE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='couponcode_p' class='p123'>
				 <label id='couponcode_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCoupon",KlShoppingCoupon.ALIAS_COUPONCODE)%>:
				 </label>
${my:input('KlShoppingCoupon','couponcode',model.couponcode,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="TYPE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='type_p' class='p123'>
				 <label id='type_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCoupon",KlShoppingCoupon.ALIAS_TYPE)%>:
				 </label>
${my:input('KlShoppingCoupon','type',model.type,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="PRICE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='price_p' class='p123'>
				 <label id='price_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCoupon",KlShoppingCoupon.ALIAS_PRICE)%>:
				 </label>
${my:input('KlShoppingCoupon','price',model.price,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="VALID_DATE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='validDate_p' class='p123'>
				 <label id='validDate_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCoupon",KlShoppingCoupon.ALIAS_VALID_DATE)%>:
				 </label>
${my:input('KlShoppingCoupon','validDate',model.validDate,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="VALID_DATE_LONG"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='validDateLong_p' class='p123'>
				 <label id='validDateLong_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCoupon",KlShoppingCoupon.ALIAS_VALID_DATE_LONG)%>:
				 </label>
${my:input('KlShoppingCoupon','validDateLong',model.validDateLong,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="INVALID_DATE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='invalidDate_p' class='p123'>
				 <label id='invalidDate_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCoupon",KlShoppingCoupon.ALIAS_INVALID_DATE)%>:
				 </label>
${my:input('KlShoppingCoupon','invalidDate',model.invalidDate,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="INVALID_DATE_LONG"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='invalidDateLong_p' class='p123'>
				 <label id='invalidDateLong_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCoupon",KlShoppingCoupon.ALIAS_INVALID_DATE_LONG)%>:
				 </label>
${my:input('KlShoppingCoupon','invalidDateLong',model.invalidDateLong,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="SOURCE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='source_p' class='p123'>
				 <label id='source_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCoupon",KlShoppingCoupon.ALIAS_SOURCE)%>:
				 </label>
${my:input('KlShoppingCoupon','source',model.source,10,0 )}
			</p>	
			</c:if>
				<!-- 
		
			<c:set var="tt" value="STATUS"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='status_p' class='p123'>
				 <label id='status_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCoupon",KlShoppingCoupon.ALIAS_STATUS)%>:
				 </label>
${my:input('KlShoppingCoupon','status',model.status,10,0 )}
			</p>	
			</c:if>
				-->
		
			<c:set var="tt" value="ADDITION"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='addition_p' class='p123'>
				 <label id='addition_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCoupon",KlShoppingCoupon.ALIAS_ADDITION)%>:
				 </label>
${my:input('KlShoppingCoupon','addition',model.addition,0,0 )}			</p>	
			</c:if>
				<!-- 
		
			<c:set var="tt" value="CREATETIMELONG"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='createtimelong_p' class='p123'>
				 <label id='createtimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCoupon",KlShoppingCoupon.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:input('KlShoppingCoupon','createtimelong',model.createtimelong,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="MODIFYTIMELONG"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='modifytimelong_p' class='p123'>
				 <label id='modifytimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCoupon",KlShoppingCoupon.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:input('KlShoppingCoupon','modifytimelong',model.modifytimelong,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="CREATEUSER"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='createuser_p' class='p123'>
				 <label id='createuser_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCoupon",KlShoppingCoupon.ALIAS_CREATEUSER)%>:
				 </label>
${my:input('KlShoppingCoupon','createuser',model.createuser,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="MODIFYUSER"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='modifyuser_p' class='p123'>
				 <label id='modifyuser_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCoupon",KlShoppingCoupon.ALIAS_MODIFYUSER)%>:
				 </label>
${my:input('KlShoppingCoupon','modifyuser',model.modifyuser,10,0 )}
			</p>	
			</c:if>
				-->
		</fieldset>
	</form>
        </div>
        <!-- End #tab3 -->
      </div>
      <!-- End .content-box-content -->
    </div>
    <!-- End .content-box -->
    <div class="clear"></div>
    <%@ include file="/admin/admincommon/tipdown.jsp" %>

    <!-- End Notifications -->
  </div>
  <!-- End #main-content -->
</div>
</body>
<script type="text/javascript">
var host1 = "${ctx}";
$(document).ready(function(){
	$('.iframe').fancybox({'width':widthPercent,'height':heightPercent});
	doright();
});


	function submitSearch(pageno) {
		document.getElementById('pageNumber').value = pageno;
		$('#queryForm').submit();
	}
</script>
<!-- Download From www.exet.tk-->
</html>
