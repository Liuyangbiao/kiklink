<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsBiaodan.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/CmsBiaodan" />
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
        <h3>编辑<%=JSTLTagUtils.getCnname("CmsBiaodan","table_name")%></h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">
          	<form id="form1" action="${ctx}/kailian/CmsBiaodan/update.do" method="post">
		<a class="button" onclick="if (doeditors()) $('#form1').submit();" >提交</a>&nbsp;&nbsp;
		<a class="button" onclick="backtolist();">返回列表</a>&nbsp;&nbsp;
		<a class="button" onclick="history.back();">后退</a>
		
		<input type="hidden" id="createtimelong" name="createtimelong" value="${model.createtimelong}"  />
		
		<fieldset>
		
			<input type="hidden" id="id" name="id" value="${model.id}"/>
		
		
		
		
		
		
		
		
		
		
		
		
		
		<!-- ONGL access static field: @package.class@field or @vs@field -->
			
			<p id='listname_p' class='p123'>
				 <label id='listname_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsBiaodan",CmsBiaodan.ALIAS_LISTNAME)%>:
				 </label>
${my:input('CmsBiaodan','listname',model.listname,0,0 )}			</p>	
			
		
			
			<p id='listkey_p' class='p123'>
				 <label id='listkey_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsBiaodan",CmsBiaodan.ALIAS_LISTKEY)%>:
				 </label>
${my:input('CmsBiaodan','listkey',model.listkey,0,0 )}			</p>	
			
		
			
			<p id='loadonstartup_p' class='p123'>
				 <label id='loadonstartup_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsBiaodan",CmsBiaodan.ALIAS_LOADONSTARTUP)%>:
				 </label>
${my:input('CmsBiaodan','loadonstartup',model.loadonstartup,10,0 )}
			</p>	
			
		
			
			<p id='declaration_p' class='p123'>
				 <label id='declaration_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsBiaodan",CmsBiaodan.ALIAS_DECLARATION)%>:
				 </label>
${my:input('CmsBiaodan','declaration',model.declaration,0,0 )}			</p>	
			
		
			
			<p id='parentid_p' class='p123'>
				 <label id='parentid_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsBiaodan",CmsBiaodan.ALIAS_PARENTID)%>:
				 </label>
${my:input('CmsBiaodan','parentid',model.parentid,10,0 )}
			</p>	
			
		
			
			<p id='type_p' class='p123'>
				 <label id='type_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsBiaodan",CmsBiaodan.ALIAS_TYPE)%>:
				 </label>
${my:input('CmsBiaodan','type',model.type,10,0 )}
			</p>	
			
		
				<!-- 
			
			<p id='status_p' class='p123'>
				 <label id='status_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsBiaodan",CmsBiaodan.ALIAS_STATUS)%>:
				 </label>
${my:input('CmsBiaodan','status',model.status,10,0 )}
			</p>	
			
		
				--> 
			
			<p id='addition_p' class='p123'>
				 <label id='addition_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsBiaodan",CmsBiaodan.ALIAS_ADDITION)%>:
				 </label>
${my:input('CmsBiaodan','addition',model.addition,0,0 )}			</p>	
			
		
				<!-- 
			
			<p id='createtimelong_p' class='p123'>
				 <label id='createtimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsBiaodan",CmsBiaodan.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:input('CmsBiaodan','createtimelong',model.createtimelong,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='modifytimelong_p' class='p123'>
				 <label id='modifytimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsBiaodan",CmsBiaodan.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:input('CmsBiaodan','modifytimelong',model.modifytimelong,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='createuser_p' class='p123'>
				 <label id='createuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsBiaodan",CmsBiaodan.ALIAS_CREATEUSER)%>:
				 </label>
${my:input('CmsBiaodan','createuser',model.createuser,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='modifyuser_p' class='p123'>
				 <label id='modifyuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsBiaodan",CmsBiaodan.ALIAS_MODIFYUSER)%>:
				 </label>
${my:input('CmsBiaodan','modifyuser',model.modifyuser,10,0 )}
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
