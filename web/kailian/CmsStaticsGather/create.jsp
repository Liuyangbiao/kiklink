<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsStaticsGather.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/CmsStaticsGather" />
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
        <h3>创建<%=JSTLTagUtils.getCnname("CmsStaticsGather","table_name")%></h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">
          	<form id="form1" action="${ctx}/kailian/CmsStaticsGather/save.do" method="post">
		<a class="button" onclick="if(doeditors()) $('#form1').submit();" >提交</a>&nbsp;&nbsp;
		<a class="button" onclick="backtolist();">返回列表</a>&nbsp;&nbsp;
		<a class="button" onclick="history.back();">后退</a>
		
		<fieldset>
			<input type="hidden" id="id" name="id" value="${model.id}"/>
		
		<!-- ONGL access static field: @package.class@field or @vs@field -->
		
			<c:set var="tt" value="ID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			</c:if>
		
			<c:set var="tt" value="GATHER_TYPE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='gatherType_p' class='p123'>
				 <label id='gatherType_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_GATHER_TYPE)%>:
				 </label>
${my:input('CmsStaticsGather','gatherType',model.gatherType,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="TIME_TYPE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='timeType_p' class='p123'>
				 <label id='timeType_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_TIME_TYPE)%>:
				 </label>
${my:input('CmsStaticsGather','timeType',model.timeType,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="DATA"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='data_p' class='p123'>
				 <label id='data_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_DATA)%>:
				 </label>
${my:input('CmsStaticsGather','data',model.data,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="COUNT"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='count_p' class='p123'>
				 <label id='count_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_COUNT)%>:
				 </label>
${my:input('CmsStaticsGather','count',model.count,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="VISIT_YEAR"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='visitYear_p' class='p123'>
				 <label id='visitYear_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_VISIT_YEAR)%>:
				 </label>
${my:input('CmsStaticsGather','visitYear',model.visitYear,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="VISIT_MONTH"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='visitMonth_p' class='p123'>
				 <label id='visitMonth_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_VISIT_MONTH)%>:
				 </label>
${my:input('CmsStaticsGather','visitMonth',model.visitMonth,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="VISIT_DATE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='visitDate_p' class='p123'>
				 <label id='visitDate_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_VISIT_DATE)%>:
				 </label>
${my:input('CmsStaticsGather','visitDate',model.visitDate,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="VISIT_DAY"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='visitDay_p' class='p123'>
				 <label id='visitDay_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_VISIT_DAY)%>:
				 </label>
${my:input('CmsStaticsGather','visitDay',model.visitDay,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="VISIT_HOUR"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='visitHour_p' class='p123'>
				 <label id='visitHour_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_VISIT_HOUR)%>:
				 </label>
${my:input('CmsStaticsGather','visitHour',model.visitHour,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="VISIT_MINUTE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='visitMinute_p' class='p123'>
				 <label id='visitMinute_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_VISIT_MINUTE)%>:
				 </label>
${my:input('CmsStaticsGather','visitMinute',model.visitMinute,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="SITEID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='siteid_p' class='p123'>
				 <label id='siteid_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_SITEID)%>:
				 </label>
${my:input('CmsStaticsGather','siteid',model.siteid,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="SITE_DOMAIN"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='siteDomain_p' class='p123'>
				 <label id='siteDomain_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_SITE_DOMAIN)%>:
				 </label>
${my:input('CmsStaticsGather','siteDomain',model.siteDomain,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="ADDITION"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='addition_p' class='p123'>
				 <label id='addition_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_ADDITION)%>:
				 </label>
${my:input('CmsStaticsGather','addition',model.addition,0,0 )}			</p>	
			</c:if>
				<!-- 
		
			<c:set var="tt" value="CREATETIMELONG"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='createtimelong_p' class='p123'>
				 <label id='createtimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:input('CmsStaticsGather','createtimelong',model.createtimelong,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="MODIFYTIMELONG"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='modifytimelong_p' class='p123'>
				 <label id='modifytimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:input('CmsStaticsGather','modifytimelong',model.modifytimelong,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="CREATEUSER"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='createuser_p' class='p123'>
				 <label id='createuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_CREATEUSER)%>:
				 </label>
${my:input('CmsStaticsGather','createuser',model.createuser,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="MODIFYUSER"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='modifyuser_p' class='p123'>
				 <label id='modifyuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_MODIFYUSER)%>:
				 </label>
${my:input('CmsStaticsGather','modifyuser',model.modifyuser,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="STATUS"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='status_p' class='p123'>
				 <label id='status_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_STATUS)%>:
				 </label>
${my:input('CmsStaticsGather','status',model.status,10,0 )}
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
