<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsAdminuser.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/CmsAdminuser" />
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
        <h3>创建<%=JSTLTagUtils.getCnname("CmsAdminuser","table_name")%></h3>
        &nbsp;&nbsp;
        <h3>${map['word']}</h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">
          	<form id="form1" action="${ctx}/kailian/CmsAdminuser/save.do" method="post">
		<a class="button" onclick="if(doeditors()) $('#form1').submit();" >提交</a>&nbsp;&nbsp;
		<a class="button" onclick="backtolist();">返回列表</a>&nbsp;&nbsp;
		<a class="button" onclick="history.back();">后退</a>
		
		<fieldset>
			<input type="hidden" id="id" name="id" value="${model.id}"/>
		
		<!-- ONGL access static field: @package.class@field or @vs@field -->
		
			<c:set var="tt" value="ID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			</c:if>
		
			<c:set var="tt" value="USERNAME"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='username_p' class='p123'>
				 <label id='username_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsAdminuser",CmsAdminuser.ALIAS_USERNAME)%>:
				 </label>
${my:input('CmsAdminuser','username',model.username,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="PASSWD"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='passwd_p' class='p123'>
				 <label id='passwd_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsAdminuser",CmsAdminuser.ALIAS_PASSWD)%>:
				 </label>
${my:input('CmsAdminuser','passwd',model.passwd,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="NAME"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='name_p' class='p123'>
				 <label id='name_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsAdminuser",CmsAdminuser.ALIAS_NAME)%>:
				 </label>
${my:input('CmsAdminuser','name',model.name,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="EMAIL"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='email_p' class='p123'>
				 <label id='email_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsAdminuser",CmsAdminuser.ALIAS_EMAIL)%>:
				 </label>
${my:input('CmsAdminuser','email',model.email,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="PHONE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='phone_p' class='p123'>
				 <label id='phone_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsAdminuser",CmsAdminuser.ALIAS_PHONE)%>:
				 </label>
${my:input('CmsAdminuser','phone',model.phone,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="MOBILE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='mobile_p' class='p123'>
				 <label id='mobile_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsAdminuser",CmsAdminuser.ALIAS_MOBILE)%>:
				 </label>
${my:input('CmsAdminuser','mobile',model.mobile,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="USERLEVEL"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='userlevel_p' class='p123'>
				 <label id='userlevel_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsAdminuser",CmsAdminuser.ALIAS_USERLEVEL)%>:
				 </label>
${my:input('CmsAdminuser','userlevel',model.userlevel,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="USER_GROUP_ID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='userGroupId_p' class='p123'>
				 <label id='userGroupId_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsAdminuser",CmsAdminuser.ALIAS_USER_GROUP_ID)%>:
				 </label>
${my:input('CmsAdminuser','userGroupId',model.userGroupId,10,0 )}
			</p>	
			</c:if>
				<!-- 
		
			<c:set var="tt" value="STATUS"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='status_p' class='p123'>
				 <label id='status_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsAdminuser",CmsAdminuser.ALIAS_STATUS)%>:
				 </label>
${my:input('CmsAdminuser','status',model.status,10,0 )}
			</p>	
			</c:if>
				-->
		
			<c:set var="tt" value="ADDITION"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='addition_p' class='p123'>
				 <label id='addition_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsAdminuser",CmsAdminuser.ALIAS_ADDITION)%>:
				 </label>
${my:input('CmsAdminuser','addition',model.addition,0,0 )}			</p>	
			</c:if>
				<!-- 
		
			<c:set var="tt" value="CREATETIMELONG"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='createtimelong_p' class='p123'>
				 <label id='createtimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsAdminuser",CmsAdminuser.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:input('CmsAdminuser','createtimelong',model.createtimelong,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="MODIFYTIMELONG"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='modifytimelong_p' class='p123'>
				 <label id='modifytimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsAdminuser",CmsAdminuser.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:input('CmsAdminuser','modifytimelong',model.modifytimelong,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="CREATEUSER"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='createuser_p' class='p123'>
				 <label id='createuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsAdminuser",CmsAdminuser.ALIAS_CREATEUSER)%>:
				 </label>
${my:input('CmsAdminuser','createuser',model.createuser,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="MODIFYUSER"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='modifyuser_p' class='p123'>
				 <label id='modifyuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsAdminuser",CmsAdminuser.ALIAS_MODIFYUSER)%>:
				 </label>
${my:input('CmsAdminuser','modifyuser',model.modifyuser,10,0 )}
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
