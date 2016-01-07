<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsAjaxConfig.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/CmsAjaxConfig" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="/admin/admincommon/head.jsp" %>
</head>
<body>
<div id="body-wrapper">
  <!-- LOGO与左侧菜单 -->
  <!-- End #sidebar -->
  <div id="main-content">
    <!-- 如果没有js -->
    <%@ include file="/admin/admincommon/nojs.jsp" %>
    <!-- 标题与大图标 -->
     <%@ include file="/admin/admincommon/headicons.jsp" %>
    <!-- End .clear -->

    
    <!-- 搜索 -->
        <div class="content-box column-right" style="width:100%">
      <div class="content-box-header">
        <!-- Add the class "closed" to the Content box header to have it closed by default -->
        <h3>编辑<%=JSTLTagUtils.getCnname("CmsAjaxConfig","table_name")%></h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">
          	<form id="form1" action="${ctx}/kailian/CmsAjaxConfig/update.do" method="post">
		<a class="button" onclick="if (doeditors()) $('#form1').submit();" >提交</a>&nbsp;&nbsp;
		<a class="button" onclick="backtolist();">返回列表</a>&nbsp;&nbsp;
		<a class="button" onclick="history.back();">后退</a>
		
		<input type="hidden" id="createtimelong" name="createtimelong" value="${model.createtimelong}"  />
		
		<fieldset>
		
			<input type="hidden" id="id" name="id" value="${model.id}"/>
		
		
		
		
		
		
		
		
		
		
		
		
		<!-- ONGL access static field: @package.class@field or @vs@field -->
			
			<p id='configtype_p' class='p123'>
				 <label id='configtype_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsAjaxConfig",CmsAjaxConfig.ALIAS_CONFIGTYPE)%>:
				 </label>
${my:input('CmsAjaxConfig','configtype',model.configtype,10,0 )}
			</p>	
			
		
			
			<p id='configtypename_p' class='p123'>
				 <label id='configtypename_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsAjaxConfig",CmsAjaxConfig.ALIAS_CONFIGTYPENAME)%>:
				 </label>
${my:input('CmsAjaxConfig','configtypename',model.configtypename,0,0 )}			</p>	
			
		
			
			<p id='configname_p' class='p123'>
				 <label id='configname_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsAjaxConfig",CmsAjaxConfig.ALIAS_CONFIGNAME)%>:
				 </label>
${my:input('CmsAjaxConfig','configname',model.configname,0,0 )}			</p>	
			
		
			
			<p id='ajaxulr_p' class='p123'>
				 <label id='ajaxulr_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsAjaxConfig",CmsAjaxConfig.ALIAS_AJAXULR)%>:
				 </label>
${my:input('CmsAjaxConfig','ajaxulr',model.ajaxulr,0,0 )}			</p>	
			
		
			
			<p id='inputdetails_p' class='p123'>
				 <label id='inputdetails_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsAjaxConfig",CmsAjaxConfig.ALIAS_INPUTDETAILS)%>:
				 </label>
${my:input('CmsAjaxConfig','inputdetails',model.inputdetails,0,0 )}			</p>	
			
		
				<!-- 
			
			<p id='status_p' class='p123'>
				 <label id='status_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsAjaxConfig",CmsAjaxConfig.ALIAS_STATUS)%>:
				 </label>
${my:input('CmsAjaxConfig','status',model.status,10,0 )}
			</p>	
			
		
				--> 
			
			<p id='addition_p' class='p123'>
				 <label id='addition_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsAjaxConfig",CmsAjaxConfig.ALIAS_ADDITION)%>:
				 </label>
${my:input('CmsAjaxConfig','addition',model.addition,0,0 )}			</p>	
			
		
				<!-- 
			
			<p id='createtimelong_p' class='p123'>
				 <label id='createtimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsAjaxConfig",CmsAjaxConfig.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:input('CmsAjaxConfig','createtimelong',model.createtimelong,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='modifytimelong_p' class='p123'>
				 <label id='modifytimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsAjaxConfig",CmsAjaxConfig.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:input('CmsAjaxConfig','modifytimelong',model.modifytimelong,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='createuser_p' class='p123'>
				 <label id='createuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsAjaxConfig",CmsAjaxConfig.ALIAS_CREATEUSER)%>:
				 </label>
${my:input('CmsAjaxConfig','createuser',model.createuser,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='modifyuser_p' class='p123'>
				 <label id='modifyuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsAjaxConfig",CmsAjaxConfig.ALIAS_MODIFYUSER)%>:
				 </label>
${my:input('CmsAjaxConfig','modifyuser',model.modifyuser,10,0 )}
			</p>	
			
		
				--> 
		</fieldset>
	</form>
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
<script type="text/javascript">
var host1 = "${ctx}";

$(document).ready(function(){
	$('.iframe').fancybox({'width':widthPercent,'height':heightPercent});
	doright();
});


	function submitSearch(pageno) {
		document.getElementById('pageNumber').value = pageno;
		$('#queryForm').submit();
	}
</script>
<!-- Download From www.exet.tk-->
</html>
