<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsAdminGroup.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/CmsAdminGroup" />
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
        <h3>编辑<%=JSTLTagUtils.getCnname("CmsAdminGroup","table_name")%></h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">
          	<form id="form1" action="${ctx}/kailian/CmsAdminGroup/update.do" method="post">
		<a class="button" onClick="if (doeditors()) $('#form1').submit();" >提交</a>&nbsp;&nbsp;
		<a class="button" onClick="backtolist();">返回列表</a>&nbsp;&nbsp;
		<a class="button" onClick="history.back();">后退</a>
		
		<input type="hidden" id="createtimelong" name="createtimelong" value="${model.createtimelong}"  />
		
		<fieldset>
		
			<input type="hidden" id="id" name="id" value="${model.id}"/>
		
		
		
		
		
		
		
		
		
		
		
		<!-- ONGL access static field: @package.class@field or @vs@field -->
			
			<p id='groupName_p' class='p123'>
				 <label id='groupName_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsAdminGroup",CmsAdminGroup.ALIAS_GROUP_NAME)%>:
				 </label>
${my:input('CmsAdminGroup','groupName',model.groupName,0,0 )}			</p>	
			
		
			
			<p id='rightLevelId_p' class='p123'>
				 <label id='rightLevelId_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsAdminGroup",CmsAdminGroup.ALIAS_RIGHT_LEVEL_ID)%>:
				 </label>
${my:input('CmsAdminGroup','rightLevelId',model.rightLevelId,10,0 )}
			</p>	
			
		
			
			<p id='rightChannelId_p' class='p123'>
				 <label id='rightChannelId_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsAdminGroup",CmsAdminGroup.ALIAS_RIGHT_CHANNEL_ID)%>:
				 </label>
${my:input('CmsAdminGroup','rightChannelId',model.rightChannelId,10,0 )}
			</p>	
			
		
			
			<p id='userCount_p' class='p123'>
				 <label id='userCount_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsAdminGroup",CmsAdminGroup.ALIAS_USER_COUNT)%>:
				 </label>
${my:input('CmsAdminGroup','userCount',model.userCount,10,0 )}
			</p>	
			
		
				<!-- 
			
			<p id='status_p' class='p123'>
				 <label id='status_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsAdminGroup",CmsAdminGroup.ALIAS_STATUS)%>:
				 </label>
${my:input('CmsAdminGroup','status',model.status,10,0 )}
			</p>	
			
		
				--> 
			
			<p id='addition_p' class='p123'>
				 <label id='addition_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsAdminGroup",CmsAdminGroup.ALIAS_ADDITION)%>:
				 </label>
${my:input('CmsAdminGroup','addition',model.addition,0,0 )}	
<a class="button iframe" href="${ctx}/kailian/CmsRightTable/allrights.jsp?addition=${model.addition}">选择权限</a>	</p>	
			
		
				<!-- 
			
			<p id='createtimelong_p' class='p123'>
				 <label id='createtimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsAdminGroup",CmsAdminGroup.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:input('CmsAdminGroup','createtimelong',model.createtimelong,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='modifytimelong_p' class='p123'>
				 <label id='modifytimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsAdminGroup",CmsAdminGroup.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:input('CmsAdminGroup','modifytimelong',model.modifytimelong,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='createuser_p' class='p123'>
				 <label id='createuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsAdminGroup",CmsAdminGroup.ALIAS_CREATEUSER)%>:
				 </label>
${my:input('CmsAdminGroup','createuser',model.createuser,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='modifyuser_p' class='p123'>
				 <label id='modifyuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsAdminGroup",CmsAdminGroup.ALIAS_MODIFYUSER)%>:
				 </label>
${my:input('CmsAdminGroup','modifyuser',model.modifyuser,10,0 )}
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
