<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsUserInfo.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/CmsUserInfo" />
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
        <h3>查看<%=JSTLTagUtils.getCnname("CmsUserInfo","table_name")%></h3>
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
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_USERNAME)%>:
				 </label>
${my:showcont('CmsUserInfo','username',v.username,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_PASSWD)%>:
				 </label>
${my:showcont('CmsUserInfo','passwd',v.passwd,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_THIRD_TYPE)%>:
				 </label>
${my:showcont('CmsUserInfo','thirdType',v.thirdType,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_OPENID)%>:
				 </label>
${my:showcont('CmsUserInfo','openid',v.openid,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_SOURCE)%>:
				 </label>
${my:showcont('CmsUserInfo','source',v.source,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_MOBILE)%>:
				 </label>
${my:showcont('CmsUserInfo','mobile',v.mobile,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_EMAIL)%>:
				 </label>
${my:showcont('CmsUserInfo','email',v.email,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_REAL_NAME)%>:
				 </label>
${my:showcont('CmsUserInfo','realName',v.realName,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_PROVINCEID)%>:
				 </label>
${my:showcont('CmsUserInfo','provinceid',v.provinceid,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_PROVINCE)%>:
				 </label>
${my:showcont('CmsUserInfo','province',v.province,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_CITYID)%>:
				 </label>
${my:showcont('CmsUserInfo','cityid',v.cityid,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_CITY)%>:
				 </label>
${my:showcont('CmsUserInfo','city',v.city,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_QUID)%>:
				 </label>
${my:showcont('CmsUserInfo','quid',v.quid,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_QU)%>:
				 </label>
${my:showcont('CmsUserInfo','qu',v.qu,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_BIRTH_YEAR)%>:
				 </label>
${my:showcont('CmsUserInfo','birthYear',v.birthYear,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_BIRTH_MONTH)%>:
				 </label>
${my:showcont('CmsUserInfo','birthMonth',v.birthMonth,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_BIRTH_DATE)%>:
				 </label>
${my:showcont('CmsUserInfo','birthDate',v.birthDate,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_PHONE)%>:
				 </label>
${my:showcont('CmsUserInfo','phone',v.phone,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_ADDRESS)%>:
				 </label>
${my:showcont('CmsUserInfo','address',v.address,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_POST_CODE)%>:
				 </label>
${my:showcont('CmsUserInfo','postCode',v.postCode,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_PHOTO)%>:
				 </label>
${my:showcont('CmsUserInfo','photo',v.photo,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_USERTYPE)%>:
				 </label>
${my:showcont('CmsUserInfo','usertype',v.usertype,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_CREATE_GROUP_COUNT)%>:
				 </label>
${my:showcont('CmsUserInfo','createGroupCount',v.createGroupCount,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_JOIN_GROUP_COUNT)%>:
				 </label>
${my:showcont('CmsUserInfo','joinGroupCount',v.joinGroupCount,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_CREATE_TOPIC_COUNT)%>:
				 </label>
${my:showcont('CmsUserInfo','createTopicCount',v.createTopicCount,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_REPLY_COUNT)%>:
				 </label>
${my:showcont('CmsUserInfo','replyCount',v.replyCount,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_POINTS)%>:
				 </label>
${my:showcont('CmsUserInfo','points',v.points,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_STATUS)%>:
				 </label>
${my:showcont('CmsUserInfo','status',v.status,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_ADDITION)%>:
				 </label>
${my:showcont('CmsUserInfo','addition',v.addition,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:showcont('CmsUserInfo','createtimelong',v.createtimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:showcont('CmsUserInfo','modifytimelong',v.modifytimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_CREATEUSER)%>:
				 </label>
${my:showcont('CmsUserInfo','createuser',v.createuser,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_MODIFYUSER)%>:
				 </label>
${my:showcont('CmsUserInfo','modifyuser',v.modifyuser,0 )}			</p>	
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
