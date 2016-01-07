<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsStaticsFlow.TABLE_ALIAS);
	Map map = new HashMap();
		map.put("ID", "1");
		//map.put("LONG_SESSION", "1");
		//map.put("VISIT_SESSION", "1");
		//map.put("IP_ADDRESS", "1");
		//map.put("IP_AREA", "1");
		//map.put("VISIT_TYPE", "1");
		//map.put("DAY_VISIT_TIMES", "1");
		//map.put("USER_ID", "1");
		map.put("VISIT_TIME", "1");
		//map.put("VISIT_TIME_LONG", "1");
		//map.put("LAST_VISIT_TIME", "1");
		//map.put("LAST_VISIT_TIME_LONG", "1");
		//map.put("REFERER", "1");
		//map.put("REFERER_SITE", "1");
		//map.put("ENTER_PAGE", "1");
		//map.put("SEARCH_ENGE", "1");
		//map.put("SEARCH_KEY", "1");
		map.put("OS", "1");
		//map.put("OS_VERSION", "1");
		//map.put("HARDWARE_TYPE", "1");
		map.put("SCREEN_WIDTH", "1");
		map.put("SCREEN_HEIGHT", "1");
		map.put("SCREEN_COLOR", "1");
		map.put("BROWSER", "1");
		map.put("FLASH_VERSION", "1");
		//map.put("COOKIE_SUPPORT", "1");
		//map.put("JAVA_SUPPORT", "1");
		//map.put("VISIT_YEAR", "1");
		//map.put("VISIT_MONTH", "1");
		//map.put("VISIT_DATE", "1");
		//map.put("VISIT_DAY", "1");
		//map.put("VISIT_HOUR", "1");
		//map.put("VISIT_MINUTE", "1");
		//map.put("SITEID", "1");
		//map.put("SITE_DOMAIN", "1");
		map.put("STATUS", "1");
		map.put("ADDITION", "1");
		map.put("CREATETIMELONG", "1");
		map.put("MODIFYTIMELONG", "1");
		map.put("CREATEUSER", "1");
		map.put("MODIFYUSER", "1");
		//map.put("URL", "1");
	request.setAttribute("showmap", map);
 %>
