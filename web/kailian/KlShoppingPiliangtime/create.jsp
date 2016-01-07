<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", KlShoppingPiliangtime.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/KlShoppingPiliangtime" />
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
        <h3>创建<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime","table_name")%></h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">
          	<form id="form1" action="${ctx}/kailian/KlShoppingPiliangtime/save.do" method="post">
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
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_SHOPID)%>:
				 </label>
${my:input('KlShoppingPiliangtime','shopid',model.shopid,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="USERID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='userid_p' class='p123'>
				 <label id='userid_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_USERID)%>:
				 </label>
${my:input('KlShoppingPiliangtime','userid',model.userid,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="COACHID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='coachid_p' class='p123'>
				 <label id='coachid_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_COACHID)%>:
				 </label>
${my:input('KlShoppingPiliangtime','coachid',model.coachid,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="SHOPPEDCLASSID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='shoppedclassid_p' class='p123'>
				 <label id='shoppedclassid_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_SHOPPEDCLASSID)%>:
				 </label>
${my:input('KlShoppingPiliangtime','shoppedclassid',model.shoppedclassid,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="DATEFROM"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='datefrom_p' class='p123'>
				 <label id='datefrom_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_DATEFROM)%>:
				 </label>
${my:input('KlShoppingPiliangtime','datefrom',model.datefrom,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="DATETO"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='dateto_p' class='p123'>
				 <label id='dateto_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_DATETO)%>:
				 </label>
${my:input('KlShoppingPiliangtime','dateto',model.dateto,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="WEEKDAYS"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='weekdays_p' class='p123'>
				 <label id='weekdays_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_WEEKDAYS)%>:
				 </label>
${my:input('KlShoppingPiliangtime','weekdays',model.weekdays,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="TIMEFROM"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='timefrom_p' class='p123'>
				 <label id='timefrom_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_TIMEFROM)%>:
				 </label>
${my:input('KlShoppingPiliangtime','timefrom',model.timefrom,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="TIMETO"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='timeto_p' class='p123'>
				 <label id='timeto_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_TIMETO)%>:
				 </label>
${my:input('KlShoppingPiliangtime','timeto',model.timeto,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="TIMEOK"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='timeok_p' class='p123'>
				 <label id='timeok_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_TIMEOK)%>:
				 </label>
${my:input('KlShoppingPiliangtime','timeok',model.timeok,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="EXT1"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='ext1_p' class='p123'>
				 <label id='ext1_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_EXT1)%>:
				 </label>
${my:input('KlShoppingPiliangtime','ext1',model.ext1,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="EXT2"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='ext2_p' class='p123'>
				 <label id='ext2_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_EXT2)%>:
				 </label>
${my:input('KlShoppingPiliangtime','ext2',model.ext2,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="EXT3"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='ext3_p' class='p123'>
				 <label id='ext3_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_EXT3)%>:
				 </label>
${my:input('KlShoppingPiliangtime','ext3',model.ext3,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="EXT4"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='ext4_p' class='p123'>
				 <label id='ext4_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_EXT4)%>:
				 </label>
${my:input('KlShoppingPiliangtime','ext4',model.ext4,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="EXT5"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='ext5_p' class='p123'>
				 <label id='ext5_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_EXT5)%>:
				 </label>
${my:input('KlShoppingPiliangtime','ext5',model.ext5,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="EXT_INT1"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='extInt1_p' class='p123'>
				 <label id='extInt1_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_EXT_INT1)%>:
				 </label>
${my:input('KlShoppingPiliangtime','extInt1',model.extInt1,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="EXT_INT2"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='extInt2_p' class='p123'>
				 <label id='extInt2_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_EXT_INT2)%>:
				 </label>
${my:input('KlShoppingPiliangtime','extInt2',model.extInt2,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="EXT_INT3"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='extInt3_p' class='p123'>
				 <label id='extInt3_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_EXT_INT3)%>:
				 </label>
${my:input('KlShoppingPiliangtime','extInt3',model.extInt3,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="EXT_INT4"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='extInt4_p' class='p123'>
				 <label id='extInt4_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_EXT_INT4)%>:
				 </label>
${my:input('KlShoppingPiliangtime','extInt4',model.extInt4,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="EXT_INT5"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='extInt5_p' class='p123'>
				 <label id='extInt5_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_EXT_INT5)%>:
				 </label>
${my:input('KlShoppingPiliangtime','extInt5',model.extInt5,10,0 )}
			</p>	
			</c:if>
				<!-- 
		
			<c:set var="tt" value="STATUS"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='status_p' class='p123'>
				 <label id='status_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_STATUS)%>:
				 </label>
${my:input('KlShoppingPiliangtime','status',model.status,10,0 )}
			</p>	
			</c:if>
				-->
		
			<c:set var="tt" value="ADDITION"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='addition_p' class='p123'>
				 <label id='addition_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_ADDITION)%>:
				 </label>
${my:input('KlShoppingPiliangtime','addition',model.addition,0,0 )}			</p>	
			</c:if>
				<!-- 
		
			<c:set var="tt" value="CREATETIMELONG"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='createtimelong_p' class='p123'>
				 <label id='createtimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:input('KlShoppingPiliangtime','createtimelong',model.createtimelong,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="MODIFYTIMELONG"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='modifytimelong_p' class='p123'>
				 <label id='modifytimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:input('KlShoppingPiliangtime','modifytimelong',model.modifytimelong,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="CREATEUSER"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='createuser_p' class='p123'>
				 <label id='createuser_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_CREATEUSER)%>:
				 </label>
${my:input('KlShoppingPiliangtime','createuser',model.createuser,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="MODIFYUSER"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='modifyuser_p' class='p123'>
				 <label id='modifyuser_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_MODIFYUSER)%>:
				 </label>
${my:input('KlShoppingPiliangtime','modifyuser',model.modifyuser,10,0 )}
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
