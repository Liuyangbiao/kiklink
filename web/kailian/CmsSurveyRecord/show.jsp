<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsSurveyRecord.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/CmsSurveyRecord" />
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
        <h3>查看<%=JSTLTagUtils.getCnname("CmsSurveyRecord","table_name")%></h3>
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
					<%=JSTLTagUtils.getCnname("CmsSurveyRecord",CmsSurveyRecord.ALIAS_OPTION_ID)%>:
				 </label>
${my:showcont('CmsSurveyRecord','optionId',v.optionId,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsSurveyRecord",CmsSurveyRecord.ALIAS_USERWORD)%>:
				 </label>
${my:showcont('CmsSurveyRecord','userword',v.userword,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsSurveyRecord",CmsSurveyRecord.ALIAS_SYEAR)%>:
				 </label>
${my:showcont('CmsSurveyRecord','syear',v.syear,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsSurveyRecord",CmsSurveyRecord.ALIAS_SMONTH)%>:
				 </label>
${my:showcont('CmsSurveyRecord','smonth',v.smonth,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsSurveyRecord",CmsSurveyRecord.ALIAS_SDATE)%>:
				 </label>
${my:showcont('CmsSurveyRecord','sdate',v.sdate,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsSurveyRecord",CmsSurveyRecord.ALIAS_STATUS)%>:
				 </label>
${my:showcont('CmsSurveyRecord','status',v.status,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsSurveyRecord",CmsSurveyRecord.ALIAS_ADDITION)%>:
				 </label>
${my:showcont('CmsSurveyRecord','addition',v.addition,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsSurveyRecord",CmsSurveyRecord.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:showcont('CmsSurveyRecord','createtimelong',v.createtimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsSurveyRecord",CmsSurveyRecord.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:showcont('CmsSurveyRecord','modifytimelong',v.modifytimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsSurveyRecord",CmsSurveyRecord.ALIAS_CREATEUSER)%>:
				 </label>
${my:showcont('CmsSurveyRecord','createuser',v.createuser,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsSurveyRecord",CmsSurveyRecord.ALIAS_MODIFYUSER)%>:
				 </label>
${my:showcont('CmsSurveyRecord','modifyuser',v.modifyuser,0 )}			</p>	
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