<c:set var="actionBasePath" value="/kailian/CmsStaticsFlow" />
<c:set var="ttid" value="ID"></c:set>
<c:set var="ttcreator" value="CREATOR"></c:set>
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
    <div class="content-box">
      <!-- Start Content Box -->
      <div class="content-box-header">
        <h3><%=JSTLTagUtils.getCnname("CmsStaticsFlow","table_name")%>列表
		&nbsp;&nbsp;
		
		<c:choose>
        	<c:when test="${param.fromiframe eq null or param.fromiframe eq ''}">
            <a class="button iframe" href="${ctx}/${actionBasePath}/create.do" title="新增">新增</a>
		 &nbsp;&nbsp;
		 <a class="button" onClick="if(confirm('确定要删除所选数据吗？')) deleteidsrt();" title="删除所选">删除所选</a>
            </c:when>
            <c:otherwise>
            
            </c:otherwise>
        </c:choose>
		
		
		 
		 &nbsp;&nbsp;
		 ${pg.totalCount}条记录
		 &nbsp;&nbsp;
		 <a class="button" onClick="$('#queryForm').submit();">刷新</a>
		 </h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content" style="">
        <div class="tab-content default-tab" id="tab1">
          <!-- This is the target div. id must match the href of this div's tab -->
          <%@ include file="/admin/admincommon/tipup.jsp" %>
          <table>
            <thead>
              <tr>
                <th>
                  <input class="check-all" type="checkbox" />
                </th>
				
			
                
                	<c:set var="tt" value="ID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="id_000"><span onClick="newsort('<%=CmsStaticsFlow.ALIAS_ID%>');"><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_ID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="LONG_SESSION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="longSession_000"><span onClick="newsort('<%=CmsStaticsFlow.ALIAS_LONG_SESSION%>');"><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_LONG_SESSION)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="VISIT_SESSION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="visitSession_000"><span onClick="newsort('<%=CmsStaticsFlow.ALIAS_VISIT_SESSION%>');"><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_VISIT_SESSION)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="IP_ADDRESS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ipAddress_000"><span onClick="newsort('<%=CmsStaticsFlow.ALIAS_IP_ADDRESS%>');"><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_IP_ADDRESS)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="IP_AREA"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ipArea_000"><span onClick="newsort('<%=CmsStaticsFlow.ALIAS_IP_AREA%>');"><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_IP_AREA)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="VISIT_TYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="visitType_000"><span onClick="newsort('<%=CmsStaticsFlow.ALIAS_VISIT_TYPE%>');"><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_VISIT_TYPE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="DAY_VISIT_TIMES"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="dayVisitTimes_000"><span onClick="newsort('<%=CmsStaticsFlow.ALIAS_DAY_VISIT_TIMES%>');"><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_DAY_VISIT_TIMES)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="USER_ID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="userId_000"><span onClick="newsort('<%=CmsStaticsFlow.ALIAS_USER_ID%>');"><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_USER_ID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="VISIT_TIME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="visitTime_000"><span onClick="newsort('<%=CmsStaticsFlow.ALIAS_VISIT_TIME%>');"><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_VISIT_TIME)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="VISIT_TIME_LONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="visitTimeLong_000"><span onClick="newsort('<%=CmsStaticsFlow.ALIAS_VISIT_TIME_LONG%>');"><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_VISIT_TIME_LONG)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="LAST_VISIT_TIME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="lastVisitTime_000"><span onClick="newsort('<%=CmsStaticsFlow.ALIAS_LAST_VISIT_TIME%>');"><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_LAST_VISIT_TIME)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="LAST_VISIT_TIME_LONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="lastVisitTimeLong_000"><span onClick="newsort('<%=CmsStaticsFlow.ALIAS_LAST_VISIT_TIME_LONG%>');"><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_LAST_VISIT_TIME_LONG)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="REFERER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="referer_000"><span onClick="newsort('<%=CmsStaticsFlow.ALIAS_REFERER%>');"><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_REFERER)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="REFERER_SITE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="refererSite_000"><span onClick="newsort('<%=CmsStaticsFlow.ALIAS_REFERER_SITE%>');"><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_REFERER_SITE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="ENTER_PAGE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="enterPage_000"><span onClick="newsort('<%=CmsStaticsFlow.ALIAS_ENTER_PAGE%>');"><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_ENTER_PAGE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="SEARCH_ENGE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="searchEnge_000"><span onClick="newsort('<%=CmsStaticsFlow.ALIAS_SEARCH_ENGE%>');"><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_SEARCH_ENGE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="SEARCH_KEY"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="searchKey_000"><span onClick="newsort('<%=CmsStaticsFlow.ALIAS_SEARCH_KEY%>');"><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_SEARCH_KEY)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="OS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="os_000"><span onClick="newsort('<%=CmsStaticsFlow.ALIAS_OS%>');"><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_OS)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="OS_VERSION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="osVersion_000"><span onClick="newsort('<%=CmsStaticsFlow.ALIAS_OS_VERSION%>');"><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_OS_VERSION)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="HARDWARE_TYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="hardwareType_000"><span onClick="newsort('<%=CmsStaticsFlow.ALIAS_HARDWARE_TYPE%>');"><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_HARDWARE_TYPE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="SCREEN_WIDTH"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="screenWidth_000"><span onClick="newsort('<%=CmsStaticsFlow.ALIAS_SCREEN_WIDTH%>');"><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_SCREEN_WIDTH)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="SCREEN_HEIGHT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="screenHeight_000"><span onClick="newsort('<%=CmsStaticsFlow.ALIAS_SCREEN_HEIGHT%>');"><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_SCREEN_HEIGHT)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="SCREEN_COLOR"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="screenColor_000"><span onClick="newsort('<%=CmsStaticsFlow.ALIAS_SCREEN_COLOR%>');"><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_SCREEN_COLOR)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="BROWSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="browser_000"><span onClick="newsort('<%=CmsStaticsFlow.ALIAS_BROWSER%>');"><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_BROWSER)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="FLASH_VERSION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="flashVersion_000"><span onClick="newsort('<%=CmsStaticsFlow.ALIAS_FLASH_VERSION%>');"><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_FLASH_VERSION)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="COOKIE_SUPPORT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="cookieSupport_000"><span onClick="newsort('<%=CmsStaticsFlow.ALIAS_COOKIE_SUPPORT%>');"><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_COOKIE_SUPPORT)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="JAVA_SUPPORT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="javaSupport_000"><span onClick="newsort('<%=CmsStaticsFlow.ALIAS_JAVA_SUPPORT%>');"><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_JAVA_SUPPORT)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="VISIT_YEAR"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="visitYear_000"><span onClick="newsort('<%=CmsStaticsFlow.ALIAS_VISIT_YEAR%>');"><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_VISIT_YEAR)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="VISIT_MONTH"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="visitMonth_000"><span onClick="newsort('<%=CmsStaticsFlow.ALIAS_VISIT_MONTH%>');"><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_VISIT_MONTH)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="VISIT_DATE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="visitDate_000"><span onClick="newsort('<%=CmsStaticsFlow.ALIAS_VISIT_DATE%>');"><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_VISIT_DATE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="VISIT_DAY"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="visitDay_000"><span onClick="newsort('<%=CmsStaticsFlow.ALIAS_VISIT_DAY%>');"><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_VISIT_DAY)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="VISIT_HOUR"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="visitHour_000"><span onClick="newsort('<%=CmsStaticsFlow.ALIAS_VISIT_HOUR%>');"><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_VISIT_HOUR)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="VISIT_MINUTE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="visitMinute_000"><span onClick="newsort('<%=CmsStaticsFlow.ALIAS_VISIT_MINUTE%>');"><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_VISIT_MINUTE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="SITEID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="siteid_000"><span onClick="newsort('<%=CmsStaticsFlow.ALIAS_SITEID%>');"><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_SITEID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="SITE_DOMAIN"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="siteDomain_000"><span onClick="newsort('<%=CmsStaticsFlow.ALIAS_SITE_DOMAIN%>');"><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_SITE_DOMAIN)%></span></th>
					</c:if>
			
				<!-- 
				
			
                
                	<c:set var="tt" value="STATUS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="status_000"><span onclick="newsort('<%=CmsStaticsFlow.ALIAS_STATUS%>');"><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_STATUS)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="ADDITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="addition_000"><span onclick="newsort('<%=CmsStaticsFlow.ALIAS_ADDITION%>');"><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_ADDITION)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="CREATETIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="createtimelong_000"><span onclick="newsort('<%=CmsStaticsFlow.ALIAS_CREATETIMELONG%>');"><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_CREATETIMELONG)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="MODIFYTIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="modifytimelong_000"><span onclick="newsort('<%=CmsStaticsFlow.ALIAS_MODIFYTIMELONG%>');"><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_MODIFYTIMELONG)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="CREATEUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="createuser_000"><span onclick="newsort('<%=CmsStaticsFlow.ALIAS_CREATEUSER%>');"><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_CREATEUSER)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="MODIFYUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="modifyuser_000"><span onclick="newsort('<%=CmsStaticsFlow.ALIAS_MODIFYUSER%>');"><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_MODIFYUSER)%></span></th>
					</c:if>
				-->	
			
				
			
                
                	<c:set var="tt" value="URL"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="url_000"><span onClick="newsort('<%=CmsStaticsFlow.ALIAS_URL%>');"><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_URL)%></span></th>
					</c:if>
			
				<th>操作</th>
              </tr>
            </thead>

            <tbody>
            <c:forEach var="v" varStatus="vs" items="${pg.result}">
              <tr>
                <td>
                  <input type="checkbox" id="checkbox_${v.id}" />
                </td>
                
                	<c:set var="tt" value="ID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<td>${v.id}</td>
					</c:if>
				
                	<c:set var="tt" value="LONG_SESSION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="longSession_${v.id}" class="td123 longSessionTd">
