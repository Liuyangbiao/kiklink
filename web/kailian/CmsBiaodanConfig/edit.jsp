<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsBiaodanConfig.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/CmsBiaodanConfig" />
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
        <h3>编辑<%=JSTLTagUtils.getCnname("CmsBiaodanConfig","table_name")%></h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">
          	<form id="form1" action="${ctx}/kailian/CmsBiaodanConfig/update.do" method="post">
		<a class="button" onclick="if (doeditors()) $('#form1').submit();" >提交</a>&nbsp;&nbsp;
		<a class="button" onclick="backtolist();">返回列表</a>&nbsp;&nbsp;
		<a class="button" onclick="history.back();">后退</a>
		
		<input type="hidden" id="createtimelong" name="createtimelong" value="${model.createtimelong}"  />
		
		<fieldset>
		
			<input type="hidden" id="id" name="id" value="${model.id}"/>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		<!-- ONGL access static field: @package.class@field or @vs@field -->
			
			<p id='inputListId_p' class='p123'>
				 <label id='inputListId_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsBiaodanConfig",CmsBiaodanConfig.ALIAS_INPUT_LIST_ID)%>:
				 </label>
${my:input('CmsBiaodanConfig','inputListId',model.inputListId,10,0 )}
			</p>	
			
		
			
			<p id='inputListType_p' class='p123'>
				 <label id='inputListType_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsBiaodanConfig",CmsBiaodanConfig.ALIAS_INPUT_LIST_TYPE)%>:
				 </label>
${my:input('CmsBiaodanConfig','inputListType',model.inputListType,10,0 )}
			</p>	
			
		
			
			<p id='inputType_p' class='p123'>
				 <label id='inputType_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsBiaodanConfig",CmsBiaodanConfig.ALIAS_INPUT_TYPE)%>:
				 </label>
${my:input('CmsBiaodanConfig','inputType',model.inputType,10,0 )}
			</p>	
			
		
			
			<p id='inputEnName_p' class='p123'>
				 <label id='inputEnName_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsBiaodanConfig",CmsBiaodanConfig.ALIAS_INPUT_EN_NAME)%>:
				 </label>
${my:input('CmsBiaodanConfig','inputEnName',model.inputEnName,0,0 )}			</p>	
			
		
			
			<p id='inputCnName_p' class='p123'>
				 <label id='inputCnName_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsBiaodanConfig",CmsBiaodanConfig.ALIAS_INPUT_CN_NAME)%>:
				 </label>
${my:input('CmsBiaodanConfig','inputCnName',model.inputCnName,0,0 )}			</p>	
			
		
			
			<p id='inputShow_p' class='p123'>
				 <label id='inputShow_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsBiaodanConfig",CmsBiaodanConfig.ALIAS_INPUT_SHOW)%>:
				 </label>
${my:input('CmsBiaodanConfig','inputShow',model.inputShow,10,0 )}
			</p>	
			
		
			
			<p id='luceneIndexType_p' class='p123'>
				 <label id='luceneIndexType_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsBiaodanConfig",CmsBiaodanConfig.ALIAS_LUCENE_INDEX_TYPE)%>:
				 </label>
${my:input('CmsBiaodanConfig','luceneIndexType',model.luceneIndexType,10,0 )}
			</p>	
			
		
				<!-- 
			
			<p id='status_p' class='p123'>
				 <label id='status_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsBiaodanConfig",CmsBiaodanConfig.ALIAS_STATUS)%>:
				 </label>
${my:input('CmsBiaodanConfig','status',model.status,10,0 )}
			</p>	
			
		
				--> 
			
			<p id='addition_p' class='p123'>
				 <label id='addition_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsBiaodanConfig",CmsBiaodanConfig.ALIAS_ADDITION)%>:
				 </label>
${my:input('CmsBiaodanConfig','addition',model.addition,0,0 )}			</p>	
			
		
				<!-- 
			
			<p id='createtimelong_p' class='p123'>
				 <label id='createtimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsBiaodanConfig",CmsBiaodanConfig.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:input('CmsBiaodanConfig','createtimelong',model.createtimelong,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='modifytimelong_p' class='p123'>
				 <label id='modifytimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsBiaodanConfig",CmsBiaodanConfig.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:input('CmsBiaodanConfig','modifytimelong',model.modifytimelong,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='createuser_p' class='p123'>
				 <label id='createuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsBiaodanConfig",CmsBiaodanConfig.ALIAS_CREATEUSER)%>:
				 </label>
${my:input('CmsBiaodanConfig','createuser',model.createuser,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='modifyuser_p' class='p123'>
				 <label id='modifyuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsBiaodanConfig",CmsBiaodanConfig.ALIAS_MODIFYUSER)%>:
				 </label>
${my:input('CmsBiaodanConfig','modifyuser',model.modifyuser,10,0 )}
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
