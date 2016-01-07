<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsCommonPoints.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/CmsCommonPoints" />
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
        <h3>编辑<%=JSTLTagUtils.getCnname("CmsCommonPoints","table_name")%></h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">
          	<form id="form1" action="${ctx}/kailian/CmsCommonPoints/update.do" method="post">
		<a class="button" onclick="if (doeditors()) $('#form1').submit();" >提交</a>&nbsp;&nbsp;
		<a class="button" onclick="backtolist();">返回列表</a>&nbsp;&nbsp;
		<a class="button" onclick="history.back();">后退</a>
		
		<input type="hidden" id="createtimelong" name="createtimelong" value="${model.createtimelong}"  />
		
		<fieldset>
		
			<input type="hidden" id="id" name="id" value="${model.id}"/>
		
		
		
		
		
		
		
		
		
		
		
		
		<!-- ONGL access static field: @package.class@field or @vs@field -->
			
			<p id='userid_p' class='p123'>
				 <label id='userid_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsCommonPoints",CmsCommonPoints.ALIAS_USERID)%>:
				 </label>
${my:input('CmsCommonPoints','userid',model.userid,10,0 )}
			</p>	
			
		
			
			<p id='username_p' class='p123'>
				 <label id='username_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsCommonPoints",CmsCommonPoints.ALIAS_USERNAME)%>:
				 </label>
${my:input('CmsCommonPoints','username',model.username,0,0 )}			</p>	
			
		
			
			<p id='userphoto_p' class='p123'>
				 <label id='userphoto_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsCommonPoints",CmsCommonPoints.ALIAS_USERPHOTO)%>:
				 </label>
${my:input('CmsCommonPoints','userphoto',model.userphoto,0,0 )}			</p>	
			
		
			
			<p id='point_p' class='p123'>
				 <label id='point_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsCommonPoints",CmsCommonPoints.ALIAS_POINT)%>:
				 </label>
${my:input('CmsCommonPoints','point',model.point,10,0 )}
			</p>	
			
		
			
			<p id='reason_p' class='p123'>
				 <label id='reason_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsCommonPoints",CmsCommonPoints.ALIAS_REASON)%>:
				 </label>
${my:input('CmsCommonPoints','reason',model.reason,0,0 )}			</p>	
			
		
				<!-- 
			
			<p id='status_p' class='p123'>
				 <label id='status_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsCommonPoints",CmsCommonPoints.ALIAS_STATUS)%>:
				 </label>
${my:input('CmsCommonPoints','status',model.status,10,0 )}
			</p>	
			
		
				--> 
			
			<p id='addition_p' class='p123'>
				 <label id='addition_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsCommonPoints",CmsCommonPoints.ALIAS_ADDITION)%>:
				 </label>
${my:input('CmsCommonPoints','addition',model.addition,0,0 )}			</p>	
			
		
				<!-- 
			
			<p id='createtimelong_p' class='p123'>
				 <label id='createtimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsCommonPoints",CmsCommonPoints.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:input('CmsCommonPoints','createtimelong',model.createtimelong,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='modifytimelong_p' class='p123'>
				 <label id='modifytimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsCommonPoints",CmsCommonPoints.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:input('CmsCommonPoints','modifytimelong',model.modifytimelong,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='createuser_p' class='p123'>
				 <label id='createuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsCommonPoints",CmsCommonPoints.ALIAS_CREATEUSER)%>:
				 </label>
${my:input('CmsCommonPoints','createuser',model.createuser,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='modifyuser_p' class='p123'>
				 <label id='modifyuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsCommonPoints",CmsCommonPoints.ALIAS_MODIFYUSER)%>:
				 </label>
${my:input('CmsCommonPoints','modifyuser',model.modifyuser,10,0 )}
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
