<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsStSpecialtopic.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/CmsStSpecialtopic" />
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
        <h3>查看<%=JSTLTagUtils.getCnname("CmsStSpecialtopic","table_name")%></h3>
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
					<%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_TOPICNAME)%>:
				 </label>
${my:showcont('CmsStSpecialtopic','topicname',v.topicname,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_KEYWORDS)%>:
				 </label>
${my:showcont('CmsStSpecialtopic','keywords',v.keywords,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_DESCRIPTION)%>:
				 </label>
${my:showcont('CmsStSpecialtopic','description',v.description,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_BGIMG1)%>:
				 </label>
${my:showcont('CmsStSpecialtopic','bgimg1',v.bgimg1,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_BGIMG2)%>:
				 </label>
${my:showcont('CmsStSpecialtopic','bgimg2',v.bgimg2,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_SUGGESTWORDS)%>:
				 </label>
${my:showcont('CmsStSpecialtopic','suggestwords',v.suggestwords,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_HEADIMG)%>:
				 </label>
${my:showcont('CmsStSpecialtopic','headimg',v.headimg,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_TOPICTYPE)%>:
				 </label>
${my:showcont('CmsStSpecialtopic','topictype',v.topictype,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_TEMPLATEID)%>:
				 </label>
${my:showcont('CmsStSpecialtopic','templateid',v.templateid,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_RANK)%>:
				 </label>
${my:showcont('CmsStSpecialtopic','rank',v.rank,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_STYLECLASS)%>:
				 </label>
${my:showcont('CmsStSpecialtopic','styleclass',v.styleclass,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_EXT1)%>:
				 </label>
${my:showcont('CmsStSpecialtopic','ext1',v.ext1,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_EXT2)%>:
				 </label>
${my:showcont('CmsStSpecialtopic','ext2',v.ext2,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_EXT3)%>:
				 </label>
${my:showcont('CmsStSpecialtopic','ext3',v.ext3,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_EXT4)%>:
				 </label>
${my:showcont('CmsStSpecialtopic','ext4',v.ext4,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_EXT5)%>:
				 </label>
${my:showcont('CmsStSpecialtopic','ext5',v.ext5,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_EXT_INT1)%>:
				 </label>
${my:showcont('CmsStSpecialtopic','extInt1',v.extInt1,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_EXT_INT2)%>:
				 </label>
${my:showcont('CmsStSpecialtopic','extInt2',v.extInt2,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_EXT_INT3)%>:
				 </label>
${my:showcont('CmsStSpecialtopic','extInt3',v.extInt3,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_EXT_INT4)%>:
				 </label>
${my:showcont('CmsStSpecialtopic','extInt4',v.extInt4,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_EXT_INT5)%>:
				 </label>
${my:showcont('CmsStSpecialtopic','extInt5',v.extInt5,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_STATUS)%>:
				 </label>
${my:showcont('CmsStSpecialtopic','status',v.status,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_ADDITION)%>:
				 </label>
${my:showcont('CmsStSpecialtopic','addition',v.addition,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:showcont('CmsStSpecialtopic','createtimelong',v.createtimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:showcont('CmsStSpecialtopic','modifytimelong',v.modifytimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_CREATEUSER)%>:
				 </label>
${my:showcont('CmsStSpecialtopic','createuser',v.createuser,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_MODIFYUSER)%>:
				 </label>
${my:showcont('CmsStSpecialtopic','modifyuser',v.modifyuser,0 )}			</p>	
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
