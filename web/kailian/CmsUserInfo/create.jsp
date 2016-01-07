<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsUserInfo.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/CmsUserInfo" />
<c:set var="ttid" value="ID"></c:set>
<c:set var="ttcreator" value="CREATOR"></c:set>
<c:set var="ttcreatetime" value="CREATE_TIME"></c:set>
<c:set var="ttdeleted" value="DELETED"></c:set>
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
        <h3>创建<%=JSTLTagUtils.getCnname("CmsUserInfo","table_name")%></h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">
          	<form id="form1" action="${ctx}/kailian/CmsUserInfo/save.do" method="post">
		<a class="button" onclick="if(doeditors()) $('#form1').submit();" >提交</a>&nbsp;&nbsp;
		<a class="button" onclick="backtolist();">返回列表</a>&nbsp;&nbsp;
		<a class="button" onclick="history.back();">后退</a>
		
		<fieldset>
			<input type="hidden" id="id" name="id" value="${model.id}"/>
		
		<!-- ONGL access static field: @package.class@field or @vs@field -->
		
			<c:set var="tt" value="ID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			</c:if>
		
			<c:set var="tt" value="USERNAME"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='username_p' class='p123'>
				 <label id='username_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_USERNAME)%>:
				 </label>
${my:input('CmsUserInfo','username',model.username,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="PASSWD"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='passwd_p' class='p123'>
				 <label id='passwd_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_PASSWD)%>:
				 </label>
${my:input('CmsUserInfo','passwd',model.passwd,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="THIRD_TYPE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='thirdType_p' class='p123'>
				 <label id='thirdType_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_THIRD_TYPE)%>:
				 </label>
${my:input('CmsUserInfo','thirdType',model.thirdType,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="OPENID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='openid_p' class='p123'>
				 <label id='openid_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_OPENID)%>:
				 </label>
${my:input('CmsUserInfo','openid',model.openid,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="SOURCE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='source_p' class='p123'>
				 <label id='source_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_SOURCE)%>:
				 </label>
${my:input('CmsUserInfo','source',model.source,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="MOBILE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='mobile_p' class='p123'>
				 <label id='mobile_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_MOBILE)%>:
				 </label>
${my:input('CmsUserInfo','mobile',model.mobile,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="EMAIL"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='email_p' class='p123'>
				 <label id='email_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_EMAIL)%>:
				 </label>
${my:input('CmsUserInfo','email',model.email,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="REAL_NAME"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='realName_p' class='p123'>
				 <label id='realName_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_REAL_NAME)%>:
				 </label>
${my:input('CmsUserInfo','realName',model.realName,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="PROVINCEID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='provinceid_p' class='p123'>
				 <label id='provinceid_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_PROVINCEID)%>:
				 </label>
${my:input('CmsUserInfo','provinceid',model.provinceid,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="PROVINCE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='province_p' class='p123'>
				 <label id='province_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_PROVINCE)%>:
				 </label>
${my:input('CmsUserInfo','province',model.province,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="CITYID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='cityid_p' class='p123'>
				 <label id='cityid_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_CITYID)%>:
				 </label>
${my:input('CmsUserInfo','cityid',model.cityid,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="CITY"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='city_p' class='p123'>
				 <label id='city_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_CITY)%>:
				 </label>
${my:input('CmsUserInfo','city',model.city,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="QUID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='quid_p' class='p123'>
				 <label id='quid_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_QUID)%>:
				 </label>
${my:input('CmsUserInfo','quid',model.quid,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="QU"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='qu_p' class='p123'>
				 <label id='qu_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_QU)%>:
				 </label>
${my:input('CmsUserInfo','qu',model.qu,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="BIRTH_YEAR"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='birthYear_p' class='p123'>
				 <label id='birthYear_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_BIRTH_YEAR)%>:
				 </label>
${my:input('CmsUserInfo','birthYear',model.birthYear,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="BIRTH_MONTH"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='birthMonth_p' class='p123'>
				 <label id='birthMonth_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_BIRTH_MONTH)%>:
				 </label>
${my:input('CmsUserInfo','birthMonth',model.birthMonth,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="BIRTH_DATE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='birthDate_p' class='p123'>
				 <label id='birthDate_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_BIRTH_DATE)%>:
				 </label>
${my:input('CmsUserInfo','birthDate',model.birthDate,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="PHONE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='phone_p' class='p123'>
				 <label id='phone_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_PHONE)%>:
				 </label>
${my:input('CmsUserInfo','phone',model.phone,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="ADDRESS"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='address_p' class='p123'>
				 <label id='address_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_ADDRESS)%>:
				 </label>
${my:input('CmsUserInfo','address',model.address,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="POST_CODE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='postCode_p' class='p123'>
				 <label id='postCode_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_POST_CODE)%>:
				 </label>
${my:input('CmsUserInfo','postCode',model.postCode,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="PHOTO"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='photo_p' class='p123'>
				 <label id='photo_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_PHOTO)%>:
				 </label>
${my:input('CmsUserInfo','photo',model.photo,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="USERTYPE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='usertype_p' class='p123'>
				 <label id='usertype_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_USERTYPE)%>:
				 </label>
${my:input('CmsUserInfo','usertype',model.usertype,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="CREATE_GROUP_COUNT"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='createGroupCount_p' class='p123'>
				 <label id='createGroupCount_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_CREATE_GROUP_COUNT)%>:
				 </label>
${my:input('CmsUserInfo','createGroupCount',model.createGroupCount,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="JOIN_GROUP_COUNT"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='joinGroupCount_p' class='p123'>
				 <label id='joinGroupCount_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_JOIN_GROUP_COUNT)%>:
				 </label>
${my:input('CmsUserInfo','joinGroupCount',model.joinGroupCount,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="CREATE_TOPIC_COUNT"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='createTopicCount_p' class='p123'>
				 <label id='createTopicCount_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_CREATE_TOPIC_COUNT)%>:
				 </label>
${my:input('CmsUserInfo','createTopicCount',model.createTopicCount,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="REPLY_COUNT"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='replyCount_p' class='p123'>
				 <label id='replyCount_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_REPLY_COUNT)%>:
				 </label>
${my:input('CmsUserInfo','replyCount',model.replyCount,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="POINTS"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='points_p' class='p123'>
				 <label id='points_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_POINTS)%>:
				 </label>
${my:input('CmsUserInfo','points',model.points,10,0 )}
			</p>	
			</c:if>
				<!-- 
		
			<c:set var="tt" value="STATUS"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='status_p' class='p123'>
				 <label id='status_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_STATUS)%>:
				 </label>
${my:input('CmsUserInfo','status',model.status,10,0 )}
			</p>	
			</c:if>
				-->
		
			<c:set var="tt" value="ADDITION"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='addition_p' class='p123'>
				 <label id='addition_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_ADDITION)%>:
				 </label>
${my:input('CmsUserInfo','addition',model.addition,0,0 )}			</p>	
			</c:if>
				<!-- 
		
			<c:set var="tt" value="CREATETIMELONG"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='createtimelong_p' class='p123'>
				 <label id='createtimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:input('CmsUserInfo','createtimelong',model.createtimelong,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="MODIFYTIMELONG"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='modifytimelong_p' class='p123'>
				 <label id='modifytimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:input('CmsUserInfo','modifytimelong',model.modifytimelong,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="CREATEUSER"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='createuser_p' class='p123'>
				 <label id='createuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_CREATEUSER)%>:
				 </label>
${my:input('CmsUserInfo','createuser',model.createuser,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="MODIFYUSER"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='modifyuser_p' class='p123'>
				 <label id='modifyuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_MODIFYUSER)%>:
				 </label>
${my:input('CmsUserInfo','modifyuser',model.modifyuser,10,0 )}
			</p>	
			</c:if>
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
