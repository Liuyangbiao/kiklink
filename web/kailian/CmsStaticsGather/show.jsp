<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsStaticsGather.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/CmsStaticsGather" />
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
        <h3>查看<%=JSTLTagUtils.getCnname("CmsStaticsGather","table_name")%></h3>
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
					<%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_GATHER_TYPE)%>:
				 </label>
${my:showcont('CmsStaticsGather','gatherType',v.gatherType,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_TIME_TYPE)%>:
				 </label>
${my:showcont('CmsStaticsGather','timeType',v.timeType,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_DATA)%>:
				 </label>
${my:showcont('CmsStaticsGather','data',v.data,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_COUNT)%>:
				 </label>
${my:showcont('CmsStaticsGather','count',v.count,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_VISIT_YEAR)%>:
				 </label>
${my:showcont('CmsStaticsGather','visitYear',v.visitYear,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_VISIT_MONTH)%>:
				 </label>
${my:showcont('CmsStaticsGather','visitMonth',v.visitMonth,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_VISIT_DATE)%>:
				 </label>
${my:showcont('CmsStaticsGather','visitDate',v.visitDate,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_VISIT_DAY)%>:
				 </label>
${my:showcont('CmsStaticsGather','visitDay',v.visitDay,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_VISIT_HOUR)%>:
				 </label>
${my:showcont('CmsStaticsGather','visitHour',v.visitHour,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_VISIT_MINUTE)%>:
				 </label>
${my:showcont('CmsStaticsGather','visitMinute',v.visitMinute,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_SITEID)%>:
				 </label>
${my:showcont('CmsStaticsGather','siteid',v.siteid,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_SITE_DOMAIN)%>:
				 </label>
${my:showcont('CmsStaticsGather','siteDomain',v.siteDomain,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_ADDITION)%>:
				 </label>
${my:showcont('CmsStaticsGather','addition',v.addition,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:showcont('CmsStaticsGather','createtimelong',v.createtimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:showcont('CmsStaticsGather','modifytimelong',v.modifytimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_CREATEUSER)%>:
				 </label>
${my:showcont('CmsStaticsGather','createuser',v.createuser,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_MODIFYUSER)%>:
				 </label>
${my:showcont('CmsStaticsGather','modifyuser',v.modifyuser,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_STATUS)%>:
				 </label>
${my:showcont('CmsStaticsGather','status',v.status,0 )}			</p>	
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
