<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsUserEmail.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/CmsUserEmail" />
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
        <h3>创建<%=JSTLTagUtils.getCnname("CmsUserEmail","table_name")%></h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">
          	<form id="form1" action="${ctx}/kailian/CmsUserEmail/save.do" method="post">
		<a class="button" onclick="if(doeditors()) $('#form1').submit();" >提交</a>&nbsp;&nbsp;
		<a class="button" onclick="backtolist();">返回列表</a>&nbsp;&nbsp;
		<a class="button" onclick="history.back();">后退</a>
		
		<fieldset>
			<input type="hidden" id="id" name="id" value="${model.id}"/>
		
		<!-- ONGL access static field: @package.class@field or @vs@field -->
		
			<c:set var="tt" value="ID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			</c:if>
		
			<c:set var="tt" value="SOURCE_TYPE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='sourceType_p' class='p123'>
				 <label id='sourceType_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsUserEmail",CmsUserEmail.ALIAS_SOURCE_TYPE)%>:
				 </label>
${my:input('CmsUserEmail','sourceType',model.sourceType,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="FROM_USER_ID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='fromUserId_p' class='p123'>
				 <label id='fromUserId_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsUserEmail",CmsUserEmail.ALIAS_FROM_USER_ID)%>:
				 </label>
${my:input('CmsUserEmail','fromUserId',model.fromUserId,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="TO_USER_ID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='toUserId_p' class='p123'>
				 <label id='toUserId_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsUserEmail",CmsUserEmail.ALIAS_TO_USER_ID)%>:
				 </label>
${my:input('CmsUserEmail','toUserId',model.toUserId,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="FROM_USER_NAME"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='fromUserName_p' class='p123'>
				 <label id='fromUserName_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsUserEmail",CmsUserEmail.ALIAS_FROM_USER_NAME)%>:
				 </label>
${my:input('CmsUserEmail','fromUserName',model.fromUserName,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="TO_USER_NAME"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='toUserName_p' class='p123'>
				 <label id='toUserName_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsUserEmail",CmsUserEmail.ALIAS_TO_USER_NAME)%>:
				 </label>
${my:input('CmsUserEmail','toUserName',model.toUserName,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="FROM_USER_PHOTO"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='fromUserPhoto_p' class='p123'>
				 <label id='fromUserPhoto_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsUserEmail",CmsUserEmail.ALIAS_FROM_USER_PHOTO)%>:
				 </label>
${my:input('CmsUserEmail','fromUserPhoto',model.fromUserPhoto,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="TO_USER_PHOTO"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='toUserPhoto_p' class='p123'>
				 <label id='toUserPhoto_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsUserEmail",CmsUserEmail.ALIAS_TO_USER_PHOTO)%>:
				 </label>
${my:input('CmsUserEmail','toUserPhoto',model.toUserPhoto,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="CONTENT"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='content_p' class='p123'>
				 <label id='content_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsUserEmail",CmsUserEmail.ALIAS_CONTENT)%>:
				 </label>
${my:input('CmsUserEmail','content',model.content,0,0 )}			</p>	
			</c:if>
				<!-- 
		
			<c:set var="tt" value="STATUS"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='status_p' class='p123'>
				 <label id='status_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsUserEmail",CmsUserEmail.ALIAS_STATUS)%>:
				 </label>
${my:input('CmsUserEmail','status',model.status,10,0 )}
			</p>	
			</c:if>
				-->
		
			<c:set var="tt" value="ADDITION"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='addition_p' class='p123'>
				 <label id='addition_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsUserEmail",CmsUserEmail.ALIAS_ADDITION)%>:
				 </label>
${my:input('CmsUserEmail','addition',model.addition,0,0 )}			</p>	
			</c:if>
				<!-- 
		
			<c:set var="tt" value="CREATETIMELONG"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='createtimelong_p' class='p123'>
				 <label id='createtimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsUserEmail",CmsUserEmail.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:input('CmsUserEmail','createtimelong',model.createtimelong,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="MODIFYTIMELONG"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='modifytimelong_p' class='p123'>
				 <label id='modifytimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsUserEmail",CmsUserEmail.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:input('CmsUserEmail','modifytimelong',model.modifytimelong,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="CREATEUSER"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='createuser_p' class='p123'>
				 <label id='createuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsUserEmail",CmsUserEmail.ALIAS_CREATEUSER)%>:
				 </label>
${my:input('CmsUserEmail','createuser',model.createuser,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="MODIFYUSER"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='modifyuser_p' class='p123'>
				 <label id='modifyuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsUserEmail",CmsUserEmail.ALIAS_MODIFYUSER)%>:
				 </label>
${my:input('CmsUserEmail','modifyuser',model.modifyuser,10,0 )}
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
