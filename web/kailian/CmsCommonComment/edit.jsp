<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsCommonComment.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/CmsCommonComment" />
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
        <h3>编辑<%=JSTLTagUtils.getCnname("CmsCommonComment","table_name")%></h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">
          	<form id="form1" action="${ctx}/kailian/CmsCommonComment/update.do" method="post">
		<a class="button" onclick="if (doeditors()) $('#form1').submit();" >提交</a>&nbsp;&nbsp;
		<a class="button" onclick="backtolist();">返回列表</a>&nbsp;&nbsp;
		<a class="button" onclick="history.back();">后退</a>
		
		<input type="hidden" id="createtimelong" name="createtimelong" value="${model.createtimelong}"  />
		
		<fieldset>
		
			<input type="hidden" id="id" name="id" value="${model.id}"/>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		<!-- ONGL access static field: @package.class@field or @vs@field -->
			
			<p id='userid_p' class='p123'>
				 <label id='userid_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_USERID)%>:
				 </label>
${my:input('CmsCommonComment','userid',model.userid,10,0 )}
			</p>	
			
		
			
			<p id='username_p' class='p123'>
				 <label id='username_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_USERNAME)%>:
				 </label>
${my:input('CmsCommonComment','username',model.username,0,0 )}			</p>	
			
		
			
			<p id='userphoto_p' class='p123'>
				 <label id='userphoto_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_USERPHOTO)%>:
				 </label>
${my:input('CmsCommonComment','userphoto',model.userphoto,0,0 )}			</p>	
			
		
			
			<p id='targetType_p' class='p123'>
				 <label id='targetType_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_TARGET_TYPE)%>:
				 </label>
${my:input('CmsCommonComment','targetType',model.targetType,10,0 )}
			</p>	
			
		
			
			<p id='targetId_p' class='p123'>
				 <label id='targetId_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_TARGET_ID)%>:
				 </label>
${my:input('CmsCommonComment','targetId',model.targetId,10,0 )}
			</p>	
			
		
			
			<p id='commentType_p' class='p123'>
				 <label id='commentType_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_COMMENT_TYPE)%>:
				 </label>
${my:input('CmsCommonComment','commentType',model.commentType,10,0 )}
			</p>	
			
		
			
			<p id='comment_p' class='p123'>
				 <label id='comment_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_COMMENT)%>:
				 </label>
${my:input('CmsCommonComment','comment',model.comment,0,0 )}			</p>	
			
		
			
			<p id='pointDescriptionMatch_p' class='p123'>
				 <label id='pointDescriptionMatch_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_POINT_DESCRIPTION_MATCH)%>:
				 </label>
${my:input('CmsCommonComment','pointDescriptionMatch',model.pointDescriptionMatch,10,0 )}
			</p>	
			
		
			
			<p id='pointPerfational_p' class='p123'>
				 <label id='pointPerfational_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_POINT_PERFATIONAL)%>:
				 </label>
${my:input('CmsCommonComment','pointPerfational',model.pointPerfational,10,0 )}
			</p>	
			
		
			
			<p id='pointServiceAttitude_p' class='p123'>
				 <label id='pointServiceAttitude_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_POINT_SERVICE_ATTITUDE)%>:
				 </label>
${my:input('CmsCommonComment','pointServiceAttitude',model.pointServiceAttitude,10,0 )}
			</p>	
			
		
			
			<p id='pointAppointmentSuccessful_p' class='p123'>
				 <label id='pointAppointmentSuccessful_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_POINT_APPOINTMENT_SUCCESSFUL)%>:
				 </label>
${my:input('CmsCommonComment','pointAppointmentSuccessful',model.pointAppointmentSuccessful,10,0 )}
			</p>	
			
		
				<!-- 
			
			<p id='status_p' class='p123'>
				 <label id='status_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_STATUS)%>:
				 </label>
${my:input('CmsCommonComment','status',model.status,10,0 )}
			</p>	
			
		
				--> 
			
			<p id='addition_p' class='p123'>
				 <label id='addition_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_ADDITION)%>:
				 </label>
${my:input('CmsCommonComment','addition',model.addition,0,0 )}			</p>	
			
		
				<!-- 
			
			<p id='createtimelong_p' class='p123'>
				 <label id='createtimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:input('CmsCommonComment','createtimelong',model.createtimelong,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='modifytimelong_p' class='p123'>
				 <label id='modifytimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:input('CmsCommonComment','modifytimelong',model.modifytimelong,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='createuser_p' class='p123'>
				 <label id='createuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_CREATEUSER)%>:
				 </label>
${my:input('CmsCommonComment','createuser',model.createuser,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='modifyuser_p' class='p123'>
				 <label id='modifyuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_MODIFYUSER)%>:
				 </label>
${my:input('CmsCommonComment','modifyuser',model.modifyuser,10,0 )}
			</p>	
			
		
				--> 
			
			<p id='targetid2_p' class='p123'>
				 <label id='targetid2_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_TARGETID2)%>:
				 </label>
${my:input('CmsCommonComment','targetid2',model.targetid2,10,0 )}
			</p>	
			
		
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
