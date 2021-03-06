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
        <h3>查看<%=JSTLTagUtils.getCnname("KlTopicCoach","table_name")%></h3>
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
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_COACH_NAME)%>:
				 </label>
${my:showcont('KlTopicCoach','coachName',v.coachName,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_COACH_SCHOOL)%>:
				 </label>
${my:showcont('KlTopicCoach','coachSchool',v.coachSchool,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_SHOP_ADD)%>:
				 </label>
${my:showcont('KlTopicCoach','shopAdd',v.shopAdd,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_SMS)%>:
				 </label>
${my:showcont('KlTopicCoach','sms',v.sms,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_PERSONAL_DECLARATION)%>:
				 </label>
${my:showcont('KlTopicCoach','personalDeclaration',v.personalDeclaration,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_TOPIC_ABOUT_COACH)%>:
				 </label>
${my:showcont('KlTopicCoach','topicAboutCoach',v.topicAboutCoach,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_TOPIC_COACH_CAPACITY)%>:
				 </label>
${my:showcont('KlTopicCoach','topicCoachCapacity',v.topicCoachCapacity,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_TOPIC_NEED)%>:
				 </label>
${my:showcont('KlTopicCoach','topicNeed',v.topicNeed,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_NOW_INVITE)%>:
				 </label>
${my:showcont('KlTopicCoach','nowInvite',v.nowInvite,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_COUNT)%>:
				 </label>
${my:showcont('KlTopicCoach','count',v.count,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_PHONE)%>:
				 </label>
${my:showcont('KlTopicCoach','phone',v.phone,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_EXT1)%>:
				 </label>
${my:showcont('KlTopicCoach','ext1',v.ext1,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_EXT2)%>:
				 </label>
${my:showcont('KlTopicCoach','ext2',v.ext2,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_EXT3)%>:
				 </label>
${my:showcont('KlTopicCoach','ext3',v.ext3,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_EXT4)%>:
				 </label>
${my:showcont('KlTopicCoach','ext4',v.ext4,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_EXT5)%>:
				 </label>
${my:showcont('KlTopicCoach','ext5',v.ext5,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_EXT_INT1)%>:
				 </label>
${my:showcont('KlTopicCoach','extInt1',v.extInt1,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_EXT_INT2)%>:
				 </label>
${my:showcont('KlTopicCoach','extInt2',v.extInt2,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_EXT_INT3)%>:
				 </label>
${my:showcont('KlTopicCoach','extInt3',v.extInt3,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_EXT_INT4)%>:
				 </label>
${my:showcont('KlTopicCoach','extInt4',v.extInt4,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_EXT_INT5)%>:
				 </label>
${my:showcont('KlTopicCoach','extInt5',v.extInt5,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_STATUS)%>:
				 </label>
${my:showcont('KlTopicCoach','status',v.status,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:showcont('KlTopicCoach','createtimelong',v.createtimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:showcont('KlTopicCoach','modifytimelong',v.modifytimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_CREATEUSER)%>:
				 </label>
${my:showcont('KlTopicCoach','createuser',v.createuser,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_MODIFYUSER)%>:
				 </label>
${my:showcont('KlTopicCoach','modifyuser',v.modifyuser,0 )}			</p>	
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
