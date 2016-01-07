<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", KlSellerShop.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/KlSellerShop" />
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
        <h3>创建<%=JSTLTagUtils.getCnname("KlSellerShop","table_name")%></h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">
          	<form id="form1" action="${ctx}/kailian/KlSellerShop/save.do" method="post">
		<a class="button" onclick="if(doeditors()) $('#form1').submit();" >提交</a>&nbsp;&nbsp;
		<a class="button" onclick="backtolist();">返回列表</a>&nbsp;&nbsp;
		<a class="button" onclick="history.back();">后退</a>
		
		<fieldset>
			<input type="hidden" id="id" name="id" value="${model.id}"/>
		
		<!-- ONGL access static field: @package.class@field or @vs@field -->
		
			<c:set var="tt" value="ID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			</c:if>
		
			<c:set var="tt" value="USER_TYPE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='userType_p' class='p123'>
				 <label id='userType_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_USER_TYPE)%>:
				 </label>
${my:input('KlSellerShop','userType',model.userType,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="SHOP_NAME"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='shopName_p' class='p123'>
				 <label id='shopName_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_SHOP_NAME)%>:
				 </label>
${my:input('KlSellerShop','shopName',model.shopName,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="LOGO"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='logo_p' class='p123'>
				 <label id='logo_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_LOGO)%>:
				 </label>
${my:input('KlSellerShop','logo',model.logo,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="SHOPTYPE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='shoptype_p' class='p123'>
				 <label id='shoptype_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_SHOPTYPE)%>:
				 </label>
${my:input('KlSellerShop','shoptype',model.shoptype,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="PROVINCEID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='provinceid_p' class='p123'>
				 <label id='provinceid_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_PROVINCEID)%>:
				 </label>
${my:input('KlSellerShop','provinceid',model.provinceid,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="PROVINCE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='province_p' class='p123'>
				 <label id='province_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_PROVINCE)%>:
				 </label>
${my:input('KlSellerShop','province',model.province,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="CITYID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='cityid_p' class='p123'>
				 <label id='cityid_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_CITYID)%>:
				 </label>
${my:input('KlSellerShop','cityid',model.cityid,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="CITY"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='city_p' class='p123'>
				 <label id='city_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_CITY)%>:
				 </label>
${my:input('KlSellerShop','city',model.city,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="QUID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='quid_p' class='p123'>
				 <label id='quid_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_QUID)%>:
				 </label>
${my:input('KlSellerShop','quid',model.quid,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="QU"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='qu_p' class='p123'>
				 <label id='qu_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_QU)%>:
				 </label>
${my:input('KlSellerShop','qu',model.qu,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="REAL_NAME"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='realName_p' class='p123'>
				 <label id='realName_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_REAL_NAME)%>:
				 </label>
${my:input('KlSellerShop','realName',model.realName,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="ID_NUMBER"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='idNumber_p' class='p123'>
				 <label id='idNumber_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_ID_NUMBER)%>:
				 </label>
${my:input('KlSellerShop','idNumber',model.idNumber,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="ID_PICTURE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='idPicture_p' class='p123'>
				 <label id='idPicture_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_ID_PICTURE)%>:
				 </label>
${my:input('KlSellerShop','idPicture',model.idPicture,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="ID_PCITURE_BACK"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='idPcitureBack_p' class='p123'>
				 <label id='idPcitureBack_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_ID_PCITURE_BACK)%>:
				 </label>
${my:input('KlSellerShop','idPcitureBack',model.idPcitureBack,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="BIRTH_YEAR"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='birthYear_p' class='p123'>
				 <label id='birthYear_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_BIRTH_YEAR)%>:
				 </label>
${my:input('KlSellerShop','birthYear',model.birthYear,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="BIRTH_MONTH"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='birthMonth_p' class='p123'>
				 <label id='birthMonth_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_BIRTH_MONTH)%>:
				 </label>
${my:input('KlSellerShop','birthMonth',model.birthMonth,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="BIRTH_DATE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='birthDate_p' class='p123'>
				 <label id='birthDate_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_BIRTH_DATE)%>:
				 </label>
${my:input('KlSellerShop','birthDate',model.birthDate,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="SEX"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='sex_p' class='p123'>
				 <label id='sex_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_SEX)%>:
				 </label>
${my:input('KlSellerShop','sex',model.sex,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="PHONENO"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='phoneno_p' class='p123'>
				 <label id='phoneno_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_PHONENO)%>:
				 </label>
${my:input('KlSellerShop','phoneno',model.phoneno,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="EMAIL"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='email_p' class='p123'>
				 <label id='email_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_EMAIL)%>:
				 </label>
${my:input('KlSellerShop','email',model.email,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="ADDRESS"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='address_p' class='p123'>
				 <label id='address_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_ADDRESS)%>:
				 </label>
${my:input('KlSellerShop','address',model.address,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="POSTCODE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='postcode_p' class='p123'>
				 <label id='postcode_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_POSTCODE)%>:
				 </label>
${my:input('KlSellerShop','postcode',model.postcode,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="PROFILE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='profile_p' class='p123'>
				 <label id='profile_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_PROFILE)%>:
				 </label>
${my:input('KlSellerShop','profile',model.profile,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="BANKNAME"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='bankname_p' class='p123'>
				 <label id='bankname_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_BANKNAME)%>:
				 </label>
${my:input('KlSellerShop','bankname',model.bankname,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="BANKOPENNAME"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='bankopenname_p' class='p123'>
				 <label id='bankopenname_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_BANKOPENNAME)%>:
				 </label>
${my:input('KlSellerShop','bankopenname',model.bankopenname,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="BANKNUMBER"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='banknumber_p' class='p123'>
				 <label id='banknumber_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_BANKNUMBER)%>:
				 </label>
${my:input('KlSellerShop','banknumber',model.banknumber,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="TEMPLATE_ID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='templateId_p' class='p123'>
				 <label id='templateId_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_TEMPLATE_ID)%>:
				 </label>
${my:input('KlSellerShop','templateId',model.templateId,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="TEMPLATE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='template_p' class='p123'>
				 <label id='template_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_TEMPLATE)%>:
				 </label>
${my:input('KlSellerShop','template',model.template,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="COMPANY_NAME"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='companyName_p' class='p123'>
				 <label id='companyName_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_COMPANY_NAME)%>:
				 </label>
${my:input('KlSellerShop','companyName',model.companyName,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="PASSPORT_PICTURE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='passportPicture_p' class='p123'>
				 <label id='passportPicture_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_PASSPORT_PICTURE)%>:
				 </label>
${my:input('KlSellerShop','passportPicture',model.passportPicture,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="ORG_NUMBER"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='orgNumber_p' class='p123'>
				 <label id='orgNumber_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_ORG_NUMBER)%>:
				 </label>
${my:input('KlSellerShop','orgNumber',model.orgNumber,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="CREATE_DATE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='createDate_p' class='p123'>
				 <label id='createDate_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_CREATE_DATE)%>:
				 </label>
${my:input('KlSellerShop','createDate',model.createDate,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="POINT_DESCRIPTION_MATCH"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='pointDescriptionMatch_p' class='p123'>
				 <label id='pointDescriptionMatch_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_POINT_DESCRIPTION_MATCH)%>:
				 </label>
${my:input('KlSellerShop','pointDescriptionMatch',model.pointDescriptionMatch,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="POINT_PERFATIONAL"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='pointPerfational_p' class='p123'>
				 <label id='pointPerfational_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_POINT_PERFATIONAL)%>:
				 </label>
${my:input('KlSellerShop','pointPerfational',model.pointPerfational,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="POINT_SERVICE_ATTITUDE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='pointServiceAttitude_p' class='p123'>
				 <label id='pointServiceAttitude_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_POINT_SERVICE_ATTITUDE)%>:
				 </label>
${my:input('KlSellerShop','pointServiceAttitude',model.pointServiceAttitude,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="POINT_APPOINTMENT_SUCCESSFUL"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='pointAppointmentSuccessful_p' class='p123'>
				 <label id='pointAppointmentSuccessful_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_POINT_APPOINTMENT_SUCCESSFUL)%>:
				 </label>
${my:input('KlSellerShop','pointAppointmentSuccessful',model.pointAppointmentSuccessful,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="FLOWER_PERCENT"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='flowerPercent_p' class='p123'>
				 <label id='flowerPercent_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_FLOWER_PERCENT)%>:
				 </label>
${my:input('KlSellerShop','flowerPercent',model.flowerPercent,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="SERVED_CLIENTS"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='servedClients_p' class='p123'>
				 <label id='servedClients_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_SERVED_CLIENTS)%>:
				 </label>
${my:input('KlSellerShop','servedClients',model.servedClients,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="SAVED_COUNT"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='savedCount_p' class='p123'>
				 <label id='savedCount_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_SAVED_COUNT)%>:
				 </label>
${my:input('KlSellerShop','savedCount',model.savedCount,10,0 )}
			</p>	
			</c:if>
				<!-- 
		
			<c:set var="tt" value="STATUS"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='status_p' class='p123'>
				 <label id='status_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_STATUS)%>:
				 </label>
${my:input('KlSellerShop','status',model.status,10,0 )}
			</p>	
			</c:if>
				-->
		
			<c:set var="tt" value="ADDITION"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='addition_p' class='p123'>
				 <label id='addition_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_ADDITION)%>:
				 </label>
${my:input('KlSellerShop','addition',model.addition,0,0 )}			</p>	
			</c:if>
				<!-- 
		
			<c:set var="tt" value="CREATETIMELONG"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='createtimelong_p' class='p123'>
				 <label id='createtimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:input('KlSellerShop','createtimelong',model.createtimelong,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="MODIFYTIMELONG"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='modifytimelong_p' class='p123'>
				 <label id='modifytimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:input('KlSellerShop','modifytimelong',model.modifytimelong,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="CREATEUSER"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='createuser_p' class='p123'>
				 <label id='createuser_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_CREATEUSER)%>:
				 </label>
${my:input('KlSellerShop','createuser',model.createuser,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="MODIFYUSER"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='modifyuser_p' class='p123'>
				 <label id='modifyuser_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_MODIFYUSER)%>:
				 </label>
${my:input('KlSellerShop','modifyuser',model.modifyuser,10,0 )}
			</p>	
			</c:if>
				-->
		
			<c:set var="tt" value="USERID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='userid_p' class='p123'>
				 <label id='userid_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_USERID)%>:
				 </label>
${my:input('KlSellerShop','userid',model.userid,10,0 )}
			</p>	
			</c:if>
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
