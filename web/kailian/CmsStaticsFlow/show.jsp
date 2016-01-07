<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsStaticsFlow.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/CmsStaticsFlow" />
<c:set var="v" value="${model}" />
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
        <h3>查看<%=JSTLTagUtils.getCnname("CmsStaticsFlow","table_name")%></h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">

		<a class="button" onClick="backtolist();">返回列表</a>&nbsp;&nbsp;
		<a class="button" onClick="history.back();">后退</a>
		
		<fieldset>
			<input type="hidden" id="id" name="id" value="${model.id}"/>
		
		<!-- ONGL access static field: @package.class@field or @vs@field -->
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_LONG_SESSION)%>:
				 </label>
${my:showcont('CmsStaticsFlow','longSession',v.longSession,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_VISIT_SESSION)%>:
				 </label>
${my:showcont('CmsStaticsFlow','visitSession',v.visitSession,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_IP_ADDRESS)%>:
				 </label>
${my:showcont('CmsStaticsFlow','ipAddress',v.ipAddress,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_IP_AREA)%>:
				 </label>
${my:showcont('CmsStaticsFlow','ipArea',v.ipArea,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_VISIT_TYPE)%>:
				 </label>
${my:showcont('CmsStaticsFlow','visitType',v.visitType,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_DAY_VISIT_TIMES)%>:
				 </label>
${my:showcont('CmsStaticsFlow','dayVisitTimes',v.dayVisitTimes,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_USER_ID)%>:
				 </label>
${my:showcont('CmsStaticsFlow','userId',v.userId,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_VISIT_TIME)%>:
				 </label>
${my:showcont('CmsStaticsFlow','visitTime',v.visitTime,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_VISIT_TIME_LONG)%>:
				 </label>
${my:showcont('CmsStaticsFlow','visitTimeLong',v.visitTimeLong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_LAST_VISIT_TIME)%>:
				 </label>
${my:showcont('CmsStaticsFlow','lastVisitTime',v.lastVisitTime,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_LAST_VISIT_TIME_LONG)%>:
				 </label>
${my:showcont('CmsStaticsFlow','lastVisitTimeLong',v.lastVisitTimeLong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_REFERER)%>:
				 </label>
${my:showcont('CmsStaticsFlow','referer',v.referer,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_REFERER_SITE)%>:
				 </label>
${my:showcont('CmsStaticsFlow','refererSite',v.refererSite,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_ENTER_PAGE)%>:
				 </label>
${my:showcont('CmsStaticsFlow','enterPage',v.enterPage,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_SEARCH_ENGE)%>:
				 </label>
${my:showcont('CmsStaticsFlow','searchEnge',v.searchEnge,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_SEARCH_KEY)%>:
				 </label>
${my:showcont('CmsStaticsFlow','searchKey',v.searchKey,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_OS)%>:
				 </label>
${my:showcont('CmsStaticsFlow','os',v.os,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_OS_VERSION)%>:
				 </label>
${my:showcont('CmsStaticsFlow','osVersion',v.osVersion,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_HARDWARE_TYPE)%>:
				 </label>
${my:showcont('CmsStaticsFlow','hardwareType',v.hardwareType,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_SCREEN_WIDTH)%>:
				 </label>
${my:showcont('CmsStaticsFlow','screenWidth',v.screenWidth,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_SCREEN_HEIGHT)%>:
				 </label>
${my:showcont('CmsStaticsFlow','screenHeight',v.screenHeight,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_SCREEN_COLOR)%>:
				 </label>
${my:showcont('CmsStaticsFlow','screenColor',v.screenColor,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_BROWSER)%>:
				 </label>
${my:showcont('CmsStaticsFlow','browser',v.browser,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_FLASH_VERSION)%>:
				 </label>
${my:showcont('CmsStaticsFlow','flashVersion',v.flashVersion,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_COOKIE_SUPPORT)%>:
				 </label>
${my:showcont('CmsStaticsFlow','cookieSupport',v.cookieSupport,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_JAVA_SUPPORT)%>:
				 </label>
${my:showcont('CmsStaticsFlow','javaSupport',v.javaSupport,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_VISIT_YEAR)%>:
				 </label>
${my:showcont('CmsStaticsFlow','visitYear',v.visitYear,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_VISIT_MONTH)%>:
				 </label>
${my:showcont('CmsStaticsFlow','visitMonth',v.visitMonth,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_VISIT_DATE)%>:
				 </label>
${my:showcont('CmsStaticsFlow','visitDate',v.visitDate,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_VISIT_DAY)%>:
				 </label>
${my:showcont('CmsStaticsFlow','visitDay',v.visitDay,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_VISIT_HOUR)%>:
				 </label>
${my:showcont('CmsStaticsFlow','visitHour',v.visitHour,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_VISIT_MINUTE)%>:
				 </label>
${my:showcont('CmsStaticsFlow','visitMinute',v.visitMinute,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_SITEID)%>:
				 </label>
${my:showcont('CmsStaticsFlow','siteid',v.siteid,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_SITE_DOMAIN)%>:
				 </label>
${my:showcont('CmsStaticsFlow','siteDomain',v.siteDomain,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_STATUS)%>:
				 </label>
${my:showcont('CmsStaticsFlow','status',v.status,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_ADDITION)%>:
				 </label>
${my:showcont('CmsStaticsFlow','addition',v.addition,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:showcont('CmsStaticsFlow','createtimelong',v.createtimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:showcont('CmsStaticsFlow','modifytimelong',v.modifytimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_CREATEUSER)%>:
				 </label>
${my:showcont('CmsStaticsFlow','createuser',v.createuser,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_MODIFYUSER)%>:
				 </label>
${my:showcont('CmsStaticsFlow','modifyuser',v.modifyuser,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_URL)%>:
				 </label>
${my:showcont('CmsStaticsFlow','url',v.url,0 )}			</p>	
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
