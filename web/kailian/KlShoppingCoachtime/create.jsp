<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", KlShoppingCoachtime.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/KlShoppingCoachtime" />
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
        <h3>创建<%=JSTLTagUtils.getCnname("KlShoppingCoachtime","table_name")%></h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">
          	<form id="form1" action="${ctx}/kailian/KlShoppingCoachtime/save.do" method="post">
		<a class="button" onclick="if(doeditors()) $('#form1').submit();" >提交</a>&nbsp;&nbsp;
		<a class="button" onclick="backtolist();">返回列表</a>&nbsp;&nbsp;
		<a class="button" onclick="history.back();">后退</a>
		
		<fieldset>
			<input type="hidden" id="id" name="id" value="${model.id}"/>
		
		<!-- ONGL access static field: @package.class@field or @vs@field -->
		
			<c:set var="tt" value="ID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			</c:if>
		
			<c:set var="tt" value="SHOPID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='shopid_p' class='p123'>
				 <label id='shopid_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCoachtime",KlShoppingCoachtime.ALIAS_SHOPID)%>:
				 </label>
${my:input('KlShoppingCoachtime','shopid',model.shopid,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="USERID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='userid_p' class='p123'>
				 <label id='userid_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCoachtime",KlShoppingCoachtime.ALIAS_USERID)%>:
				 </label>
${my:input('KlShoppingCoachtime','userid',model.userid,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="COACHID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='coachid_p' class='p123'>
				 <label id='coachid_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCoachtime",KlShoppingCoachtime.ALIAS_COACHID)%>:
				 </label>
${my:input('KlShoppingCoachtime','coachid',model.coachid,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="SHOPPEDCLASSID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='shoppedclassid_p' class='p123'>
				 <label id='shoppedclassid_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCoachtime",KlShoppingCoachtime.ALIAS_SHOPPEDCLASSID)%>:
				 </label>
${my:input('KlShoppingCoachtime','shoppedclassid',model.shoppedclassid,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="DATEINT"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='dateint_p' class='p123'>
				 <label id='dateint_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCoachtime",KlShoppingCoachtime.ALIAS_DATEINT)%>:
				 </label>
${my:input('KlShoppingCoachtime','dateint',model.dateint,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="HOURHALF"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='hourhalf_p' class='p123'>
				 <label id='hourhalf_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCoachtime",KlShoppingCoachtime.ALIAS_HOURHALF)%>:
				 </label>
${my:input('KlShoppingCoachtime','hourhalf',model.hourhalf,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="WEEKDAY"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='weekday_p' class='p123'>
				 <label id='weekday_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCoachtime",KlShoppingCoachtime.ALIAS_WEEKDAY)%>:
				 </label>
${my:input('KlShoppingCoachtime','weekday',model.weekday,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="TIMESTATUS"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='timestatus_p' class='p123'>
				 <label id='timestatus_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCoachtime",KlShoppingCoachtime.ALIAS_TIMESTATUS)%>:
				 </label>
${my:input('KlShoppingCoachtime','timestatus',model.timestatus,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="COUPONCODE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='couponcode_p' class='p123'>
				 <label id='couponcode_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCoachtime",KlShoppingCoachtime.ALIAS_COUPONCODE)%>:
				 </label>
${my:input('KlShoppingCoachtime','couponcode',model.couponcode,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="TYPE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='type_p' class='p123'>
				 <label id='type_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCoachtime",KlShoppingCoachtime.ALIAS_TYPE)%>:
				 </label>
${my:input('KlShoppingCoachtime','type',model.type,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="PRICE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='price_p' class='p123'>
				 <label id='price_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCoachtime",KlShoppingCoachtime.ALIAS_PRICE)%>:
				 </label>
${my:input('KlShoppingCoachtime','price',model.price,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="VALID_DATE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='validDate_p' class='p123'>
				 <label id='validDate_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCoachtime",KlShoppingCoachtime.ALIAS_VALID_DATE)%>:
				 </label>
${my:input('KlShoppingCoachtime','validDate',model.validDate,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="VALID_DATE_LONG"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='validDateLong_p' class='p123'>
				 <label id='validDateLong_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCoachtime",KlShoppingCoachtime.ALIAS_VALID_DATE_LONG)%>:
				 </label>
${my:input('KlShoppingCoachtime','validDateLong',model.validDateLong,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="INVALID_DATE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='invalidDate_p' class='p123'>
				 <label id='invalidDate_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCoachtime",KlShoppingCoachtime.ALIAS_INVALID_DATE)%>:
				 </label>
${my:input('KlShoppingCoachtime','invalidDate',model.invalidDate,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="INVALID_DATE_LONG"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='invalidDateLong_p' class='p123'>
				 <label id='invalidDateLong_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCoachtime",KlShoppingCoachtime.ALIAS_INVALID_DATE_LONG)%>:
				 </label>
${my:input('KlShoppingCoachtime','invalidDateLong',model.invalidDateLong,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="SOURCE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='source_p' class='p123'>
				 <label id='source_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCoachtime",KlShoppingCoachtime.ALIAS_SOURCE)%>:
				 </label>
${my:input('KlShoppingCoachtime','source',model.source,10,0 )}
			</p>	
			</c:if>
				<!-- 
		
			<c:set var="tt" value="STATUS"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='status_p' class='p123'>
				 <label id='status_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCoachtime",KlShoppingCoachtime.ALIAS_STATUS)%>:
				 </label>
${my:input('KlShoppingCoachtime','status',model.status,10,0 )}
			</p>	
			</c:if>
				-->
		
			<c:set var="tt" value="ADDITION"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='addition_p' class='p123'>
				 <label id='addition_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCoachtime",KlShoppingCoachtime.ALIAS_ADDITION)%>:
				 </label>
${my:input('KlShoppingCoachtime','addition',model.addition,0,0 )}			</p>	
			</c:if>
				<!-- 
		
			<c:set var="tt" value="CREATETIMELONG"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='createtimelong_p' class='p123'>
				 <label id='createtimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCoachtime",KlShoppingCoachtime.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:input('KlShoppingCoachtime','createtimelong',model.createtimelong,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="MODIFYTIMELONG"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='modifytimelong_p' class='p123'>
				 <label id='modifytimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCoachtime",KlShoppingCoachtime.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:input('KlShoppingCoachtime','modifytimelong',model.modifytimelong,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="CREATEUSER"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='createuser_p' class='p123'>
				 <label id='createuser_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCoachtime",KlShoppingCoachtime.ALIAS_CREATEUSER)%>:
				 </label>
${my:input('KlShoppingCoachtime','createuser',model.createuser,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="MODIFYUSER"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='modifyuser_p' class='p123'>
				 <label id='modifyuser_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCoachtime",KlShoppingCoachtime.ALIAS_MODIFYUSER)%>:
				 </label>
${my:input('KlShoppingCoachtime','modifyuser',model.modifyuser,10,0 )}
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
