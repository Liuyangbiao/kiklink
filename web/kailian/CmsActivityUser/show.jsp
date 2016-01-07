<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsActivityUser.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/CmsActivityUser" />
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
        <h3>查看<%=JSTLTagUtils.getCnname("CmsActivityUser","table_name")%></h3>
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
					<%=JSTLTagUtils.getCnname("CmsActivityUser",CmsActivityUser.ALIAS_ACTIVITYID)%>:
				 </label>
${my:showcont('CmsActivityUser','activityid',v.activityid,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsActivityUser",CmsActivityUser.ALIAS_USERID)%>:
				 </label>
${my:showcont('CmsActivityUser','userid',v.userid,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsActivityUser",CmsActivityUser.ALIAS_TITLE)%>:
				 </label>
${my:showcont('CmsActivityUser','title',v.title,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsActivityUser",CmsActivityUser.ALIAS_USERNAME)%>:
				 </label>
${my:showcont('CmsActivityUser','username',v.username,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsActivityUser",CmsActivityUser.ALIAS_USER_PHOTO)%>:
				 </label>
${my:showcont('CmsActivityUser','userPhoto',v.userPhoto,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsActivityUser",CmsActivityUser.ALIAS_STATUS)%>:
				 </label>
${my:showcont('CmsActivityUser','status',v.status,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsActivityUser",CmsActivityUser.ALIAS_ADDITION)%>:
				 </label>
${my:showcont('CmsActivityUser','addition',v.addition,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsActivityUser",CmsActivityUser.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:showcont('CmsActivityUser','createtimelong',v.createtimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsActivityUser",CmsActivityUser.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:showcont('CmsActivityUser','modifytimelong',v.modifytimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsActivityUser",CmsActivityUser.ALIAS_CREATEUSER)%>:
				 </label>
${my:showcont('CmsActivityUser','createuser',v.createuser,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsActivityUser",CmsActivityUser.ALIAS_MODIFYUSER)%>:
				 </label>
${my:showcont('CmsActivityUser','modifyuser',v.modifyuser,0 )}			</p>	
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
