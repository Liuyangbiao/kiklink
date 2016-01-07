<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", KlShoppingPiliangtime.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/KlShoppingPiliangtime" />
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
        <h3>查看<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime","table_name")%></h3>
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
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_SHOPID)%>:
				 </label>
${my:showcont('KlShoppingPiliangtime','shopid',v.shopid,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_USERID)%>:
				 </label>
${my:showcont('KlShoppingPiliangtime','userid',v.userid,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_COACHID)%>:
				 </label>
${my:showcont('KlShoppingPiliangtime','coachid',v.coachid,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_SHOPPEDCLASSID)%>:
				 </label>
${my:showcont('KlShoppingPiliangtime','shoppedclassid',v.shoppedclassid,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_DATEFROM)%>:
				 </label>
${my:showcont('KlShoppingPiliangtime','datefrom',v.datefrom,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_DATETO)%>:
				 </label>
${my:showcont('KlShoppingPiliangtime','dateto',v.dateto,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_WEEKDAYS)%>:
				 </label>
${my:showcont('KlShoppingPiliangtime','weekdays',v.weekdays,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_TIMEFROM)%>:
				 </label>
${my:showcont('KlShoppingPiliangtime','timefrom',v.timefrom,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_TIMETO)%>:
				 </label>
${my:showcont('KlShoppingPiliangtime','timeto',v.timeto,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_TIMEOK)%>:
				 </label>
${my:showcont('KlShoppingPiliangtime','timeok',v.timeok,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_EXT1)%>:
				 </label>
${my:showcont('KlShoppingPiliangtime','ext1',v.ext1,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_EXT2)%>:
				 </label>
${my:showcont('KlShoppingPiliangtime','ext2',v.ext2,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_EXT3)%>:
				 </label>
${my:showcont('KlShoppingPiliangtime','ext3',v.ext3,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_EXT4)%>:
				 </label>
${my:showcont('KlShoppingPiliangtime','ext4',v.ext4,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_EXT5)%>:
				 </label>
${my:showcont('KlShoppingPiliangtime','ext5',v.ext5,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_EXT_INT1)%>:
				 </label>
${my:showcont('KlShoppingPiliangtime','extInt1',v.extInt1,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_EXT_INT2)%>:
				 </label>
${my:showcont('KlShoppingPiliangtime','extInt2',v.extInt2,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_EXT_INT3)%>:
				 </label>
${my:showcont('KlShoppingPiliangtime','extInt3',v.extInt3,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_EXT_INT4)%>:
				 </label>
${my:showcont('KlShoppingPiliangtime','extInt4',v.extInt4,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_EXT_INT5)%>:
				 </label>
${my:showcont('KlShoppingPiliangtime','extInt5',v.extInt5,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_STATUS)%>:
				 </label>
${my:showcont('KlShoppingPiliangtime','status',v.status,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_ADDITION)%>:
				 </label>
${my:showcont('KlShoppingPiliangtime','addition',v.addition,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:showcont('KlShoppingPiliangtime','createtimelong',v.createtimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:showcont('KlShoppingPiliangtime','modifytimelong',v.modifytimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_CREATEUSER)%>:
				 </label>
${my:showcont('KlShoppingPiliangtime','createuser',v.createuser,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_MODIFYUSER)%>:
				 </label>
${my:showcont('KlShoppingPiliangtime','modifyuser',v.modifyuser,0 )}			</p>	
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
