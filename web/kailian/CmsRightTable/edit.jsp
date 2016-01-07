<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsRightTable.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/CmsRightTable" />
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
        <h3>编辑<%=JSTLTagUtils.getCnname("CmsRightTable","table_name")%></h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">
          	<form id="form1" action="${ctx}/kailian/CmsRightTable/update.do" method="post">
		<a class="button" onclick="if (doeditors()) $('#form1').submit();" >提交</a>&nbsp;&nbsp;
		<a class="button" onclick="backtolist();">返回列表</a>&nbsp;&nbsp;
		<a class="button" onclick="history.back();">后退</a>
		
		<input type="hidden" id="createtimelong" name="createtimelong" value="${model.createtimelong}"  />
		
		<fieldset>
		
			<input type="hidden" id="id" name="id" value="${model.id}"/>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		<!-- ONGL access static field: @package.class@field or @vs@field -->
			
			<p id='className_p' class='p123'>
				 <label id='className_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsRightTable",CmsRightTable.ALIAS_CLASS_NAME)%>:
				 </label>
${my:input('CmsRightTable','className',model.className,0,0 )}			</p>	
			
		
			
			<p id='methodName_p' class='p123'>
				 <label id='methodName_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsRightTable",CmsRightTable.ALIAS_METHOD_NAME)%>:
				 </label>
${my:input('CmsRightTable','methodName',model.methodName,0,0 )}			</p>	
			
		
			
			<p id='classComment_p' class='p123'>
				 <label id='classComment_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsRightTable",CmsRightTable.ALIAS_CLASS_COMMENT)%>:
				 </label>
${my:input('CmsRightTable','classComment',model.classComment,0,0 )}			</p>	
			
		
			
			<p id='methodComment_p' class='p123'>
				 <label id='methodComment_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsRightTable",CmsRightTable.ALIAS_METHOD_COMMENT)%>:
				 </label>
${my:input('CmsRightTable','methodComment',model.methodComment,0,0 )}			</p>	
			
		
			
			<p id='showInList_p' class='p123'>
				 <label id='showInList_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsRightTable",CmsRightTable.ALIAS_SHOW_IN_LIST)%>:
				 </label>
${my:input('CmsRightTable','showInList',model.showInList,10,0 )}
			</p>	
			
		
			
			<p id='logInDatabase_p' class='p123'>
				 <label id='logInDatabase_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsRightTable",CmsRightTable.ALIAS_LOG_IN_DATABASE)%>:
				 </label>
${my:input('CmsRightTable','logInDatabase',model.logInDatabase,10,0 )}
			</p>	
			
		
			
			<p id='visitRightLevel_p' class='p123'>
				 <label id='visitRightLevel_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsRightTable",CmsRightTable.ALIAS_VISIT_RIGHT_LEVEL)%>:
				 </label>
${my:input('CmsRightTable','visitRightLevel',model.visitRightLevel,10,0 )}
			</p>	
			
		
				<!-- 
			
			<p id='status_p' class='p123'>
				 <label id='status_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsRightTable",CmsRightTable.ALIAS_STATUS)%>:
				 </label>
${my:input('CmsRightTable','status',model.status,10,0 )}
			</p>	
			
		
				--> 
			
			<p id='addition_p' class='p123'>
				 <label id='addition_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsRightTable",CmsRightTable.ALIAS_ADDITION)%>:
				 </label>
${my:input('CmsRightTable','addition',model.addition,0,0 )}			</p>	
			
		
				<!-- 
			
			<p id='createtimelong_p' class='p123'>
				 <label id='createtimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsRightTable",CmsRightTable.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:input('CmsRightTable','createtimelong',model.createtimelong,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='modifytimelong_p' class='p123'>
				 <label id='modifytimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsRightTable",CmsRightTable.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:input('CmsRightTable','modifytimelong',model.modifytimelong,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='createuser_p' class='p123'>
				 <label id='createuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsRightTable",CmsRightTable.ALIAS_CREATEUSER)%>:
				 </label>
${my:input('CmsRightTable','createuser',model.createuser,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='modifyuser_p' class='p123'>
				 <label id='modifyuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsRightTable",CmsRightTable.ALIAS_MODIFYUSER)%>:
				 </label>
${my:input('CmsRightTable','modifyuser',model.modifyuser,10,0 )}
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