${my:showcont('CmsStaticsFlow','longSession',v.longSession,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="VISIT_SESSION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="visitSession_${v.id}" class="td123 visitSessionTd">
${my:showcont('CmsStaticsFlow','visitSession',v.visitSession,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="IP_ADDRESS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ipAddress_${v.id}" class="td123 ipAddressTd">
${my:showcont('CmsStaticsFlow','ipAddress',v.ipAddress,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="IP_AREA"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ipArea_${v.id}" class="td123 ipAreaTd">
${my:showcont('CmsStaticsFlow','ipArea',v.ipArea,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="VISIT_TYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="visitType_${v.id}" class="td123 visitTypeTd">
${my:showcont('CmsStaticsFlow','visitType',v.visitType,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="DAY_VISIT_TIMES"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="dayVisitTimes_${v.id}" class="td123 dayVisitTimesTd">
${my:showcont('CmsStaticsFlow','dayVisitTimes',v.dayVisitTimes,0 )}			

				</td>
					</c:if>
				
                	<c:set var="tt" value="USER_ID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="userId_${v.id}" class="td123 userIdTd">
${my:showcont('CmsStaticsFlow','userId',v.userId,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="VISIT_TIME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="visitTime_${v.id}" class="td123 visitTimeTd">

${my:transTime(v.visitTimeLong)}
				</td>
					</c:if>
				
                	<c:set var="tt" value="VISIT_TIME_LONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="visitTimeLong_${v.id}" class="td123 visitTimeLongTd">
${my:showcont('CmsStaticsFlow','visitTimeLong',v.visitTimeLong,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="LAST_VISIT_TIME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="lastVisitTime_${v.id}" class="td123 lastVisitTimeTd">
${my:showcont('CmsStaticsFlow','lastVisitTime',v.lastVisitTime,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="LAST_VISIT_TIME_LONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="lastVisitTimeLong_${v.id}" class="td123 lastVisitTimeLongTd">
${my:showcont('CmsStaticsFlow','lastVisitTimeLong',v.lastVisitTimeLong,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="REFERER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="referer_${v.id}" class="td123 refererTd">
${my:showcont('CmsStaticsFlow','referer',v.referer,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="REFERER_SITE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="refererSite_${v.id}" class="td123 refererSiteTd">
${my:showcont('CmsStaticsFlow','refererSite',v.refererSite,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="ENTER_PAGE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="enterPage_${v.id}" class="td123 enterPageTd">
${my:showcont('CmsStaticsFlow','enterPage',v.enterPage,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="SEARCH_ENGE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="searchEnge_${v.id}" class="td123 searchEngeTd">
${my:showcont('CmsStaticsFlow','searchEnge',v.searchEnge,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="SEARCH_KEY"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="searchKey_${v.id}" class="td123 searchKeyTd">
${my:showcont('CmsStaticsFlow','searchKey',v.searchKey,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="OS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="os_${v.id}" class="td123 osTd">
${my:showcont('CmsStaticsFlow','os',v.os,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="OS_VERSION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="osVersion_${v.id}" class="td123 osVersionTd">
${my:showcont('CmsStaticsFlow','osVersion',v.osVersion,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="HARDWARE_TYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="hardwareType_${v.id}" class="td123 hardwareTypeTd">
${my:showcont('CmsStaticsFlow','hardwareType',v.hardwareType,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="SCREEN_WIDTH"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="screenWidth_${v.id}" class="td123 screenWidthTd">
${my:showcont('CmsStaticsFlow','screenWidth',v.screenWidth,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="SCREEN_HEIGHT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="screenHeight_${v.id}" class="td123 screenHeightTd">
${my:showcont('CmsStaticsFlow','screenHeight',v.screenHeight,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="SCREEN_COLOR"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="screenColor_${v.id}" class="td123 screenColorTd">
${my:showcont('CmsStaticsFlow','screenColor',v.screenColor,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="BROWSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="browser_${v.id}" class="td123 browserTd">
${my:showcont('CmsStaticsFlow','browser',v.browser,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="FLASH_VERSION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="flashVersion_${v.id}" class="td123 flashVersionTd">
${my:showcont('CmsStaticsFlow','flashVersion',v.flashVersion,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="COOKIE_SUPPORT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="cookieSupport_${v.id}" class="td123 cookieSupportTd">
${my:showcont('CmsStaticsFlow','cookieSupport',v.cookieSupport,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="JAVA_SUPPORT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="javaSupport_${v.id}" class="td123 javaSupportTd">
${my:showcont('CmsStaticsFlow','javaSupport',v.javaSupport,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="VISIT_YEAR"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="visitYear_${v.id}" class="td123 visitYearTd">
${my:showcont('CmsStaticsFlow','visitYear',v.visitYear,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="VISIT_MONTH"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="visitMonth_${v.id}" class="td123 visitMonthTd">
${my:showcont('CmsStaticsFlow','visitMonth',v.visitMonth,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="VISIT_DATE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="visitDate_${v.id}" class="td123 visitDateTd">
${my:showcont('CmsStaticsFlow','visitDate',v.visitDate,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="VISIT_DAY"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="visitDay_${v.id}" class="td123 visitDayTd">
${my:showcont('CmsStaticsFlow','visitDay',v.visitDay,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="VISIT_HOUR"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="visitHour_${v.id}" class="td123 visitHourTd">
${my:showcont('CmsStaticsFlow','visitHour',v.visitHour,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="VISIT_MINUTE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="visitMinute_${v.id}" class="td123 visitMinuteTd">
${my:showcont('CmsStaticsFlow','visitMinute',v.visitMinute,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="SITEID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="siteid_${v.id}" class="td123 siteidTd">
${my:showcont('CmsStaticsFlow','siteid',v.siteid,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="SITE_DOMAIN"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="siteDomain_${v.id}" class="td123 siteDomainTd">
${my:showcont('CmsStaticsFlow','siteDomain',v.siteDomain,0 )}							</td>
					</c:if>
				
				<!-- 
                	<c:set var="tt" value="STATUS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="status_${v.id}" class="td123 statusTd">
${my:showcont('CmsStaticsFlow','status',v.status,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="ADDITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="addition_${v.id}" class="td123 additionTd">
${my:showcont('CmsStaticsFlow','addition',v.addition,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="CREATETIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createtimelong_${v.id}" class="td123 createtimelongTd">
${my:showcont('CmsStaticsFlow','createtimelong',v.createtimelong,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="MODIFYTIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="modifytimelong_${v.id}" class="td123 modifytimelongTd">
${my:showcont('CmsStaticsFlow','modifytimelong',v.modifytimelong,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="CREATEUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createuser_${v.id}" class="td123 createuserTd">
${my:showcont('CmsStaticsFlow','createuser',v.createuser,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="MODIFYUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="modifyuser_${v.id}" class="td123 modifyuserTd">
${my:showcont('CmsStaticsFlow','modifyuser',v.modifyuser,0 )}							</td>
					</c:if>
				
				--> 
                	<c:set var="tt" value="URL"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="url_${v.id}" class="td123 urlTd">
${my:showcont('CmsStaticsFlow','url',v.url,0 )}							</td>
					</c:if>
				
                
                <td id="operate_${v.id}" class="operate111">
                  <!-- Icons-->
             	<c:choose>
        	<c:when test="${param.fromiframe eq null or param.fromiframe eq ''}">
        		<!--
            	<a class="xinzeng111" href="${ctx}/${actionBasePath}/create.do" title="新增"><img src="${ctx}/admin/resources/images/icons/pencil.png" alt="新增" /></a>
                 
                 
                  <a href="#" onClick="if(confirm('您确定要删除这条数据吗？')) window.location.href='${ctx}/${actionBasePath}/delete.do?items=${v.id}';" title="删除"><img src="${ctx}/admin/resources/images/icons/cross.png" alt="删除" /></a>
                  -->
                  <a class="iframe" href="${ctx}/${actionBasePath}/edit.do?id=${v.id}" title="修改"><img src="${ctx}/admin/resources/images/icons/hammer_screwdriver.png" alt="修改" /></a> 
${my:input('CmsStaticsFlow','list_iframe',v.id,-1,0 )}${my:input('CmsStaticsFlow','list_blank',v.id,-1,0 )}
           
            </c:when>
            <c:otherwise>
            	<a class="button" href="#" onClick="parent.didiframe(obj[${vs.index}],'${param.params}');">选取</a>
            </c:otherwise>
        </c:choose>	
             		
             		

                 </td>
              </tr>
           	</c:forEach>
            </tbody>
          </table>
          <br/><br/>
                  <div class="clear"></div>
                  <div class="align-left"> 
                  		
                  		<c:if test="${pg.thisPageNumber gt 1}">
                  			<a class="button" href="javascript:submitSearch(1);" title="首页">&laquo; 首页</a>
                  			<a class="button" href="javascript:submitSearch(${pg.previousPageNumber});" title="上页">&laquo; 上页</a>
                  		</c:if>
                  
                  		<c:forEach var="p" items="${pg.linkPageNumbers}">
                  			<c:choose>
                  				<c:when test="${p eq pg.thisPageNumber}">
                  					&nbsp;&nbsp;${p}&nbsp;&nbsp;
                  				</c:when>
                  				<c:otherwise>
                  					<a class="button" href="javascript:submitSearch(${p});" class="number" title="${p}">${p}</a>
                  				</c:otherwise>
                  			</c:choose>
                  			
                  		</c:forEach>
                  		
                  		<c:if test="${pg.thisPageNumber lt pg.lastPageNumber}">
                  			<a class="button" href="javascript:submitSearch(${pg.nextPageNumber});" title="下页">&raquo; 下页</a>
                  			<a class="button" href="javascript:submitSearch(${pg.lastPageNumber});" title="尾页">&raquo; 尾页</a>
                  		</c:if>
                  </div>
                  <!-- End .pagination -->
                  <div class="clear"></div>
        </div>
        <!-- End #tab1 -->

      </div>
      <!-- End .content-box-content -->
    </div>
    <!-- End .content-box -->
    
    <!-- 搜索 -->
        <div class="content-box column-right" style="width:100%">
      <div class="content-box-header">
        <!-- Add the class "closed" to the Content box header to have it closed by default -->
        <h3>搜索</h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">
          <form id="queryForm" name="queryForm" action="${ctx}/${actionBasePath}/list.do" method="post" style="display: inline;">
			<a href="#" class="button" onClick="$('#queryForm').submit();">查询</a>
				&nbsp;&nbsp;
				<a href="#" class="button" onClick="$('#queryForm').reset();">重置</a>
				<br/>
			
			<input type="hidden" id="pageNumber" name="pageNumber" value="${param.pageNumber}"/>
			<input type="hidden" id="pageSize" name="pageSize" value="10" />
			<input type="hidden" id="sort" name="sort" value="${param.sort}" />
			<input type="hidden" id="fromiframe" name="fromiframe" value="${param.fromiframe}" />
			<input type="hidden" id="params" name="params" value="${param.params}" />
			<fieldset>
			
			 <p id="id_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_ID)%></label>
${my:input('CmsStaticsFlow','id',param.id,0,-1 )}						
						
              </p>
			
			 <p id="longSession_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_LONG_SESSION)%></label>
${my:input('CmsStaticsFlow','longSession',param.longSession,0,-1 )}						
						
              </p>
			
			 <p id="visitSession_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_VISIT_SESSION)%></label>
${my:input('CmsStaticsFlow','visitSession',param.visitSession,0,-1 )}						
						
              </p>
			
			 <p id="ipAddress_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_IP_ADDRESS)%></label>
${my:input('CmsStaticsFlow','ipAddress',param.ipAddress,0,-1 )}						
						
              </p>
			
			 <p id="ipArea_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_IP_AREA)%></label>
${my:input('CmsStaticsFlow','ipArea',param.ipArea,0,-1 )}						
						
              </p>
			
			 <p id="visitType_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_VISIT_TYPE)%></label>
${my:input('CmsStaticsFlow','visitType',param.visitType,0,-1 )}						
						
              </p>
			
			 <p id="dayVisitTimes_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_DAY_VISIT_TIMES)%></label>
${my:input('CmsStaticsFlow','dayVisitTimes',param.dayVisitTimes,0,-1 )}						
						
              </p>
			
			 <p id="userId_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_USER_ID)%></label>
${my:input('CmsStaticsFlow','userId',param.userId,0,-1 )}						
						
              </p>
			
			 <p id="visitTime_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_VISIT_TIME)%></label>
${my:input('CmsStaticsFlow','visitTime',param.visitTime,0,-1 )}						
						
              </p>
			
			 <p id="visitTimeLong_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_VISIT_TIME_LONG)%></label>
${my:input('CmsStaticsFlow','visitTimeLong',param.visitTimeLong,0,-1 )}						
						
              </p>
			
			 <p id="lastVisitTime_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_LAST_VISIT_TIME)%></label>
${my:input('CmsStaticsFlow','lastVisitTime',param.lastVisitTime,0,-1 )}						
						
              </p>
			
			 <p id="lastVisitTimeLong_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_LAST_VISIT_TIME_LONG)%></label>
${my:input('CmsStaticsFlow','lastVisitTimeLong',param.lastVisitTimeLong,0,-1 )}						
						
              </p>
			
			 <p id="referer_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_REFERER)%></label>
${my:input('CmsStaticsFlow','referer',param.referer,0,-1 )}						
						
              </p>
			
			 <p id="refererSite_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_REFERER_SITE)%></label>
${my:input('CmsStaticsFlow','refererSite',param.refererSite,0,-1 )}						
						
              </p>
			
			 <p id="enterPage_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_ENTER_PAGE)%></label>
${my:input('CmsStaticsFlow','enterPage',param.enterPage,0,-1 )}						
						
              </p>
			
			 <p id="searchEnge_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_SEARCH_ENGE)%></label>
${my:input('CmsStaticsFlow','searchEnge',param.searchEnge,0,-1 )}						
						
              </p>
			
			 <p id="searchKey_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_SEARCH_KEY)%></label>
${my:input('CmsStaticsFlow','searchKey',param.searchKey,0,-1 )}						
						
              </p>
			
			 <p id="os_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_OS)%></label>
${my:input('CmsStaticsFlow','os',param.os,0,-1 )}						
						
              </p>
			
			 <p id="osVersion_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_OS_VERSION)%></label>
${my:input('CmsStaticsFlow','osVersion',param.osVersion,0,-1 )}						
						
              </p>
			
			 <p id="hardwareType_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_HARDWARE_TYPE)%></label>
${my:input('CmsStaticsFlow','hardwareType',param.hardwareType,0,-1 )}						
						
              </p>
			
			 <p id="screenWidth_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_SCREEN_WIDTH)%></label>
${my:input('CmsStaticsFlow','screenWidth',param.screenWidth,0,-1 )}						
						
              </p>
			
			 <p id="screenHeight_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_SCREEN_HEIGHT)%></label>
${my:input('CmsStaticsFlow','screenHeight',param.screenHeight,0,-1 )}						
						
              </p>
			
			 <p id="screenColor_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_SCREEN_COLOR)%></label>
${my:input('CmsStaticsFlow','screenColor',param.screenColor,0,-1 )}						
						
              </p>
			
			 <p id="browser_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_BROWSER)%></label>
${my:input('CmsStaticsFlow','browser',param.browser,0,-1 )}						
						
              </p>
			
			 <p id="flashVersion_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_FLASH_VERSION)%></label>
${my:input('CmsStaticsFlow','flashVersion',param.flashVersion,0,-1 )}						
						
              </p>
			
			 <p id="cookieSupport_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_COOKIE_SUPPORT)%></label>
${my:input('CmsStaticsFlow','cookieSupport',param.cookieSupport,0,-1 )}						
						
              </p>
			
			 <p id="javaSupport_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_JAVA_SUPPORT)%></label>
${my:input('CmsStaticsFlow','javaSupport',param.javaSupport,0,-1 )}						
						
              </p>
			
			 <p id="visitYear_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_VISIT_YEAR)%></label>
${my:input('CmsStaticsFlow','visitYear',param.visitYear,0,-1 )}						
						
              </p>
			
			 <p id="visitMonth_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_VISIT_MONTH)%></label>
${my:input('CmsStaticsFlow','visitMonth',param.visitMonth,0,-1 )}						
						
              </p>
			
			 <p id="visitDate_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_VISIT_DATE)%></label>
${my:input('CmsStaticsFlow','visitDate',param.visitDate,0,-1 )}						
						
              </p>
			
			 <p id="visitDay_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_VISIT_DAY)%></label>
${my:input('CmsStaticsFlow','visitDay',param.visitDay,0,-1 )}						
						
              </p>
			
			 <p id="visitHour_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_VISIT_HOUR)%></label>
${my:input('CmsStaticsFlow','visitHour',param.visitHour,0,-1 )}						
						
              </p>
			
			 <p id="visitMinute_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_VISIT_MINUTE)%></label>
${my:input('CmsStaticsFlow','visitMinute',param.visitMinute,0,-1 )}						
						
              </p>
			
			 <p id="siteid_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_SITEID)%></label>
${my:input('CmsStaticsFlow','siteid',param.siteid,0,-1 )}						
						
              </p>
			
			 <p id="siteDomain_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_SITE_DOMAIN)%></label>
${my:input('CmsStaticsFlow','siteDomain',param.siteDomain,0,-1 )}						
						
              </p>
			
				<!-- 
			 <p id="status_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_STATUS)%></label>
${my:input('CmsStaticsFlow','status',param.status,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="addition_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_ADDITION)%></label>
${my:input('CmsStaticsFlow','addition',param.addition,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="createtimelong_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_CREATETIMELONG)%></label>
${my:input('CmsStaticsFlow','createtimelong',param.createtimelong,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="modifytimelong_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_MODIFYTIMELONG)%></label>
${my:input('CmsStaticsFlow','modifytimelong',param.modifytimelong,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="createuser_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_CREATEUSER)%></label>
${my:input('CmsStaticsFlow','createuser',param.createuser,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="modifyuser_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_MODIFYUSER)%></label>
${my:input('CmsStaticsFlow','modifyuser',param.modifyuser,0,-1 )}						
						
              </p>
				-->
			
			 <p id="url_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsFlow",CmsStaticsFlow.ALIAS_URL)%></label>
${my:input('CmsStaticsFlow','url',param.url,0,-1 )}						
						
              </p>
				</fieldset>
				<br/>
				<a href="#" class="button" onClick="$('#queryForm').submit();">查询</a>
				&nbsp;&nbsp;
				<a href="#" class="button" onClick="$('#queryForm').reset();">重置</a>
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
	$('.iframe').fancybox({'width':widthPercent,'height':heightPercent,  'onClosed' :function() { $('#queryForm').submit();}});
	dorightlist();
});

function newsort(sortname) {
	var sort = $('#sort').val();
	if (sort == "")
		$('#sort').val(sortname);
	else {
		sort = sort.split(" ")[0];
		if (sort != sortname || $('#sort').val().split(" ").length > 1) {
			$('#sort').val(sortname);
		}
		else
			$('#sort').val(sortname + " desc");
	}
	$('#queryForm').submit();
}


function deleteids() {
		var items = "";
		for (var i = 1; i <= 10; i ++) {
			if($("#checkbox_" + i).attr("checked")=="checked") {
				if (items == "")
					items += "" + i;
				else 
					items += "," + i;
				
			}
		}
		
		window.location.href = "${ctx}/${actionBasePath}/delete.do?items=" + items;
	}
	
	
	function submitSearch(pageno) {
		document.getElementById('pageNumber').value = pageno;
		$('#queryForm').submit();
	}
	
	var str1 = '${my:resultlist(pg.result)}';
	var obj = eval('(' + str1 + ')');   
	
</script>
<!-- Download From www.exet.tk-->
</html>
