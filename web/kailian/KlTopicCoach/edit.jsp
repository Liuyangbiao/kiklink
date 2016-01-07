<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", KlTopicCoach.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/KlTopicCoach" />
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
        <h3>编辑<%=JSTLTagUtils.getCnname("KlTopicCoach","table_name")%></h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">
          	<form id="form1" action="${ctx}/kailian/KlTopicCoach/update.do" method="post">
		<a class="button" onclick="if (doeditors()) $('#form1').submit();" >提交</a>&nbsp;&nbsp;
		<a class="button" onclick="backtolist();">返回列表</a>&nbsp;&nbsp;
		<a class="button" onclick="history.back();">后退</a>
		
		<input type="hidden" id="createtimelong" name="createtimelong" value="${model.createtimelong}"  />
		
		<fieldset>
		
			<input type="hidden" id="id" name="id" value="${model.id}"/>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		<!-- ONGL access static field: @package.class@field or @vs@field -->
			
			<p id='coachName_p' class='p123'>
				 <label id='coachName_mainlb'>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_COACH_NAME)%>:
				 </label>
${my:input('KlTopicCoach','coachName',model.coachName,0,0 )}			</p>	
			
		
			
			<p id='coachSchool_p' class='p123'>
				 <label id='coachSchool_mainlb'>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_COACH_SCHOOL)%>:
				 </label>
${my:input('KlTopicCoach','coachSchool',model.coachSchool,0,0 )}			</p>	
			
		
			
			<p id='shopAdd_p' class='p123'>
				 <label id='shopAdd_mainlb'>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_SHOP_ADD)%>:
				 </label>
${my:input('KlTopicCoach','shopAdd',model.shopAdd,0,0 )}			</p>	
			
		
			
			<p id='sms_p' class='p123'>
				 <label id='sms_mainlb'>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_SMS)%>:
				 </label>
${my:input('KlTopicCoach','sms',model.sms,0,0 )}			</p>	
			
		
			
			<p id='personalDeclaration_p' class='p123'>
				 <label id='personalDeclaration_mainlb'>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_PERSONAL_DECLARATION)%>:
				 </label>
${my:input('KlTopicCoach','personalDeclaration',model.personalDeclaration,0,0 )}			</p>	
			
		
			
			<p id='topicAboutCoach_p' class='p123'>
				 <label id='topicAboutCoach_mainlb'>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_TOPIC_ABOUT_COACH)%>:
				 </label>
${my:input('KlTopicCoach','topicAboutCoach',model.topicAboutCoach,0,0 )}			</p>	
			
		
			
			<p id='topicCoachCapacity_p' class='p123'>
				 <label id='topicCoachCapacity_mainlb'>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_TOPIC_COACH_CAPACITY)%>:
				 </label>
${my:input('KlTopicCoach','topicCoachCapacity',model.topicCoachCapacity,0,0 )}			</p>	
			
		
			
			<p id='topicNeed_p' class='p123'>
				 <label id='topicNeed_mainlb'>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_TOPIC_NEED)%>:
				 </label>
${my:input('KlTopicCoach','topicNeed',model.topicNeed,0,0 )}			</p>	
			
		
			
			<p id='nowInvite_p' class='p123'>
				 <label id='nowInvite_mainlb'>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_NOW_INVITE)%>:
				 </label>
${my:input('KlTopicCoach','nowInvite',model.nowInvite,0,0 )}			</p>	
			
		
			
			<p id='count_p' class='p123'>
				 <label id='count_mainlb'>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_COUNT)%>:
				 </label>
${my:input('KlTopicCoach','count',model.count,10,0 )}
			</p>	
			
		
			
			<p id='phone_p' class='p123'>
				 <label id='phone_mainlb'>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_PHONE)%>:
				 </label>
${my:input('KlTopicCoach','phone',model.phone,0,0 )}			</p>	
			
		
			
			<p id='ext1_p' class='p123'>
				 <label id='ext1_mainlb'>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_EXT1)%>:
				 </label>
${my:input('KlTopicCoach','ext1',model.ext1,0,0 )}			</p>	
			
		
			
			<p id='ext2_p' class='p123'>
				 <label id='ext2_mainlb'>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_EXT2)%>:
				 </label>
${my:input('KlTopicCoach','ext2',model.ext2,0,0 )}			</p>	
			
		
			
			<p id='ext3_p' class='p123'>
				 <label id='ext3_mainlb'>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_EXT3)%>:
				 </label>
${my:input('KlTopicCoach','ext3',model.ext3,0,0 )}			</p>	
			
		
			
			<p id='ext4_p' class='p123'>
				 <label id='ext4_mainlb'>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_EXT4)%>:
				 </label>
${my:input('KlTopicCoach','ext4',model.ext4,0,0 )}			</p>	
			
		
			
			<p id='ext5_p' class='p123'>
				 <label id='ext5_mainlb'>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_EXT5)%>:
				 </label>
${my:input('KlTopicCoach','ext5',model.ext5,0,0 )}			</p>	
			
		
			
			<p id='extInt1_p' class='p123'>
				 <label id='extInt1_mainlb'>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_EXT_INT1)%>:
				 </label>
${my:input('KlTopicCoach','extInt1',model.extInt1,10,0 )}
			</p>	
			
		
			
			<p id='extInt2_p' class='p123'>
				 <label id='extInt2_mainlb'>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_EXT_INT2)%>:
				 </label>
${my:input('KlTopicCoach','extInt2',model.extInt2,10,0 )}
			</p>	
			
		
			
			<p id='extInt3_p' class='p123'>
				 <label id='extInt3_mainlb'>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_EXT_INT3)%>:
				 </label>
${my:input('KlTopicCoach','extInt3',model.extInt3,10,0 )}
			</p>	
			
		
			
			<p id='extInt4_p' class='p123'>
				 <label id='extInt4_mainlb'>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_EXT_INT4)%>:
				 </label>
${my:input('KlTopicCoach','extInt4',model.extInt4,10,0 )}
			</p>	
			
		
			
			<p id='extInt5_p' class='p123'>
				 <label id='extInt5_mainlb'>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_EXT_INT5)%>:
				 </label>
${my:input('KlTopicCoach','extInt5',model.extInt5,10,0 )}
			</p>	
			
		
				<!-- 
			
			<p id='status_p' class='p123'>
				 <label id='status_mainlb'>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_STATUS)%>:
				 </label>
${my:input('KlTopicCoach','status',model.status,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='createtimelong_p' class='p123'>
				 <label id='createtimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:input('KlTopicCoach','createtimelong',model.createtimelong,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='modifytimelong_p' class='p123'>
				 <label id='modifytimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:input('KlTopicCoach','modifytimelong',model.modifytimelong,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='createuser_p' class='p123'>
				 <label id='createuser_mainlb'>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_CREATEUSER)%>:
				 </label>
${my:input('KlTopicCoach','createuser',model.createuser,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='modifyuser_p' class='p123'>
				 <label id='modifyuser_mainlb'>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_MODIFYUSER)%>:
				 </label>
${my:input('KlTopicCoach','modifyuser',model.modifyuser,10,0 )}
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
