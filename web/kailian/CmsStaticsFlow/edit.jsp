<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsStaticsFlow.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/CmsStaticsFlow" />
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
        <h3>编辑<%=JSTLTagUtils.getCnname("CmsStaticsFlow","table_name")%></h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">
          	<form id="form1" action="${ctx}/kailian/CmsStaticsFlow/update.do" method="post">
		<a class="button" onclick="if (doeditors()) $('#form1').submit();" >提交</a>&nbsp;&nbsp;
		<a class="button" onclick="backtolist();">返回列表</a>&nbsp;&nbsp;
		<a class="button" onclick="history.back();">后退</a>
		
		<input type="hidden" id="createtimelong" name="createtimelong" value="${model.createtimelong}"  />
		
		<fieldset>
		
			<input type="hidden" id="id" name="id" value="${model.id}"/>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		<!-- ONGL access static field: @package.class@field or @vs@field -->
			
			<p id='longSession_p' class='p123'>
				 <label id='longSession_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_LONG_SESSION)%>:
				 </label>
${my:input('CmsStaticsFlow','longSession',model.longSession,0,0 )}			</p>	
			
		
			
			<p id='visitSession_p' class='p123'>
				 <label id='visitSession_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_VISIT_SESSION)%>:
				 </label>
${my:input('CmsStaticsFlow','visitSession',model.visitSession,0,0 )}			</p>	
			
		
			
			<p id='ipAddress_p' class='p123'>
				 <label id='ipAddress_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_IP_ADDRESS)%>:
				 </label>
${my:input('CmsStaticsFlow','ipAddress',model.ipAddress,0,0 )}			</p>	
			
		
			
			<p id='ipArea_p' class='p123'>
				 <label id='ipArea_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_IP_AREA)%>:
				 </label>
${my:input('CmsStaticsFlow','ipArea',model.ipArea,0,0 )}			</p>	
			
		
			
			<p id='visitType_p' class='p123'>
				 <label id='visitType_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_VISIT_TYPE)%>:
				 </label>
${my:input('CmsStaticsFlow','visitType',model.visitType,10,0 )}
			</p>	
			
		
			
			<p id='dayVisitTimes_p' class='p123'>
				 <label id='dayVisitTimes_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_DAY_VISIT_TIMES)%>:
				 </label>
${my:input('CmsStaticsFlow','dayVisitTimes',model.dayVisitTimes,10,0 )}
			</p>	
			
		
			
			<p id='userId_p' class='p123'>
				 <label id='userId_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_USER_ID)%>:
				 </label>
${my:input('CmsStaticsFlow','userId',model.userId,10,0 )}
			</p>	
			
		
			
			<p id='visitTime_p' class='p123'>
				 <label id='visitTime_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_VISIT_TIME)%>:
				 </label>
${my:input('CmsStaticsFlow','visitTime',model.visitTime,0,0 )}			</p>	
			
		
			
			<p id='visitTimeLong_p' class='p123'>
				 <label id='visitTimeLong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_VISIT_TIME_LONG)%>:
				 </label>
${my:input('CmsStaticsFlow','visitTimeLong',model.visitTimeLong,10,0 )}
			</p>	
			
		
			
			<p id='lastVisitTime_p' class='p123'>
				 <label id='lastVisitTime_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_LAST_VISIT_TIME)%>:
				 </label>
${my:input('CmsStaticsFlow','lastVisitTime',model.lastVisitTime,0,0 )}			</p>	
			
		
			
			<p id='lastVisitTimeLong_p' class='p123'>
				 <label id='lastVisitTimeLong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_LAST_VISIT_TIME_LONG)%>:
				 </label>
${my:input('CmsStaticsFlow','lastVisitTimeLong',model.lastVisitTimeLong,10,0 )}
			</p>	
			
		
			
			<p id='referer_p' class='p123'>
				 <label id='referer_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_REFERER)%>:
				 </label>
${my:input('CmsStaticsFlow','referer',model.referer,0,0 )}			</p>	
			
		
			
			<p id='refererSite_p' class='p123'>
				 <label id='refererSite_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_REFERER_SITE)%>:
				 </label>
${my:input('CmsStaticsFlow','refererSite',model.refererSite,0,0 )}			</p>	
			
		
			
			<p id='enterPage_p' class='p123'>
				 <label id='enterPage_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_ENTER_PAGE)%>:
				 </label>
${my:input('CmsStaticsFlow','enterPage',model.enterPage,0,0 )}			</p>	
			
		
			
			<p id='searchEnge_p' class='p123'>
				 <label id='searchEnge_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_SEARCH_ENGE)%>:
				 </label>
${my:input('CmsStaticsFlow','searchEnge',model.searchEnge,0,0 )}			</p>	
			
		
			
			<p id='searchKey_p' class='p123'>
				 <label id='searchKey_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_SEARCH_KEY)%>:
				 </label>
${my:input('CmsStaticsFlow','searchKey',model.searchKey,0,0 )}			</p>	
			
		
			
			<p id='os_p' class='p123'>
				 <label id='os_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_OS)%>:
				 </label>
${my:input('CmsStaticsFlow','os',model.os,0,0 )}			</p>	
			
		
			
			<p id='osVersion_p' class='p123'>
				 <label id='osVersion_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_OS_VERSION)%>:
				 </label>
