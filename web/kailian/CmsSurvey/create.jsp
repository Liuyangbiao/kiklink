<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsSurvey.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/CmsSurvey" />
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
        <h3>创建<%=JSTLTagUtils.getCnname("CmsSurvey","table_name")%></h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">
          	<form id="form1" action="${ctx}/kailian/CmsSurvey/save.do" method="post">
		<a class="button" onclick="if(doeditors()) $('#form1').submit();" >提交</a>&nbsp;&nbsp;
		<a class="button" onclick="backtolist();">返回列表</a>&nbsp;&nbsp;
		<a class="button" onclick="history.back();">后退</a>
		
		<fieldset>
			<input type="hidden" id="id" name="id" value="${model.id}"/>
		
		<!-- ONGL access static field: @package.class@field or @vs@field -->
		
			<c:set var="tt" value="ID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			</c:if>
		
			<c:set var="tt" value="CNNAME"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='cnname_p' class='p123'>
				 <label id='cnname_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsSurvey",CmsSurvey.ALIAS_CNNAME)%>:
				 </label>
${my:input('CmsSurvey','cnname',model.cnname,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="ENNAME"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='enname_p' class='p123'>
				 <label id='enname_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsSurvey",CmsSurvey.ALIAS_ENNAME)%>:
				 </label>
${my:input('CmsSurvey','enname',model.enname,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="SURVEY_TYPE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='surveyType_p' class='p123'>
				 <label id='surveyType_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsSurvey",CmsSurvey.ALIAS_SURVEY_TYPE)%>:
				 </label>
${my:input('CmsSurvey','surveyType',model.surveyType,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="LISTCOUNT"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='listcount_p' class='p123'>
				 <label id='listcount_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsSurvey",CmsSurvey.ALIAS_LISTCOUNT)%>:
				 </label>
${my:input('CmsSurvey','listcount',model.listcount,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="SURVEYCOUNT"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='surveycount_p' class='p123'>
				 <label id='surveycount_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsSurvey",CmsSurvey.ALIAS_SURVEYCOUNT)%>:
				 </label>
${my:input('CmsSurvey','surveycount',model.surveycount,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="TAGS"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='tags_p' class='p123'>
				 <label id='tags_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsSurvey",CmsSurvey.ALIAS_TAGS)%>:
				 </label>
${my:input('CmsSurvey','tags',model.tags,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="DECLEARATION"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='declearation_p' class='p123'>
				 <label id='declearation_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsSurvey",CmsSurvey.ALIAS_DECLEARATION)%>:
				 </label>
${my:input('CmsSurvey','declearation',model.declearation,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="COVERIMG"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='coverimg_p' class='p123'>
				 <label id='coverimg_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsSurvey",CmsSurvey.ALIAS_COVERIMG)%>:
				 </label>
${my:input('CmsSurvey','coverimg',model.coverimg,0,0 )}			</p>	
			</c:if>
				<!-- 
		
			<c:set var="tt" value="STATUS"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='status_p' class='p123'>
				 <label id='status_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsSurvey",CmsSurvey.ALIAS_STATUS)%>:
				 </label>
${my:input('CmsSurvey','status',model.status,10,0 )}
			</p>	
			</c:if>
				-->
		
			<c:set var="tt" value="ADDITION"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='addition_p' class='p123'>
				 <label id='addition_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsSurvey",CmsSurvey.ALIAS_ADDITION)%>:
				 </label>
${my:input('CmsSurvey','addition',model.addition,0,0 )}			</p>	
			</c:if>
				<!-- 
		
			<c:set var="tt" value="CREATETIMELONG"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='createtimelong_p' class='p123'>
				 <label id='createtimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsSurvey",CmsSurvey.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:input('CmsSurvey','createtimelong',model.createtimelong,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="MODIFYTIMELONG"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='modifytimelong_p' class='p123'>
				 <label id='modifytimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsSurvey",CmsSurvey.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:input('CmsSurvey','modifytimelong',model.modifytimelong,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="CREATEUSER"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='createuser_p' class='p123'>
				 <label id='createuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsSurvey",CmsSurvey.ALIAS_CREATEUSER)%>:
				 </label>
${my:input('CmsSurvey','createuser',model.createuser,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="MODIFYUSER"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='modifyuser_p' class='p123'>
				 <label id='modifyuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsSurvey",CmsSurvey.ALIAS_MODIFYUSER)%>:
				 </label>
${my:input('CmsSurvey','modifyuser',model.modifyuser,10,0 )}
			</p>	
			</c:if>
				-->
		
			<c:set var="tt" value="SURVEY_ID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='surveyId_p' class='p123'>
				 <label id='surveyId_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsSurvey",CmsSurvey.ALIAS_SURVEY_ID)%>:
				 </label>
${my:input('CmsSurvey','surveyId',model.surveyId,10,0 )}
			</p>	
			</c:if>
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
