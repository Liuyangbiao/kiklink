<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", KlShoppingCoachtime.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/KlShoppingCoachtime" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="/admin/admincommon/head.jsp" %>
</head>
<body>
<div id="body-wrapperx">
  <!-- LOGO与左侧菜单 -->
  <!-- End #sidebar -->
  <div id="main-contentx">
    <!-- 如果没有js -->
    <%@ include file="/admin/admincommon/nojs.jsp" %>
    <!-- 标题与大图标 -->
     <%@ include file="/admin/admincommon/headicons.jsp" %>
    <!-- End .clear -->

    
    <!-- 搜索 -->
        <div class="content-box column-right" style="width:100%">
      <div class="content-box-header">
        <!-- Add the class "closed" to the Content box header to have it closed by default -->
        <h3>查看<%=JSTLTagUtils.getCnname("KlShoppingCoachtime","table_name")%></h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">

		<a class="button" onclick="backtolist();">返回列表</a>&nbsp;&nbsp;
		<a class="button" onclick="history.back();">后退</a>
		
		<fieldset>
			<input type="hidden" id="id" name="id" value="${model.id}"/>
		
		<!-- ONGL access static field: @package.class@field or @vs@field -->
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCoachtime",KlShoppingCoachtime.ALIAS_SHOPID)%>:
				 </label>
${my:showcont('KlShoppingCoachtime','shopid',v.shopid,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCoachtime",KlShoppingCoachtime.ALIAS_USERID)%>:
				 </label>
${my:showcont('KlShoppingCoachtime','userid',v.userid,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCoachtime",KlShoppingCoachtime.ALIAS_COACHID)%>:
				 </label>
${my:showcont('KlShoppingCoachtime','coachid',v.coachid,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCoachtime",KlShoppingCoachtime.ALIAS_SHOPPEDCLASSID)%>:
				 </label>
${my:showcont('KlShoppingCoachtime','shoppedclassid',v.shoppedclassid,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCoachtime",KlShoppingCoachtime.ALIAS_DATEINT)%>:
				 </label>
${my:showcont('KlShoppingCoachtime','dateint',v.dateint,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCoachtime",KlShoppingCoachtime.ALIAS_HOURHALF)%>:
				 </label>
${my:showcont('KlShoppingCoachtime','hourhalf',v.hourhalf,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCoachtime",KlShoppingCoachtime.ALIAS_WEEKDAY)%>:
				 </label>
${my:showcont('KlShoppingCoachtime','weekday',v.weekday,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCoachtime",KlShoppingCoachtime.ALIAS_TIMESTATUS)%>:
				 </label>
${my:showcont('KlShoppingCoachtime','timestatus',v.timestatus,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCoachtime",KlShoppingCoachtime.ALIAS_COUPONCODE)%>:
				 </label>
${my:showcont('KlShoppingCoachtime','couponcode',v.couponcode,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCoachtime",KlShoppingCoachtime.ALIAS_TYPE)%>:
				 </label>
${my:showcont('KlShoppingCoachtime','type',v.type,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCoachtime",KlShoppingCoachtime.ALIAS_PRICE)%>:
				 </label>
${my:showcont('KlShoppingCoachtime','price',v.price,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCoachtime",KlShoppingCoachtime.ALIAS_VALID_DATE)%>:
				 </label>
${my:showcont('KlShoppingCoachtime','validDate',v.validDate,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCoachtime",KlShoppingCoachtime.ALIAS_VALID_DATE_LONG)%>:
				 </label>
${my:showcont('KlShoppingCoachtime','validDateLong',v.validDateLong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCoachtime",KlShoppingCoachtime.ALIAS_INVALID_DATE)%>:
				 </label>
${my:showcont('KlShoppingCoachtime','invalidDate',v.invalidDate,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCoachtime",KlShoppingCoachtime.ALIAS_INVALID_DATE_LONG)%>:
				 </label>
${my:showcont('KlShoppingCoachtime','invalidDateLong',v.invalidDateLong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCoachtime",KlShoppingCoachtime.ALIAS_SOURCE)%>:
				 </label>
${my:showcont('KlShoppingCoachtime','source',v.source,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCoachtime",KlShoppingCoachtime.ALIAS_STATUS)%>:
				 </label>
${my:showcont('KlShoppingCoachtime','status',v.status,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCoachtime",KlShoppingCoachtime.ALIAS_ADDITION)%>:
				 </label>
${my:showcont('KlShoppingCoachtime','addition',v.addition,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCoachtime",KlShoppingCoachtime.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:showcont('KlShoppingCoachtime','createtimelong',v.createtimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCoachtime",KlShoppingCoachtime.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:showcont('KlShoppingCoachtime','modifytimelong',v.modifytimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCoachtime",KlShoppingCoachtime.ALIAS_CREATEUSER)%>:
				 </label>
${my:showcont('KlShoppingCoachtime','createuser',v.createuser,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCoachtime",KlShoppingCoachtime.ALIAS_MODIFYUSER)%>:
				 </label>
${my:showcont('KlShoppingCoachtime','modifyuser',v.modifyuser,0 )}			</p>	
		</fieldset>
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

<!-- Download From www.exet.tk-->
</html>