${my:input('CmsStaticsFlow','osVersion',model.osVersion,0,0 )}			</p>	
			
		
			
			<p id='hardwareType_p' class='p123'>
				 <label id='hardwareType_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_HARDWARE_TYPE)%>:
				 </label>
${my:input('CmsStaticsFlow','hardwareType',model.hardwareType,10,0 )}
			</p>	
			
		
			
			<p id='screenWidth_p' class='p123'>
				 <label id='screenWidth_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_SCREEN_WIDTH)%>:
				 </label>
${my:input('CmsStaticsFlow','screenWidth',model.screenWidth,10,0 )}
			</p>	
			
		
			
			<p id='screenHeight_p' class='p123'>
				 <label id='screenHeight_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_SCREEN_HEIGHT)%>:
				 </label>
${my:input('CmsStaticsFlow','screenHeight',model.screenHeight,10,0 )}
			</p>	
			
		
			
			<p id='screenColor_p' class='p123'>
				 <label id='screenColor_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_SCREEN_COLOR)%>:
				 </label>
${my:input('CmsStaticsFlow','screenColor',model.screenColor,0,0 )}			</p>	
			
		
			
			<p id='browser_p' class='p123'>
				 <label id='browser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_BROWSER)%>:
				 </label>
${my:input('CmsStaticsFlow','browser',model.browser,0,0 )}			</p>	
			
		
			
			<p id='flashVersion_p' class='p123'>
				 <label id='flashVersion_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_FLASH_VERSION)%>:
				 </label>
${my:input('CmsStaticsFlow','flashVersion',model.flashVersion,0,0 )}			</p>	
			
		
			
			<p id='cookieSupport_p' class='p123'>
				 <label id='cookieSupport_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_COOKIE_SUPPORT)%>:
				 </label>
${my:input('CmsStaticsFlow','cookieSupport',model.cookieSupport,10,0 )}
			</p>	
			
		
			
			<p id='javaSupport_p' class='p123'>
				 <label id='javaSupport_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_JAVA_SUPPORT)%>:
				 </label>
${my:input('CmsStaticsFlow','javaSupport',model.javaSupport,10,0 )}
			</p>	
			
		
			
			<p id='visitYear_p' class='p123'>
				 <label id='visitYear_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_VISIT_YEAR)%>:
				 </label>
${my:input('CmsStaticsFlow','visitYear',model.visitYear,10,0 )}
			</p>	
			
		
			
			<p id='visitMonth_p' class='p123'>
				 <label id='visitMonth_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_VISIT_MONTH)%>:
				 </label>
${my:input('CmsStaticsFlow','visitMonth',model.visitMonth,10,0 )}
			</p>	
			
		
			
			<p id='visitDate_p' class='p123'>
				 <label id='visitDate_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_VISIT_DATE)%>:
				 </label>
${my:input('CmsStaticsFlow','visitDate',model.visitDate,10,0 )}
			</p>	
			
		
			
			<p id='visitDay_p' class='p123'>
				 <label id='visitDay_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_VISIT_DAY)%>:
				 </label>
${my:input('CmsStaticsFlow','visitDay',model.visitDay,10,0 )}
			</p>	
			
		
			
			<p id='visitHour_p' class='p123'>
				 <label id='visitHour_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_VISIT_HOUR)%>:
				 </label>
${my:input('CmsStaticsFlow','visitHour',model.visitHour,10,0 )}
			</p>	
			
		
			
			<p id='visitMinute_p' class='p123'>
				 <label id='visitMinute_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_VISIT_MINUTE)%>:
				 </label>
${my:input('CmsStaticsFlow','visitMinute',model.visitMinute,10,0 )}
			</p>	
			
		
			
			<p id='siteid_p' class='p123'>
				 <label id='siteid_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_SITEID)%>:
				 </label>
${my:input('CmsStaticsFlow','siteid',model.siteid,10,0 )}
			</p>	
			
		
			
			<p id='siteDomain_p' class='p123'>
				 <label id='siteDomain_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_SITE_DOMAIN)%>:
				 </label>
${my:input('CmsStaticsFlow','siteDomain',model.siteDomain,10,0 )}
			</p>	
			
		
				<!-- 
			
			<p id='status_p' class='p123'>
				 <label id='status_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_STATUS)%>:
				 </label>
${my:input('CmsStaticsFlow','status',model.status,10,0 )}
			</p>	
			
		
				--> 
			
			<p id='addition_p' class='p123'>
				 <label id='addition_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_ADDITION)%>:
				 </label>
${my:input('CmsStaticsFlow','addition',model.addition,0,0 )}			</p>	
			
		
				<!-- 
			
			<p id='createtimelong_p' class='p123'>
				 <label id='createtimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:input('CmsStaticsFlow','createtimelong',model.createtimelong,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='modifytimelong_p' class='p123'>
				 <label id='modifytimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:input('CmsStaticsFlow','modifytimelong',model.modifytimelong,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='createuser_p' class='p123'>
				 <label id='createuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_CREATEUSER)%>:
				 </label>
${my:input('CmsStaticsFlow','createuser',model.createuser,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='modifyuser_p' class='p123'>
				 <label id='modifyuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_MODIFYUSER)%>:
				 </label>
${my:input('CmsStaticsFlow','modifyuser',model.modifyuser,10,0 )}
			</p>	
			
		
				--> 
			
			<p id='url_p' class='p123'>
				 <label id='url_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_URL)%>:
				 </label>
${my:input('CmsStaticsFlow','url',model.url,0,0 )}			</p>	
			
		
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
