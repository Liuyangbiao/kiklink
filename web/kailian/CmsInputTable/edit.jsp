<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsInputTable.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/CmsInputTable" />
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
        <h3>编辑<%=JSTLTagUtils.getCnname("CmsInputTable","table_name")%></h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">
          	<form id="form1" action="${ctx}/kailian/CmsInputTable/update.do" method="post">
		<a class="button" onclick="if (doeditors()) $('#form1').submit();" >提交</a>&nbsp;&nbsp;
		<a class="button" onclick="backtolist();">返回列表</a>&nbsp;&nbsp;
		<a class="button" onclick="history.back();">后退</a>
		
		<input type="hidden" id="createtimelong" name="createtimelong" value="${model.createtimelong}"  />
		
		<fieldset>
		
			<input type="hidden" id="id" name="id" value="${model.id}"/>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		<!-- ONGL access static field: @package.class@field or @vs@field -->
			
			<p id='className_p' class='p123'>
				 <label id='className_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_CLASS_NAME)%>:
				 </label>
${my:input('CmsInputTable','className',model.className,0,0 )}			</p>	
			
		
			
			<p id='inputName_p' class='p123'>
				 <label id='inputName_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_INPUT_NAME)%>:
				 </label>
${my:input('CmsInputTable','inputName',model.inputName,0,0 )}			</p>	
			
		
			
			<p id='classComment_p' class='p123'>
				 <label id='classComment_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_CLASS_COMMENT)%>:
				 </label>
${my:input('CmsInputTable','classComment',model.classComment,0,0 )}			</p>	
			
		
			
			<p id='inputComment_p' class='p123'>
				 <label id='inputComment_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_INPUT_COMMENT)%>:
				 </label>
${my:input('CmsInputTable','inputComment',model.inputComment,0,0 )}			</p>	
			
		
			
			<p id='inputType_p' class='p123'>
				 <label id='inputType_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_INPUT_TYPE)%>:
				 </label>
${my:input('CmsInputTable','inputType',model.inputType,10,0 )}
			</p>	
			
		
			
			<p id='inputEnName_p' class='p123'>
				 <label id='inputEnName_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_INPUT_EN_NAME)%>:
				 </label>
${my:input('CmsInputTable','inputEnName',model.inputEnName,0,0 )}			</p>	
			
		
			
			<p id='inputCnName_p' class='p123'>
				 <label id='inputCnName_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_INPUT_CN_NAME)%>:
				 </label>
${my:input('CmsInputTable','inputCnName',model.inputCnName,0,0 )}			</p>	
			
		
			
			<p id='linkClassName_p' class='p123'>
				 <label id='linkClassName_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_LINK_CLASS_NAME)%>:
				 </label>
${my:input('CmsInputTable','linkClassName',model.linkClassName,0,0 )}			</p>	
			
		
			
			<p id='linkInputName_p' class='p123'>
				 <label id='linkInputName_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_LINK_INPUT_NAME)%>:
				 </label>
${my:input('CmsInputTable','linkInputName',model.linkInputName,0,0 )}			</p>	
			
		
			
			<p id='linkParam_p' class='p123'>
				 <label id='linkParam_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_LINK_PARAM)%>:
				 </label>
${my:input('CmsInputTable','linkParam',model.linkParam,0,0 )}			</p>	
			
		
			
			<p id='inputAddition_p' class='p123'>
				 <label id='inputAddition_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_INPUT_ADDITION)%>:
				 </label>
${my:input('CmsInputTable','inputAddition',model.inputAddition,0,0 )}			</p>	
			
		
				<!-- 
			
			<p id='status_p' class='p123'>
				 <label id='status_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_STATUS)%>:
				 </label>
${my:input('CmsInputTable','status',model.status,10,0 )}
			</p>	
			
		
				--> 
			
			<p id='addition_p' class='p123'>
				 <label id='addition_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_ADDITION)%>:
				 </label>
${my:input('CmsInputTable','addition',model.addition,0,0 )}			</p>	
			
		
				<!-- 
			
			<p id='createtimelong_p' class='p123'>
				 <label id='createtimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:input('CmsInputTable','createtimelong',model.createtimelong,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='modifytimelong_p' class='p123'>
				 <label id='modifytimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:input('CmsInputTable','modifytimelong',model.modifytimelong,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='createuser_p' class='p123'>
				 <label id='createuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_CREATEUSER)%>:
				 </label>
${my:input('CmsInputTable','createuser',model.createuser,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='modifyuser_p' class='p123'>
				 <label id='modifyuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_MODIFYUSER)%>:
				 </label>
${my:input('CmsInputTable','modifyuser',model.modifyuser,10,0 )}
			</p>	
			
		
				--> 
			
			<p id='luceneIndexType_p' class='p123'>
				 <label id='luceneIndexType_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_LUCENE_INDEX_TYPE)%>:
				 </label>
${my:input('CmsInputTable','luceneIndexType',model.luceneIndexType,10,0 )}
			</p>	
			
		
			
			<p id='minlength_p' class='p123'>
				 <label id='minlength_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_MINLENGTH)%>:
				 </label>
${my:input('CmsInputTable','minlength',model.minlength,10,0 )}
			</p>	
			
		
			
			<p id='maxlength_p' class='p123'>
				 <label id='maxlength_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_MAXLENGTH)%>:
				 </label>
${my:input('CmsInputTable','maxlength',model.maxlength,10,0 )}
			</p>	
			
		
			
			<p id='required_p' class='p123'>
				 <label id='required_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_REQUIRED)%>:
				 </label>
${my:input('CmsInputTable','required',model.required,10,0 )}
			</p>	
			
		
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
