<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsSurveyRecord.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/CmsSurveyRecord" />
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
        <h3>创建<%=JSTLTagUtils.getCnname("CmsSurveyRecord","table_name")%></h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">
          	<form id="form1" action="${ctx}/kailian/CmsSurveyRecord/save.do" method="post">
		<a class="button" onclick="if(doeditors()) $('#form1').submit();" >提交</a>&nbsp;&nbsp;
		<a class="button" onclick="backtolist();">返回列表</a>&nbsp;&nbsp;
		<a class="button" onclick="history.back();">后退</a>
		
		<fieldset>
			<input type="hidden" id="id" name="id" value="${model.id}"/>
		
		<!-- ONGL access static field: @package.class@field or @vs@field -->
		
			<c:set var="tt" value="ID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			</c:if>
		
			<c:set var="tt" value="OPTION_ID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='optionId_p' class='p123'>
				 <label id='optionId_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsSurveyRecord",CmsSurveyRecord.ALIAS_OPTION_ID)%>:
				 </label>
${my:input('CmsSurveyRecord','optionId',model.optionId,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="USERWORD"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='userword_p' class='p123'>
				 <label id='userword_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsSurveyRecord",CmsSurveyRecord.ALIAS_USERWORD)%>:
				 </label>
${my:input('CmsSurveyRecord','userword',model.userword,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="SYEAR"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='syear_p' class='p123'>
				 <label id='syear_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsSurveyRecord",CmsSurveyRecord.ALIAS_SYEAR)%>:
				 </label>
${my:input('CmsSurveyRecord','syear',model.syear,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="SMONTH"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='smonth_p' class='p123'>
				 <label id='smonth_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsSurveyRecord",CmsSurveyRecord.ALIAS_SMONTH)%>:
				 </label>
${my:input('CmsSurveyRecord','smonth',model.smonth,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="SDATE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='sdate_p' class='p123'>
				 <label id='sdate_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsSurveyRecord",CmsSurveyRecord.ALIAS_SDATE)%>:
				 </label>
${my:input('CmsSurveyRecord','sdate',model.sdate,10,0 )}
			</p>	
			</c:if>
				<!-- 
		
			<c:set var="tt" value="STATUS"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='status_p' class='p123'>
				 <label id='status_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsSurveyRecord",CmsSurveyRecord.ALIAS_STATUS)%>:
				 </label>
${my:input('CmsSurveyRecord','status',model.status,10,0 )}
			</p>	
			</c:if>
				-->
		
			<c:set var="tt" value="ADDITION"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='addition_p' class='p123'>
				 <label id='addition_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsSurveyRecord",CmsSurveyRecord.ALIAS_ADDITION)%>:
				 </label>
${my:input('CmsSurveyRecord','addition',model.addition,0,0 )}			</p>	
			</c:if>
				<!-- 
		
			<c:set var="tt" value="CREATETIMELONG"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='createtimelong_p' class='p123'>
				 <label id='createtimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsSurveyRecord",CmsSurveyRecord.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:input('CmsSurveyRecord','createtimelong',model.createtimelong,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="MODIFYTIMELONG"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='modifytimelong_p' class='p123'>
				 <label id='modifytimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsSurveyRecord",CmsSurveyRecord.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:input('CmsSurveyRecord','modifytimelong',model.modifytimelong,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="CREATEUSER"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='createuser_p' class='p123'>
				 <label id='createuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsSurveyRecord",CmsSurveyRecord.ALIAS_CREATEUSER)%>:
				 </label>
${my:input('CmsSurveyRecord','createuser',model.createuser,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="MODIFYUSER"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='modifyuser_p' class='p123'>
				 <label id='modifyuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsSurveyRecord",CmsSurveyRecord.ALIAS_MODIFYUSER)%>:
				 </label>
${my:input('CmsSurveyRecord','modifyuser',model.modifyuser,10,0 )}
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
