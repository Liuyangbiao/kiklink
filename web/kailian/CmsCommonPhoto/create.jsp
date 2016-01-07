<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsCommonPhoto.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/CmsCommonPhoto" />
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
        <h3>创建<%=JSTLTagUtils.getCnname("CmsCommonPhoto","table_name")%></h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">
          	<form id="form1" action="${ctx}/kailian/CmsCommonPhoto/save.do" method="post">
		<a class="button" onclick="if(doeditors()) $('#form1').submit();" >提交</a>&nbsp;&nbsp;
		<a class="button" onclick="backtolist();">返回列表</a>&nbsp;&nbsp;
		<a class="button" onclick="history.back();">后退</a>
		
		<fieldset>
			<input type="hidden" id="id" name="id" value="${model.id}"/>
		
		<!-- ONGL access static field: @package.class@field or @vs@field -->
		
			<c:set var="tt" value="ID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			</c:if>
		
			<c:set var="tt" value="OWNNERID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='ownnerid_p' class='p123'>
				 <label id='ownnerid_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_OWNNERID)%>:
				 </label>
${my:input('CmsCommonPhoto','ownnerid',model.ownnerid,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="OWNNERTYPE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='ownnertype_p' class='p123'>
				 <label id='ownnertype_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_OWNNERTYPE)%>:
				 </label>
${my:input('CmsCommonPhoto','ownnertype',model.ownnertype,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="TARGET_TYPE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='targetType_p' class='p123'>
				 <label id='targetType_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_TARGET_TYPE)%>:
				 </label>
${my:input('CmsCommonPhoto','targetType',model.targetType,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="TARGET_ID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='targetId_p' class='p123'>
				 <label id='targetId_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_TARGET_ID)%>:
				 </label>
${my:input('CmsCommonPhoto','targetId',model.targetId,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="RESOURCETYPE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='resourcetype_p' class='p123'>
				 <label id='resourcetype_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_RESOURCETYPE)%>:
				 </label>
${my:input('CmsCommonPhoto','resourcetype',model.resourcetype,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="CATEGORY"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='category_p' class='p123'>
				 <label id='category_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_CATEGORY)%>:
				 </label>
${my:input('CmsCommonPhoto','category',model.category,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="RESOURCE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='resource_p' class='p123'>
				 <label id='resource_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_RESOURCE)%>:
				 </label>
${my:input('CmsCommonPhoto','resource',model.resource,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="NAME"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='name_p' class='p123'>
				 <label id='name_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_NAME)%>:
				 </label>
${my:input('CmsCommonPhoto','name',model.name,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="COMMENT"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='comment_p' class='p123'>
				 <label id='comment_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_COMMENT)%>:
				 </label>
${my:input('CmsCommonPhoto','comment',model.comment,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="QUANZHONG"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='quanzhong_p' class='p123'>
				 <label id='quanzhong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_QUANZHONG)%>:
				 </label>
${my:input('CmsCommonPhoto','quanzhong',model.quanzhong,10,0 )}
			</p>	
			</c:if>
				<!-- 
		
			<c:set var="tt" value="STATUS"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='status_p' class='p123'>
				 <label id='status_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_STATUS)%>:
				 </label>
${my:input('CmsCommonPhoto','status',model.status,10,0 )}
			</p>	
			</c:if>
				-->
		
			<c:set var="tt" value="ADDITION"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='addition_p' class='p123'>
				 <label id='addition_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_ADDITION)%>:
				 </label>
${my:input('CmsCommonPhoto','addition',model.addition,0,0 )}			</p>	
			</c:if>
				<!-- 
		
			<c:set var="tt" value="CREATETIMELONG"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='createtimelong_p' class='p123'>
				 <label id='createtimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:input('CmsCommonPhoto','createtimelong',model.createtimelong,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="MODIFYTIMELONG"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='modifytimelong_p' class='p123'>
				 <label id='modifytimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:input('CmsCommonPhoto','modifytimelong',model.modifytimelong,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="CREATEUSER"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='createuser_p' class='p123'>
				 <label id='createuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_CREATEUSER)%>:
				 </label>
${my:input('CmsCommonPhoto','createuser',model.createuser,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="MODIFYUSER"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='modifyuser_p' class='p123'>
				 <label id='modifyuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_MODIFYUSER)%>:
				 </label>
${my:input('CmsCommonPhoto','modifyuser',model.modifyuser,10,0 )}
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
