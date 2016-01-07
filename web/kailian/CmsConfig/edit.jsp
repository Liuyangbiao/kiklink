<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsConfig.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/CmsConfig" />
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
        <h3>编辑<%=JSTLTagUtils.getCnname("CmsConfig","table_name")%></h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">
          	<form id="form1" action="${ctx}/kailian/CmsConfig/update.do" method="post">
		<a class="button" onclick="if (doeditors()) $('#form1').submit();" >提交</a>&nbsp;&nbsp;
		<a class="button" onclick="backtolist();">返回列表</a>&nbsp;&nbsp;
		<a class="button" onclick="history.back();">后退</a>
		
		<input type="hidden" id="createtimelong" name="createtimelong" value="${model.createtimelong}"  />
		
		<fieldset>
		
			<input type="hidden" id="id" name="id" value="${model.id}"/>
		
		
		
		
		
		
		
		
		
		
		
		<!-- ONGL access static field: @package.class@field or @vs@field -->
			
			<p id='configname_p' class='p123'>
				 <label id='configname_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsConfig",CmsConfig.ALIAS_CONFIGNAME)%>:
				 </label>
${my:input('CmsConfig','configname',model.configname,0,0 )}			</p>	
			
		
			
			<p id='configtype_p' class='p123'>
				 <label id='configtype_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsConfig",CmsConfig.ALIAS_CONFIGTYPE)%>:
				 </label>
${my:input('CmsConfig','configtype',model.configtype,10,0 )}
			</p>	
			
		
			
			<p id='configvalue_p' class='p123'>
				 <label id='configvalue_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsConfig",CmsConfig.ALIAS_CONFIGVALUE)%>:
				 </label>
<c:choose>
	<c:when test="${model.configtype ne 20}">
		${my:input('CmsConfig','configvalue',model.configvalue,0,0 )}		
	</c:when>
	<c:otherwise>
		<script>
  var editors = new Array();

  var lth = editors.length;
  editors[lth] = new Array();
  editors[lth][0]='configvalue';
  KindEditor.ready(function(K) {
    editors[lth][1] = K.create('textarea[name="configvalue"]',
    {allowFileManager : true,uploadJson : '${ctx}/kindeditornew/jsp/upload_json2.jsp',fileManagerJson : '${ctx}/kindeditornew/jsp/file_manager_json.jsp'
    });});

    function doeditors() {
      for (var i = 0; i < editors.length; i ++) {
        var name = editors[i][0];
        var edt = editors[i][1];

        $('#' + name).text(edt.html());
       //alert($('#' + name).text());
      }
      return true;
    }
  </script>
  <textarea id="configvalue"
      name="configvalue"
      style="border:0px solid red;height:500px;padding-left:0px;margin-left:0px;float:left;"
      cols=""
      rows="">

    ${model.configvalue}
  </textarea>
	</c:otherwise>
</c:choose>
	

</p>	
			
		
				<!-- 
			
			<p id='status_p' class='p123'>
				 <label id='status_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsConfig",CmsConfig.ALIAS_STATUS)%>:
				 </label>
${my:input('CmsConfig','status',model.status,10,0 )}
			</p>	
			
		
				--> 
			
			<p id='addition_p' class='p123'>
				 <label id='addition_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsConfig",CmsConfig.ALIAS_ADDITION)%>:
				 </label>
${my:input('CmsConfig','addition',model.addition,0,0 )}			</p>	
			
		
				<!-- 
			
			<p id='createtimelong_p' class='p123'>
				 <label id='createtimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsConfig",CmsConfig.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:input('CmsConfig','createtimelong',model.createtimelong,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='modifytimelong_p' class='p123'>
				 <label id='modifytimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsConfig",CmsConfig.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:input('CmsConfig','modifytimelong',model.modifytimelong,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='createuser_p' class='p123'>
				 <label id='createuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsConfig",CmsConfig.ALIAS_CREATEUSER)%>:
				 </label>
${my:input('CmsConfig','createuser',model.createuser,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='modifyuser_p' class='p123'>
				 <label id='modifyuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsConfig",CmsConfig.ALIAS_MODIFYUSER)%>:
				 </label>
${my:input('CmsConfig','modifyuser',model.modifyuser,10,0 )}
			</p>	
			
		
				--> 
			
			<p id='category_p' class='p123'>
				 <label id='category_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsConfig",CmsConfig.ALIAS_CATEGORY)%>:
				 </label>
${my:input('CmsConfig','category',model.category,10,0 )}
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
