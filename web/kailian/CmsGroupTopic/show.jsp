<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsGroupTopic.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/CmsGroupTopic" />
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
        <h3>查看<%=JSTLTagUtils.getCnname("CmsGroupTopic","table_name")%></h3>
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
					<%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_TITLE)%>:
				 </label>
${my:showcont('CmsGroupTopic','title',v.title,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_TYPE)%>:
				 </label>
${my:showcont('CmsGroupTopic','type',v.type,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_CONTENT)%>:
				 </label>
${my:showcont('CmsGroupTopic','content',v.content,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_PHOTO)%>:
				 </label>
${my:showcont('CmsGroupTopic','photo',v.photo,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_REPLY_COUNT)%>:
				 </label>
${my:showcont('CmsGroupTopic','replyCount',v.replyCount,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_SUGGEST_COUNT)%>:
				 </label>
${my:showcont('CmsGroupTopic','suggestCount',v.suggestCount,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_FLOWER_COUNT)%>:
				 </label>
${my:showcont('CmsGroupTopic','flowerCount',v.flowerCount,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_EGG_COUNT)%>:
				 </label>
${my:showcont('CmsGroupTopic','eggCount',v.eggCount,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_USERID)%>:
				 </label>
${my:showcont('CmsGroupTopic','userid',v.userid,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_GROUPID)%>:
				 </label>
${my:showcont('CmsGroupTopic','groupid',v.groupid,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_STATUS)%>:
				 </label>
${my:showcont('CmsGroupTopic','status',v.status,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_ADDITION)%>:
				 </label>
${my:showcont('CmsGroupTopic','addition',v.addition,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:showcont('CmsGroupTopic','createtimelong',v.createtimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:showcont('CmsGroupTopic','modifytimelong',v.modifytimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_CREATEUSER)%>:
				 </label>
${my:showcont('CmsGroupTopic','createuser',v.createuser,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_MODIFYUSER)%>:
				 </label>
${my:showcont('CmsGroupTopic','modifyuser',v.modifyuser,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_EXT1)%>:
				 </label>
${my:showcont('CmsGroupTopic','ext1',v.ext1,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_EXT2)%>:
				 </label>
${my:showcont('CmsGroupTopic','ext2',v.ext2,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_EXT3)%>:
				 </label>
${my:showcont('CmsGroupTopic','ext3',v.ext3,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_EXT4)%>:
				 </label>
${my:showcont('CmsGroupTopic','ext4',v.ext4,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_EXT5)%>:
				 </label>
${my:showcont('CmsGroupTopic','ext5',v.ext5,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_EXT_INT1)%>:
				 </label>
${my:showcont('CmsGroupTopic','extInt1',v.extInt1,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_EXT_INT2)%>:
				 </label>
${my:showcont('CmsGroupTopic','extInt2',v.extInt2,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_EXT_INT3)%>:
				 </label>
${my:showcont('CmsGroupTopic','extInt3',v.extInt3,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_EXT_INT4)%>:
				 </label>
${my:showcont('CmsGroupTopic','extInt4',v.extInt4,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_EXT_INT5)%>:
				 </label>
${my:showcont('CmsGroupTopic','extInt5',v.extInt5,0 )}			</p>	
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
