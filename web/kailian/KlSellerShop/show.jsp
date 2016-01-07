<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", KlSellerShop.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/KlSellerShop" />
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
        <h3>查看<%=JSTLTagUtils.getCnname("KlSellerShop","table_name")%></h3>
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
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_USER_TYPE)%>:
				 </label>
${my:showcont('KlSellerShop','userType',v.userType,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_SHOP_NAME)%>:
				 </label>
${my:showcont('KlSellerShop','shopName',v.shopName,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_LOGO)%>:
				 </label>
${my:showcont('KlSellerShop','logo',v.logo,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_SHOPTYPE)%>:
				 </label>
${my:showcont('KlSellerShop','shoptype',v.shoptype,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_PROVINCEID)%>:
				 </label>
${my:showcont('KlSellerShop','provinceid',v.provinceid,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_PROVINCE)%>:
				 </label>
${my:showcont('KlSellerShop','province',v.province,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_CITYID)%>:
				 </label>
${my:showcont('KlSellerShop','cityid',v.cityid,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_CITY)%>:
				 </label>
${my:showcont('KlSellerShop','city',v.city,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_QUID)%>:
				 </label>
${my:showcont('KlSellerShop','quid',v.quid,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_QU)%>:
				 </label>
${my:showcont('KlSellerShop','qu',v.qu,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_REAL_NAME)%>:
				 </label>
${my:showcont('KlSellerShop','realName',v.realName,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_ID_NUMBER)%>:
				 </label>
${my:showcont('KlSellerShop','idNumber',v.idNumber,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_ID_PICTURE)%>:
				 </label>
${my:showcont('KlSellerShop','idPicture',v.idPicture,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_ID_PCITURE_BACK)%>:
				 </label>
${my:showcont('KlSellerShop','idPcitureBack',v.idPcitureBack,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_BIRTH_YEAR)%>:
				 </label>
${my:showcont('KlSellerShop','birthYear',v.birthYear,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_BIRTH_MONTH)%>:
				 </label>
${my:showcont('KlSellerShop','birthMonth',v.birthMonth,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_BIRTH_DATE)%>:
				 </label>
${my:showcont('KlSellerShop','birthDate',v.birthDate,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_SEX)%>:
				 </label>
${my:showcont('KlSellerShop','sex',v.sex,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_PHONENO)%>:
				 </label>
${my:showcont('KlSellerShop','phoneno',v.phoneno,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_EMAIL)%>:
				 </label>
${my:showcont('KlSellerShop','email',v.email,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_ADDRESS)%>:
				 </label>
${my:showcont('KlSellerShop','address',v.address,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_POSTCODE)%>:
				 </label>
${my:showcont('KlSellerShop','postcode',v.postcode,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_PROFILE)%>:
				 </label>
${my:showcont('KlSellerShop','profile',v.profile,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_BANKNAME)%>:
				 </label>
${my:showcont('KlSellerShop','bankname',v.bankname,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_BANKOPENNAME)%>:
				 </label>
${my:showcont('KlSellerShop','bankopenname',v.bankopenname,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_BANKNUMBER)%>:
				 </label>
${my:showcont('KlSellerShop','banknumber',v.banknumber,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_TEMPLATE_ID)%>:
				 </label>
${my:showcont('KlSellerShop','templateId',v.templateId,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_TEMPLATE)%>:
				 </label>
${my:showcont('KlSellerShop','template',v.template,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_COMPANY_NAME)%>:
				 </label>
${my:showcont('KlSellerShop','companyName',v.companyName,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_PASSPORT_PICTURE)%>:
				 </label>
${my:showcont('KlSellerShop','passportPicture',v.passportPicture,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_ORG_NUMBER)%>:
				 </label>
${my:showcont('KlSellerShop','orgNumber',v.orgNumber,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_CREATE_DATE)%>:
				 </label>
${my:showcont('KlSellerShop','createDate',v.createDate,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_POINT_DESCRIPTION_MATCH)%>:
				 </label>
${my:showcont('KlSellerShop','pointDescriptionMatch',v.pointDescriptionMatch,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_POINT_PERFATIONAL)%>:
				 </label>
${my:showcont('KlSellerShop','pointPerfational',v.pointPerfational,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_POINT_SERVICE_ATTITUDE)%>:
				 </label>
${my:showcont('KlSellerShop','pointServiceAttitude',v.pointServiceAttitude,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_POINT_APPOINTMENT_SUCCESSFUL)%>:
				 </label>
${my:showcont('KlSellerShop','pointAppointmentSuccessful',v.pointAppointmentSuccessful,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_FLOWER_PERCENT)%>:
				 </label>
${my:showcont('KlSellerShop','flowerPercent',v.flowerPercent,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_SERVED_CLIENTS)%>:
				 </label>
${my:showcont('KlSellerShop','servedClients',v.servedClients,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_SAVED_COUNT)%>:
				 </label>
${my:showcont('KlSellerShop','savedCount',v.savedCount,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_STATUS)%>:
				 </label>
${my:showcont('KlSellerShop','status',v.status,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_ADDITION)%>:
				 </label>
${my:showcont('KlSellerShop','addition',v.addition,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:showcont('KlSellerShop','createtimelong',v.createtimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:showcont('KlSellerShop','modifytimelong',v.modifytimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_CREATEUSER)%>:
				 </label>
${my:showcont('KlSellerShop','createuser',v.createuser,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_MODIFYUSER)%>:
				 </label>
${my:showcont('KlSellerShop','modifyuser',v.modifyuser,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerShop",KlSellerShop.ALIAS_USERID)%>:
				 </label>
${my:showcont('KlSellerShop','userid',v.userid,0 )}			</p>	
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
