<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", KlShoppingGetmoney.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/KlShoppingGetmoney" />
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
        <h3>创建<%=JSTLTagUtils.getCnname("KlShoppingGetmoney","table_name")%></h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">
          	<form id="form1" action="${ctx}/kailian/KlShoppingGetmoney/save.do" method="post">
		<a class="button" onclick="if(doeditors()) $('#form1').submit();" >提交</a>&nbsp;&nbsp;
		<a class="button" onclick="backtolist();">返回列表</a>&nbsp;&nbsp;
		<a class="button" onclick="history.back();">后退</a>
		
		<fieldset>
			<input type="hidden" id="id" name="id" value="${model.id}"/>
		
		<!-- ONGL access static field: @package.class@field or @vs@field -->
		
			<c:set var="tt" value="ID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			</c:if>
		
			<c:set var="tt" value="SHOPID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='shopid_p' class='p123'>
				 <label id='shopid_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingGetmoney",KlShoppingGetmoney.ALIAS_SHOPID)%>:
				 </label>
${my:input('KlShoppingGetmoney','shopid',model.shopid,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="USERID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='userid_p' class='p123'>
				 <label id='userid_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingGetmoney",KlShoppingGetmoney.ALIAS_USERID)%>:
				 </label>
${my:input('KlShoppingGetmoney','userid',model.userid,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="USERNAME"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='username_p' class='p123'>
				 <label id='username_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingGetmoney",KlShoppingGetmoney.ALIAS_USERNAME)%>:
				 </label>
${my:input('KlShoppingGetmoney','username',model.username,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="SHOPNAME"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='shopname_p' class='p123'>
				 <label id='shopname_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingGetmoney",KlShoppingGetmoney.ALIAS_SHOPNAME)%>:
				 </label>
${my:input('KlShoppingGetmoney','shopname',model.shopname,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="MONEY"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='money_p' class='p123'>
				 <label id='money_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingGetmoney",KlShoppingGetmoney.ALIAS_MONEY)%>:
				 </label>
${my:input('KlShoppingGetmoney','money',model.money,10,0 )}
			</p>	
			</c:if>
				<!-- 
		
			<c:set var="tt" value="STATUS"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='status_p' class='p123'>
				 <label id='status_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingGetmoney",KlShoppingGetmoney.ALIAS_STATUS)%>:
				 </label>
${my:input('KlShoppingGetmoney','status',model.status,10,0 )}
			</p>	
			</c:if>
				-->
		
			<c:set var="tt" value="ADDITION"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='addition_p' class='p123'>
				 <label id='addition_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingGetmoney",KlShoppingGetmoney.ALIAS_ADDITION)%>:
				 </label>
${my:input('KlShoppingGetmoney','addition',model.addition,0,0 )}			</p>	
			</c:if>
				<!-- 
		
			<c:set var="tt" value="CREATETIMELONG"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='createtimelong_p' class='p123'>
				 <label id='createtimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingGetmoney",KlShoppingGetmoney.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:input('KlShoppingGetmoney','createtimelong',model.createtimelong,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="MODIFYTIMELONG"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='modifytimelong_p' class='p123'>
				 <label id='modifytimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingGetmoney",KlShoppingGetmoney.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:input('KlShoppingGetmoney','modifytimelong',model.modifytimelong,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="CREATEUSER"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='createuser_p' class='p123'>
				 <label id='createuser_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingGetmoney",KlShoppingGetmoney.ALIAS_CREATEUSER)%>:
				 </label>
${my:input('KlShoppingGetmoney','createuser',model.createuser,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="MODIFYUSER"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='modifyuser_p' class='p123'>
				 <label id='modifyuser_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingGetmoney",KlShoppingGetmoney.ALIAS_MODIFYUSER)%>:
				 </label>
${my:input('KlShoppingGetmoney','modifyuser',model.modifyuser,10,0 )}
			</p>	
			</c:if>
				-->
		
			<c:set var="tt" value="PAYTIMELONG"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='paytimelong_p' class='p123'>
				 <label id='paytimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingGetmoney",KlShoppingGetmoney.ALIAS_PAYTIMELONG)%>:
				 </label>
${my:input('KlShoppingGetmoney','paytimelong',model.paytimelong,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="PAYWAYID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='paywayid_p' class='p123'>
				 <label id='paywayid_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingGetmoney",KlShoppingGetmoney.ALIAS_PAYWAYID)%>:
				 </label>
${my:input('KlShoppingGetmoney','paywayid',model.paywayid,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="PAYWAY"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='payway_p' class='p123'>
				 <label id='payway_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingGetmoney",KlShoppingGetmoney.ALIAS_PAYWAY)%>:
				 </label>
${my:input('KlShoppingGetmoney','payway',model.payway,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="EXT1"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='ext1_p' class='p123'>
				 <label id='ext1_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingGetmoney",KlShoppingGetmoney.ALIAS_EXT1)%>:
				 </label>
${my:input('KlShoppingGetmoney','ext1',model.ext1,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="EXT2"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='ext2_p' class='p123'>
				 <label id='ext2_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingGetmoney",KlShoppingGetmoney.ALIAS_EXT2)%>:
				 </label>
${my:input('KlShoppingGetmoney','ext2',model.ext2,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="EXT3"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='ext3_p' class='p123'>
				 <label id='ext3_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingGetmoney",KlShoppingGetmoney.ALIAS_EXT3)%>:
				 </label>
${my:input('KlShoppingGetmoney','ext3',model.ext3,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="EXT4"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='ext4_p' class='p123'>
				 <label id='ext4_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingGetmoney",KlShoppingGetmoney.ALIAS_EXT4)%>:
				 </label>
${my:input('KlShoppingGetmoney','ext4',model.ext4,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="EXT5"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='ext5_p' class='p123'>
				 <label id='ext5_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingGetmoney",KlShoppingGetmoney.ALIAS_EXT5)%>:
				 </label>
${my:input('KlShoppingGetmoney','ext5',model.ext5,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="EXT_INT1"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='extInt1_p' class='p123'>
				 <label id='extInt1_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingGetmoney",KlShoppingGetmoney.ALIAS_EXT_INT1)%>:
				 </label>
${my:input('KlShoppingGetmoney','extInt1',model.extInt1,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="EXT_INT2"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='extInt2_p' class='p123'>
				 <label id='extInt2_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingGetmoney",KlShoppingGetmoney.ALIAS_EXT_INT2)%>:
				 </label>
${my:input('KlShoppingGetmoney','extInt2',model.extInt2,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="EXT_INT3"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='extInt3_p' class='p123'>
				 <label id='extInt3_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingGetmoney",KlShoppingGetmoney.ALIAS_EXT_INT3)%>:
				 </label>
${my:input('KlShoppingGetmoney','extInt3',model.extInt3,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="EXT_INT4"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='extInt4_p' class='p123'>
				 <label id='extInt4_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingGetmoney",KlShoppingGetmoney.ALIAS_EXT_INT4)%>:
				 </label>
${my:input('KlShoppingGetmoney','extInt4',model.extInt4,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="EXT_INT5"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='extInt5_p' class='p123'>
				 <label id='extInt5_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingGetmoney",KlShoppingGetmoney.ALIAS_EXT_INT5)%>:
				 </label>
${my:input('KlShoppingGetmoney','extInt5',model.extInt5,10,0 )}
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
