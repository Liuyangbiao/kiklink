<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsIpdata.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/CmsIpdata" />
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
        <h3>编辑<%=JSTLTagUtils.getCnname("CmsIpdata","table_name")%></h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">
          	<form id="form1" action="${ctx}/kailian/CmsIpdata/update.do" method="post">
		<a class="button" onclick="if (doeditors()) $('#form1').submit();" >提交</a>&nbsp;&nbsp;
		<a class="button" onclick="backtolist();">返回列表</a>&nbsp;&nbsp;
		<a class="button" onclick="history.back();">后退</a>
		
		<input type="hidden" id="createtimelong" name="createtimelong" value="${model.createtimelong}"  />
		
		<fieldset>
		
			<input type="hidden" id="id" name="id" value="${model.id}"/>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		<!-- ONGL access static field: @package.class@field or @vs@field -->
			
			<p id='ipfrom_p' class='p123'>
				 <label id='ipfrom_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsIpdata",CmsIpdata.ALIAS_IPFROM)%>:
				 </label>
${my:input('CmsIpdata','ipfrom',model.ipfrom,0,0 )}			</p>	
			
		
			
			<p id='ipto_p' class='p123'>
				 <label id='ipto_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsIpdata",CmsIpdata.ALIAS_IPTO)%>:
				 </label>
${my:input('CmsIpdata','ipto',model.ipto,0,0 )}			</p>	
			
		
			
			<p id='ipcommon_p' class='p123'>
				 <label id='ipcommon_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsIpdata",CmsIpdata.ALIAS_IPCOMMON)%>:
				 </label>
${my:input('CmsIpdata','ipcommon',model.ipcommon,0,0 )}			</p>	
			
		
			
			<p id='numFrom_p' class='p123'>
				 <label id='numFrom_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsIpdata",CmsIpdata.ALIAS_NUM_FROM)%>:
				 </label>
${my:input('CmsIpdata','numFrom',model.numFrom,10,0 )}
			</p>	
			
		
			
			<p id='numTo_p' class='p123'>
				 <label id='numTo_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsIpdata",CmsIpdata.ALIAS_NUM_TO)%>:
				 </label>
${my:input('CmsIpdata','numTo',model.numTo,10,0 )}
			</p>	
			
		
			
			<p id='area_p' class='p123'>
				 <label id='area_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsIpdata",CmsIpdata.ALIAS_AREA)%>:
				 </label>
${my:input('CmsIpdata','area',model.area,0,0 )}			</p>	
			
		
			
			<p id='operatior_p' class='p123'>
				 <label id='operatior_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsIpdata",CmsIpdata.ALIAS_OPERATIOR)%>:
				 </label>
${my:input('CmsIpdata','operatior',model.operatior,0,0 )}			</p>	
			
		
				<!-- 
			
			<p id='status_p' class='p123'>
				 <label id='status_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsIpdata",CmsIpdata.ALIAS_STATUS)%>:
				 </label>
${my:input('CmsIpdata','status',model.status,10,0 )}
			</p>	
			
		
				--> 
			
			<p id='addition_p' class='p123'>
				 <label id='addition_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsIpdata",CmsIpdata.ALIAS_ADDITION)%>:
				 </label>
${my:input('CmsIpdata','addition',model.addition,0,0 )}			</p>	
			
		
				<!-- 
			
			<p id='createtimelong_p' class='p123'>
				 <label id='createtimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsIpdata",CmsIpdata.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:input('CmsIpdata','createtimelong',model.createtimelong,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='modifytimelong_p' class='p123'>
				 <label id='modifytimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsIpdata",CmsIpdata.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:input('CmsIpdata','modifytimelong',model.modifytimelong,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='createuser_p' class='p123'>
				 <label id='createuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsIpdata",CmsIpdata.ALIAS_CREATEUSER)%>:
				 </label>
${my:input('CmsIpdata','createuser',model.createuser,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='modifyuser_p' class='p123'>
				 <label id='modifyuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsIpdata",CmsIpdata.ALIAS_MODIFYUSER)%>:
				 </label>
${my:input('CmsIpdata','modifyuser',model.modifyuser,10,0 )}
			</p>	
			
		
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
