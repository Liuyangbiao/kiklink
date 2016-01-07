<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsActivity.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/CmsActivity" />
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
        <h3>查看<%=JSTLTagUtils.getCnname("CmsActivity","table_name")%></h3>
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
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_TITLE)%>:
				 </label>
${my:showcont('CmsActivity','title',v.title,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_TARGET_TYPE)%>:
				 </label>
${my:showcont('CmsActivity','targetType',v.targetType,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_TARGET_ID)%>:
				 </label>
${my:showcont('CmsActivity','targetId',v.targetId,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_JOIN_TYPE)%>:
				 </label>
${my:showcont('CmsActivity','joinType',v.joinType,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_JOIN_LIMIT)%>:
				 </label>
${my:showcont('CmsActivity','joinLimit',v.joinLimit,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_JOIN_COUNT)%>:
				 </label>
${my:showcont('CmsActivity','joinCount',v.joinCount,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_CONTENT)%>:
				 </label>
${my:showcont('CmsActivity','content',v.content,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_VALID_DATE_LONG)%>:
				 </label>
${my:showcont('CmsActivity','validDateLong',v.validDateLong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_VALID_DATE)%>:
				 </label>
${my:showcont('CmsActivity','validDate',v.validDate,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_INVALID_DATE_LONG)%>:
				 </label>
${my:showcont('CmsActivity','invalidDateLong',v.invalidDateLong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_INVALID_DATE)%>:
				 </label>
${my:showcont('CmsActivity','invalidDate',v.invalidDate,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_STATUS)%>:
				 </label>
${my:showcont('CmsActivity','status',v.status,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_ADDITION)%>:
				 </label>
${my:showcont('CmsActivity','addition',v.addition,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:showcont('CmsActivity','createtimelong',v.createtimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:showcont('CmsActivity','modifytimelong',v.modifytimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_CREATEUSER)%>:
				 </label>
${my:showcont('CmsActivity','createuser',v.createuser,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_MODIFYUSER)%>:
				 </label>
${my:showcont('CmsActivity','modifyuser',v.modifyuser,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_EXT1)%>:
				 </label>
${my:showcont('CmsActivity','ext1',v.ext1,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_EXT2)%>:
				 </label>
${my:showcont('CmsActivity','ext2',v.ext2,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_EXT3)%>:
				 </label>
${my:showcont('CmsActivity','ext3',v.ext3,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_EXT4)%>:
				 </label>
${my:showcont('CmsActivity','ext4',v.ext4,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_EXT5)%>:
				 </label>
${my:showcont('CmsActivity','ext5',v.ext5,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_EXT_INT1)%>:
				 </label>
${my:showcont('CmsActivity','extInt1',v.extInt1,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_EXT_INT2)%>:
				 </label>
${my:showcont('CmsActivity','extInt2',v.extInt2,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_EXT_INT3)%>:
				 </label>
${my:showcont('CmsActivity','extInt3',v.extInt3,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_EXT_INT4)%>:
				 </label>
${my:showcont('CmsActivity','extInt4',v.extInt4,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_EXT_INT5)%>:
				 </label>
${my:showcont('CmsActivity','extInt5',v.extInt5,0 )}			</p>	
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
