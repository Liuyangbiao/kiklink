<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CtPhoto.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/CtPhoto" />
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
        <h3>创建<%=JSTLTagUtils.getCnname("CtPhoto","table_name")%></h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">
          	<form id="form1" action="${ctx}/kailian/CtPhoto/save.do" method="post">
		<a class="button" onclick="if(doeditors()) $('#form1').submit();" >提交</a>&nbsp;&nbsp;
		<a class="button" onclick="backtolist();">返回列表</a>&nbsp;&nbsp;
		<a class="button" onclick="history.back();">后退</a>
		
		<fieldset>
			<input type="hidden" id="id" name="id" value="${model.id}"/>
		
		<!-- ONGL access static field: @package.class@field or @vs@field -->
		
			<c:set var="tt" value="ID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			</c:if>
		
			<c:set var="tt" value="OWNERID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='ownerid_p' class='p123'>
				 <label id='ownerid_mainlb'>
					<%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_OWNERID)%>:
				 </label>
${my:input('CtPhoto','ownerid',model.ownerid,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="OWNERTYPE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='ownertype_p' class='p123'>
				 <label id='ownertype_mainlb'>
					<%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_OWNERTYPE)%>:
				 </label>
${my:input('CtPhoto','ownertype',model.ownertype,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="SUBMITERID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='submiterid_p' class='p123'>
				 <label id='submiterid_mainlb'>
					<%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_SUBMITERID)%>:
				 </label>
${my:input('CtPhoto','submiterid',model.submiterid,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="SUBMITERNAME"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='submitername_p' class='p123'>
				 <label id='submitername_mainlb'>
					<span class="required">*</span><%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_SUBMITERNAME)%>:
				 </label>
${my:input('CtPhoto','submitername',model.submitername,0,1 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="IMGURL"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='imgurl_p' class='p123'>
				 <label id='imgurl_mainlb'>
					<%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_IMGURL)%>:
				 </label>
${my:input('CtPhoto','imgurl',model.imgurl,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="IMGNAME"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='imgname_p' class='p123'>
				 <label id='imgname_mainlb'>
					<%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_IMGNAME)%>:
				 </label>
${my:input('CtPhoto','imgname',model.imgname,0,0 )}			</p>	
			</c:if>
				<!-- 
		
			<c:set var="tt" value="STATUS"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='status_p' class='p123'>
				 <label id='status_mainlb'>
					<%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_STATUS)%>:
				 </label>
${my:input('CtPhoto','status',model.status,10,0 )}
			</p>	
			</c:if>
				-->
		
			<c:set var="tt" value="ADDITION"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='addition_p' class='p123'>
				 <label id='addition_mainlb'>
					<%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_ADDITION)%>:
				 </label>
${my:input('CtPhoto','addition',model.addition,0,0 )}			</p>	
			</c:if>
				<!-- 
		
			<c:set var="tt" value="CREATETIMELONG"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='createtimelong_p' class='p123'>
				 <label id='createtimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:input('CtPhoto','createtimelong',model.createtimelong,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="MODIFYTIMELONG"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='modifytimelong_p' class='p123'>
				 <label id='modifytimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:input('CtPhoto','modifytimelong',model.modifytimelong,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="CREATEUSER"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='createuser_p' class='p123'>
				 <label id='createuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_CREATEUSER)%>:
				 </label>
${my:input('CtPhoto','createuser',model.createuser,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="MODIFYUSER"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='modifyuser_p' class='p123'>
				 <label id='modifyuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_MODIFYUSER)%>:
				 </label>
${my:input('CtPhoto','modifyuser',model.modifyuser,10,0 )}
			</p>	
			</c:if>
				-->
		
			<c:set var="tt" value="EXT1"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='ext1_p' class='p123'>
				 <label id='ext1_mainlb'>
					<%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_EXT1)%>:
				 </label>
${my:input('CtPhoto','ext1',model.ext1,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="EXT2"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='ext2_p' class='p123'>
				 <label id='ext2_mainlb'>
					<%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_EXT2)%>:
				 </label>
${my:input('CtPhoto','ext2',model.ext2,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="EXT3"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='ext3_p' class='p123'>
				 <label id='ext3_mainlb'>
					<%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_EXT3)%>:
				 </label>
${my:input('CtPhoto','ext3',model.ext3,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="EXT4"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='ext4_p' class='p123'>
				 <label id='ext4_mainlb'>
					<%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_EXT4)%>:
				 </label>
${my:input('CtPhoto','ext4',model.ext4,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="EXT5"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='ext5_p' class='p123'>
				 <label id='ext5_mainlb'>
					<%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_EXT5)%>:
				 </label>
${my:input('CtPhoto','ext5',model.ext5,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="EXTINT1"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='extint1_p' class='p123'>
				 <label id='extint1_mainlb'>
					<%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_EXTINT1)%>:
				 </label>
${my:input('CtPhoto','extint1',model.extint1,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="EXTINT2"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='extint2_p' class='p123'>
				 <label id='extint2_mainlb'>
					<%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_EXTINT2)%>:
				 </label>
${my:input('CtPhoto','extint2',model.extint2,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="EXTINT3"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='extint3_p' class='p123'>
				 <label id='extint3_mainlb'>
					<%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_EXTINT3)%>:
				 </label>
${my:input('CtPhoto','extint3',model.extint3,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="EXTINT4"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='extint4_p' class='p123'>
				 <label id='extint4_mainlb'>
					<%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_EXTINT4)%>:
				 </label>
${my:input('CtPhoto','extint4',model.extint4,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="EXTINT5"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='extint5_p' class='p123'>
				 <label id='extint5_mainlb'>
					<%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_EXTINT5)%>:
				 </label>
${my:input('CtPhoto','extint5',model.extint5,10,0 )}
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
