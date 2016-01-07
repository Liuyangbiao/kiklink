<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsGroupUser.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/CmsGroupUser" />
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
        <h3>查看<%=JSTLTagUtils.getCnname("CmsGroupUser","table_name")%></h3>
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
					<%=JSTLTagUtils.getCnname("CmsGroupUser",CmsGroupUser.ALIAS_GROUPID)%>:
				 </label>
${my:showcont('CmsGroupUser','groupid',v.groupid,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsGroupUser",CmsGroupUser.ALIAS_GROUPNAME)%>:
				 </label>
${my:showcont('CmsGroupUser','groupname',v.groupname,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsGroupUser",CmsGroupUser.ALIAS_GROUPPHOTO)%>:
				 </label>
${my:showcont('CmsGroupUser','groupphoto',v.groupphoto,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsGroupUser",CmsGroupUser.ALIAS_USERID)%>:
				 </label>
${my:showcont('CmsGroupUser','userid',v.userid,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsGroupUser",CmsGroupUser.ALIAS_USERNAME)%>:
				 </label>
${my:showcont('CmsGroupUser','username',v.username,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsGroupUser",CmsGroupUser.ALIAS_PHOTO)%>:
				 </label>
${my:showcont('CmsGroupUser','photo',v.photo,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsGroupUser",CmsGroupUser.ALIAS_USERLEVEL)%>:
				 </label>
${my:showcont('CmsGroupUser','userlevel',v.userlevel,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsGroupUser",CmsGroupUser.ALIAS_STATUS)%>:
				 </label>
${my:showcont('CmsGroupUser','status',v.status,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsGroupUser",CmsGroupUser.ALIAS_ADDITION)%>:
				 </label>
${my:showcont('CmsGroupUser','addition',v.addition,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsGroupUser",CmsGroupUser.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:showcont('CmsGroupUser','createtimelong',v.createtimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsGroupUser",CmsGroupUser.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:showcont('CmsGroupUser','modifytimelong',v.modifytimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsGroupUser",CmsGroupUser.ALIAS_CREATEUSER)%>:
				 </label>
${my:showcont('CmsGroupUser','createuser',v.createuser,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsGroupUser",CmsGroupUser.ALIAS_MODIFYUSER)%>:
				 </label>
${my:showcont('CmsGroupUser','modifyuser',v.modifyuser,0 )}			</p>	
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
