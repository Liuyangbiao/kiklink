<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsInputTable.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/CmsInputTable" />
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
        <h3>查看<%=JSTLTagUtils.getCnname("CmsInputTable","table_name")%></h3>
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
					<%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_CLASS_NAME)%>:
				 </label>
${my:showcont('CmsInputTable','className',v.className,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_INPUT_NAME)%>:
				 </label>
${my:showcont('CmsInputTable','inputName',v.inputName,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_CLASS_COMMENT)%>:
				 </label>
${my:showcont('CmsInputTable','classComment',v.classComment,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_INPUT_COMMENT)%>:
				 </label>
${my:showcont('CmsInputTable','inputComment',v.inputComment,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_INPUT_TYPE)%>:
				 </label>
${my:showcont('CmsInputTable','inputType',v.inputType,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_INPUT_EN_NAME)%>:
				 </label>
${my:showcont('CmsInputTable','inputEnName',v.inputEnName,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_INPUT_CN_NAME)%>:
				 </label>
${my:showcont('CmsInputTable','inputCnName',v.inputCnName,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_LINK_CLASS_NAME)%>:
				 </label>
${my:showcont('CmsInputTable','linkClassName',v.linkClassName,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_LINK_INPUT_NAME)%>:
				 </label>
${my:showcont('CmsInputTable','linkInputName',v.linkInputName,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_LINK_PARAM)%>:
				 </label>
${my:showcont('CmsInputTable','linkParam',v.linkParam,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_INPUT_ADDITION)%>:
				 </label>
${my:showcont('CmsInputTable','inputAddition',v.inputAddition,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_STATUS)%>:
				 </label>
${my:showcont('CmsInputTable','status',v.status,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_ADDITION)%>:
				 </label>
${my:showcont('CmsInputTable','addition',v.addition,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:showcont('CmsInputTable','createtimelong',v.createtimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:showcont('CmsInputTable','modifytimelong',v.modifytimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_CREATEUSER)%>:
				 </label>
${my:showcont('CmsInputTable','createuser',v.createuser,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_MODIFYUSER)%>:
				 </label>
${my:showcont('CmsInputTable','modifyuser',v.modifyuser,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_LUCENE_INDEX_TYPE)%>:
				 </label>
${my:showcont('CmsInputTable','luceneIndexType',v.luceneIndexType,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_MINLENGTH)%>:
				 </label>
${my:showcont('CmsInputTable','minlength',v.minlength,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_MAXLENGTH)%>:
				 </label>
${my:showcont('CmsInputTable','maxlength',v.maxlength,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_REQUIRED)%>:
				 </label>
${my:showcont('CmsInputTable','required',v.required,0 )}			</p>	
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
