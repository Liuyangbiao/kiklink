<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", KlSellerCoach.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/KlSellerCoach" />
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
        <h3>创建<%=JSTLTagUtils.getCnname("KlSellerCoach","table_name")%></h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">
          	<form id="form1" action="${ctx}/kailian/KlSellerCoach/save.do" method="post">
		<a class="button" onclick="if(doeditors()) $('#form1').submit();" >提交</a>&nbsp;&nbsp;
		<a class="button" onclick="backtolist();">返回列表</a>&nbsp;&nbsp;
		<a class="button" onclick="history.back();">后退</a>
		
		<fieldset>
			<input type="hidden" id="id" name="id" value="${model.id}"/>
		
		<!-- ONGL access static field: @package.class@field or @vs@field -->
		
			<c:set var="tt" value="ID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			</c:if>
		
			<c:set var="tt" value="SHOP_ID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='shopId_p' class='p123'>
				 <label id='shopId_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerCoach",KlSellerCoach.ALIAS_SHOP_ID)%>:
				 </label>
${my:input('KlSellerCoach','shopId',model.shopId,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="NAME"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='name_p' class='p123'>
				 <label id='name_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerCoach",KlSellerCoach.ALIAS_NAME)%>:
				 </label>
${my:input('KlSellerCoach','name',model.name,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="SEX"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='sex_p' class='p123'>
				 <label id='sex_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerCoach",KlSellerCoach.ALIAS_SEX)%>:
				 </label>
${my:input('KlSellerCoach','sex',model.sex,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="BIRTH_YEAR"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='birthYear_p' class='p123'>
				 <label id='birthYear_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerCoach",KlSellerCoach.ALIAS_BIRTH_YEAR)%>:
				 </label>
${my:input('KlSellerCoach','birthYear',model.birthYear,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="BIRTH_MONTH"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='birthMonth_p' class='p123'>
				 <label id='birthMonth_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerCoach",KlSellerCoach.ALIAS_BIRTH_MONTH)%>:
				 </label>
${my:input('KlSellerCoach','birthMonth',model.birthMonth,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="BIRTH_DATE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='birthDate_p' class='p123'>
				 <label id='birthDate_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerCoach",KlSellerCoach.ALIAS_BIRTH_DATE)%>:
				 </label>
${my:input('KlSellerCoach','birthDate',model.birthDate,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="PHOTO"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='photo_p' class='p123'>
				 <label id='photo_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerCoach",KlSellerCoach.ALIAS_PHOTO)%>:
				 </label>
${my:input('KlSellerCoach','photo',model.photo,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="PROFILE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='profile_p' class='p123'>
				 <label id='profile_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerCoach",KlSellerCoach.ALIAS_PROFILE)%>:
				 </label>
${my:input('KlSellerCoach','profile',model.profile,0,0 )}			</p>	
			</c:if>
				<!-- 
		
			<c:set var="tt" value="STATUS"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='status_p' class='p123'>
				 <label id='status_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerCoach",KlSellerCoach.ALIAS_STATUS)%>:
				 </label>
${my:input('KlSellerCoach','status',model.status,10,0 )}
			</p>	
			</c:if>
				-->
		
			<c:set var="tt" value="ADDITION"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='addition_p' class='p123'>
				 <label id='addition_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerCoach",KlSellerCoach.ALIAS_ADDITION)%>:
				 </label>
${my:input('KlSellerCoach','addition',model.addition,0,0 )}			</p>	
			</c:if>
				<!-- 
		
			<c:set var="tt" value="CREATETIMELONG"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='createtimelong_p' class='p123'>
				 <label id='createtimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerCoach",KlSellerCoach.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:input('KlSellerCoach','createtimelong',model.createtimelong,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="MODIFYTIMELONG"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='modifytimelong_p' class='p123'>
				 <label id='modifytimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerCoach",KlSellerCoach.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:input('KlSellerCoach','modifytimelong',model.modifytimelong,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="CREATEUSER"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='createuser_p' class='p123'>
				 <label id='createuser_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerCoach",KlSellerCoach.ALIAS_CREATEUSER)%>:
				 </label>
${my:input('KlSellerCoach','createuser',model.createuser,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="MODIFYUSER"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='modifyuser_p' class='p123'>
				 <label id='modifyuser_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerCoach",KlSellerCoach.ALIAS_MODIFYUSER)%>:
				 </label>
${my:input('KlSellerCoach','modifyuser',model.modifyuser,10,0 )}
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
