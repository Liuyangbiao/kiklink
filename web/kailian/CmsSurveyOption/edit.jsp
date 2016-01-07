<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsSurveyOption.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/CmsSurveyOption" />
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
        <h3>编辑<%=JSTLTagUtils.getCnname("CmsSurveyOption","table_name")%></h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">
          	<form id="form1" action="${ctx}/kailian/CmsSurveyOption/update.do" method="post">
		<a class="button" onclick="if (doeditors()) $('#form1').submit();" >提交</a>&nbsp;&nbsp;
		<a class="button" onclick="backtolist();">返回列表</a>&nbsp;&nbsp;
		<a class="button" onclick="history.back();">后退</a>
		
		<input type="hidden" id="createtimelong" name="createtimelong" value="${model.createtimelong}"  />
		
		<fieldset>
		
			<input type="hidden" id="id" name="id" value="${model.id}"/>
		
		
		
		
		
		
		
		
		
		
		
		
		<!-- ONGL access static field: @package.class@field or @vs@field -->
			
			<p id='optionName_p' class='p123'>
				 <label id='optionName_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsSurveyOption",CmsSurveyOption.ALIAS_OPTION_NAME)%>:
				 </label>
${my:input('CmsSurveyOption','optionName',model.optionName,0,0 )}			</p>	
			
		
			
			<p id='declearation_p' class='p123'>
				 <label id='declearation_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsSurveyOption",CmsSurveyOption.ALIAS_DECLEARATION)%>:
				 </label>
${my:input('CmsSurveyOption','declearation',model.declearation,0,0 )}			</p>	
			
		
			
			<p id='coverimg_p' class='p123'>
				 <label id='coverimg_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsSurveyOption",CmsSurveyOption.ALIAS_COVERIMG)%>:
				 </label>
${my:input('CmsSurveyOption','coverimg',model.coverimg,0,0 )}			</p>	
			
		
				<!-- 
			
			<p id='status_p' class='p123'>
				 <label id='status_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsSurveyOption",CmsSurveyOption.ALIAS_STATUS)%>:
				 </label>
${my:input('CmsSurveyOption','status',model.status,10,0 )}
			</p>	
			
		
				--> 
			
			<p id='addition_p' class='p123'>
				 <label id='addition_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsSurveyOption",CmsSurveyOption.ALIAS_ADDITION)%>:
				 </label>
${my:input('CmsSurveyOption','addition',model.addition,0,0 )}			</p>	
			
		
				<!-- 
			
			<p id='createtimelong_p' class='p123'>
				 <label id='createtimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsSurveyOption",CmsSurveyOption.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:input('CmsSurveyOption','createtimelong',model.createtimelong,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='modifytimelong_p' class='p123'>
				 <label id='modifytimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsSurveyOption",CmsSurveyOption.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:input('CmsSurveyOption','modifytimelong',model.modifytimelong,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='createuser_p' class='p123'>
				 <label id='createuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsSurveyOption",CmsSurveyOption.ALIAS_CREATEUSER)%>:
				 </label>
${my:input('CmsSurveyOption','createuser',model.createuser,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='modifyuser_p' class='p123'>
				 <label id='modifyuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsSurveyOption",CmsSurveyOption.ALIAS_MODIFYUSER)%>:
				 </label>
${my:input('CmsSurveyOption','modifyuser',model.modifyuser,10,0 )}
			</p>	
			
		
				--> 
			
			<p id='surveyId_p' class='p123'>
				 <label id='surveyId_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsSurveyOption",CmsSurveyOption.ALIAS_SURVEY_ID)%>:
				 </label>
${my:input('CmsSurveyOption','surveyId',model.surveyId,10,0 )}
			</p>	
			
		
			
			<p id='optionType_p' class='p123'>
				 <label id='optionType_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsSurveyOption",CmsSurveyOption.ALIAS_OPTION_TYPE)%>:
				 </label>
${my:input('CmsSurveyOption','optionType',model.optionType,10,0 )}
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
