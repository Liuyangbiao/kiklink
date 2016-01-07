<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsIpdata.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/CmsIpdata" />
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
        <h3>查看<%=JSTLTagUtils.getCnname("CmsIpdata","table_name")%></h3>
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
					<%=JSTLTagUtils.getCnname("CmsIpdata",CmsIpdata.ALIAS_IPFROM)%>:
				 </label>
${my:showcont('CmsIpdata','ipfrom',v.ipfrom,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsIpdata",CmsIpdata.ALIAS_IPTO)%>:
				 </label>
${my:showcont('CmsIpdata','ipto',v.ipto,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsIpdata",CmsIpdata.ALIAS_IPCOMMON)%>:
				 </label>
${my:showcont('CmsIpdata','ipcommon',v.ipcommon,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsIpdata",CmsIpdata.ALIAS_NUM_FROM)%>:
				 </label>
${my:showcont('CmsIpdata','numFrom',v.numFrom,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsIpdata",CmsIpdata.ALIAS_NUM_TO)%>:
				 </label>
${my:showcont('CmsIpdata','numTo',v.numTo,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsIpdata",CmsIpdata.ALIAS_AREA)%>:
				 </label>
${my:showcont('CmsIpdata','area',v.area,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsIpdata",CmsIpdata.ALIAS_OPERATIOR)%>:
				 </label>
${my:showcont('CmsIpdata','operatior',v.operatior,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsIpdata",CmsIpdata.ALIAS_STATUS)%>:
				 </label>
${my:showcont('CmsIpdata','status',v.status,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsIpdata",CmsIpdata.ALIAS_ADDITION)%>:
				 </label>
${my:showcont('CmsIpdata','addition',v.addition,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsIpdata",CmsIpdata.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:showcont('CmsIpdata','createtimelong',v.createtimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsIpdata",CmsIpdata.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:showcont('CmsIpdata','modifytimelong',v.modifytimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsIpdata",CmsIpdata.ALIAS_CREATEUSER)%>:
				 </label>
${my:showcont('CmsIpdata','createuser',v.createuser,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsIpdata",CmsIpdata.ALIAS_MODIFYUSER)%>:
				 </label>
${my:showcont('CmsIpdata','modifyuser',v.modifyuser,0 )}			</p>	
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
