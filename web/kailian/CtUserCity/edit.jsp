<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CtUserCity.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/CtUserCity" />
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
        <h3>编辑<%=JSTLTagUtils.getCnname("CtUserCity","table_name")%></h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">
          	<form id="form1" action="${ctx}/kailian/CtUserCity/update.do" method="post">
		<a class="button" onclick="if (doeditors()) $('#form1').submit();" >提交</a>&nbsp;&nbsp;
		<a class="button" onclick="backtolist();">返回列表</a>&nbsp;&nbsp;
		<a class="button" onclick="history.back();">后退</a>
		
		<input type="hidden" id="createtimelong" name="createtimelong" value="${model.createtimelong}"  />
		
		<fieldset>
		
			<input type="hidden" id="id" name="id" value="${model.id}"/>
		
		
		
		
		
		
		
		<!-- ONGL access static field: @package.class@field or @vs@field -->
			
			<p id='provinceid_p' class='p123'>
				 <label id='provinceid_mainlb'>
					<%=JSTLTagUtils.getCnname("CtUserCity",CtUserCity.ALIAS_PROVINCEID)%>:
				 </label>
${my:input('CtUserCity','provinceid',model.provinceid,10,0 )}
			</p>	
			
		
			
			<p id='name_p' class='p123'>
				 <label id='name_mainlb'>
					<%=JSTLTagUtils.getCnname("CtUserCity",CtUserCity.ALIAS_NAME)%>:
				 </label>
${my:input('CtUserCity','name',model.name,0,0 )}			</p>	
			
		
			
			<p id='firstchar_p' class='p123'>
				 <label id='firstchar_mainlb'>
					<%=JSTLTagUtils.getCnname("CtUserCity",CtUserCity.ALIAS_FIRSTCHAR)%>:
				 </label>
${my:input('CtUserCity','firstchar',model.firstchar,0,0 )}			</p>	
			
		
			
			<p id='imghead_p' class='p123'>
				 <label id='imghead_mainlb'>
					<%=JSTLTagUtils.getCnname("CtUserCity",CtUserCity.ALIAS_IMGHEAD)%>:
				 </label>
${my:input('CtUserCity','imghead',model.imghead,0,0 )}			</p>	
			
		
			
			<p id='img1_p' class='p123'>
				 <label id='img1_mainlb'>
					<%=JSTLTagUtils.getCnname("CtUserCity",CtUserCity.ALIAS_IMG1)%>:
				 </label>
${my:input('CtUserCity','img1',model.img1,0,0 )}			</p>	
			
		
			
			<p id='img2_p' class='p123'>
				 <label id='img2_mainlb'>
					<%=JSTLTagUtils.getCnname("CtUserCity",CtUserCity.ALIAS_IMG2)%>:
				 </label>
${my:input('CtUserCity','img2',model.img2,0,0 )}			</p>	
			
		
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
