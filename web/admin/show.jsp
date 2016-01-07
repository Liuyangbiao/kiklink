<%@page import="com.kailian.glo.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsBiaodanConfig.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/CmsBiaodanConfig" />
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
        <h3>查看<%=CmsBiaodanConfig.TABLE_ALIAS %></h3>
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
					<%=CmsBiaodanConfig.ALIAS_INPUT_LIST_ID%>:
				 </label>
${model.inputListId}			</p>	
			
			<p>
				 <label>
					<%=CmsBiaodanConfig.ALIAS_INPUT_TYPE%>:
				 </label>
${model.inputType}			</p>	
			
			<p>
				 <label>
					<%=CmsBiaodanConfig.ALIAS_INPUT_NAME%>:
				 </label>
${model.inputName}			</p>	
			
			<p>
				 <label>
					<%=CmsBiaodanConfig.ALIAS_STATUS%>:
				 </label>
${model.status}			</p>	
			
			<p>
				 <label>
					<%=CmsBiaodanConfig.ALIAS_ADDITION%>:
				 </label>
${model.addition}			</p>	
			
			<p>
				 <label>
					<%=CmsBiaodanConfig.ALIAS_CREATETIMELONG%>:
				 </label>
${model.createtimelong}			</p>	
			
			<p>
				 <label>
					<%=CmsBiaodanConfig.ALIAS_MODIFYTIMELONG%>:
				 </label>
${model.modifytimelong}			</p>	
			
			<p>
				 <label>
					<%=CmsBiaodanConfig.ALIAS_CREATEUSER%>:
				 </label>
${model.createuser}			</p>	
			
			<p>
				 <label>
					<%=CmsBiaodanConfig.ALIAS_MODIFYUSER%>:
				 </label>
${model.modifyuser}			</p>	
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
