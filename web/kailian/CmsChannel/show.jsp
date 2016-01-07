<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsChannel.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/CmsChannel" />
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
        <h3>查看<%=JSTLTagUtils.getCnname("CmsChannel","table_name")%></h3>
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
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_PARENT_ID)%>:
				 </label>
${my:showcont('CmsChannel','parentId',v.parentId,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_NAME)%>:
				 </label>
${my:showcont('CmsChannel','name',v.name,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_PATH)%>:
				 </label>
${my:showcont('CmsChannel','path',v.path,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_TITILE)%>:
				 </label>
${my:showcont('CmsChannel','titile',v.titile,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_KEYWORDS)%>:
				 </label>
${my:showcont('CmsChannel','keywords',v.keywords,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_DESCRIPTION)%>:
				 </label>
${my:showcont('CmsChannel','description',v.description,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_CHANNEL_TYPE)%>:
				 </label>
${my:showcont('CmsChannel','channelType',v.channelType,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_CHANNEL_TEMPLATE)%>:
				 </label>
${my:showcont('CmsChannel','channelTemplate',v.channelTemplate,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_CONTENT_TEMPLATE)%>:
				 </label>
${my:showcont('CmsChannel','contentTemplate',v.contentTemplate,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_CHANNEL_STATIC_PATH)%>:
				 </label>
${my:showcont('CmsChannel','channelStaticPath',v.channelStaticPath,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_CONTENT_STATIC_PATH)%>:
				 </label>
${my:showcont('CmsChannel','contentStaticPath',v.contentStaticPath,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_RANK)%>:
				 </label>
${my:showcont('CmsChannel','rank',v.rank,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_DISPLAY)%>:
				 </label>
${my:showcont('CmsChannel','display',v.display,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_DOCIMG)%>:
				 </label>
${my:showcont('CmsChannel','docimg',v.docimg,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_AUDIT_LEVEL)%>:
				 </label>
${my:showcont('CmsChannel','auditLevel',v.auditLevel,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_AFTER_CHECK)%>:
				 </label>
${my:showcont('CmsChannel','afterCheck',v.afterCheck,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_COMMENT_TYPE)%>:
				 </label>
${my:showcont('CmsChannel','commentType',v.commentType,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_FLOWER_EGG)%>:
				 </label>
${my:showcont('CmsChannel','flowerEgg',v.flowerEgg,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_VIEW_RIGHT)%>:
				 </label>
${my:showcont('CmsChannel','viewRight',v.viewRight,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_LINK)%>:
				 </label>
${my:showcont('CmsChannel','link',v.link,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_TITLEIMG)%>:
				 </label>
${my:showcont('CmsChannel','titleimg',v.titleimg,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_WORK_FLOW_ID)%>:
				 </label>
${my:showcont('CmsChannel','workFlowId',v.workFlowId,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_STATUS)%>:
				 </label>
${my:showcont('CmsChannel','status',v.status,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_ADDITION)%>:
				 </label>
${my:showcont('CmsChannel','addition',v.addition,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:showcont('CmsChannel','createtimelong',v.createtimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:showcont('CmsChannel','modifytimelong',v.modifytimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_CREATEUSER)%>:
				 </label>
${my:showcont('CmsChannel','createuser',v.createuser,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_MODIFYUSER)%>:
				 </label>
${my:showcont('CmsChannel','modifyuser',v.modifyuser,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_EXT1)%>:
				 </label>
${my:showcont('CmsChannel','ext1',v.ext1,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_EXT2)%>:
				 </label>
${my:showcont('CmsChannel','ext2',v.ext2,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_EXT3)%>:
				 </label>
${my:showcont('CmsChannel','ext3',v.ext3,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_EXT4)%>:
				 </label>
${my:showcont('CmsChannel','ext4',v.ext4,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_EXT5)%>:
				 </label>
${my:showcont('CmsChannel','ext5',v.ext5,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_EXTINT1)%>:
				 </label>
${my:showcont('CmsChannel','extint1',v.extint1,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_EXTINT2)%>:
				 </label>
${my:showcont('CmsChannel','extint2',v.extint2,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_EXTINT3)%>:
				 </label>
${my:showcont('CmsChannel','extint3',v.extint3,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_EXTINT4)%>:
				 </label>
${my:showcont('CmsChannel','extint4',v.extint4,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_EXTINT5)%>:
				 </label>
${my:showcont('CmsChannel','extint5',v.extint5,0 )}			</p>	
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
