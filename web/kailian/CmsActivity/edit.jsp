<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsActivity.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/CmsActivity" />
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
        <h3>编辑<%=JSTLTagUtils.getCnname("CmsActivity","table_name")%></h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">
          	<form id="form1" action="${ctx}/kailian/CmsActivity/update.do" method="post">
		<a class="button" onclick="if (doeditors()) $('#form1').submit();" >提交</a>&nbsp;&nbsp;
		<a class="button" onclick="backtolist();">返回列表</a>&nbsp;&nbsp;
		<a class="button" onclick="history.back();">后退</a>
		
		<input type="hidden" id="createtimelong" name="createtimelong" value="${model.createtimelong}"  />
		
		<fieldset>
		
			<input type="hidden" id="id" name="id" value="${model.id}"/>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		<!-- ONGL access static field: @package.class@field or @vs@field -->
			
			<p id='title_p' class='p123'>
				 <label id='title_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_TITLE)%>:
				 </label>
${my:input('CmsActivity','title',model.title,0,0 )}			</p>	
			
		
			
			<p id='targetType_p' class='p123'>
				 <label id='targetType_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_TARGET_TYPE)%>:
				 </label>
${my:input('CmsActivity','targetType',model.targetType,10,0 )}
			</p>	
			
		
			
			<p id='targetId_p' class='p123'>
				 <label id='targetId_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_TARGET_ID)%>:
				 </label>
${my:input('CmsActivity','targetId',model.targetId,10,0 )}
			</p>	
			
		
			
			<p id='joinType_p' class='p123'>
				 <label id='joinType_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_JOIN_TYPE)%>:
				 </label>
${my:input('CmsActivity','joinType',model.joinType,10,0 )}
			</p>	
			
		
			
			<p id='joinLimit_p' class='p123'>
				 <label id='joinLimit_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_JOIN_LIMIT)%>:
				 </label>
${my:input('CmsActivity','joinLimit',model.joinLimit,10,0 )}
			</p>	
			
		
			
			<p id='joinCount_p' class='p123'>
				 <label id='joinCount_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_JOIN_COUNT)%>:
				 </label>
${my:input('CmsActivity','joinCount',model.joinCount,10,0 )}
			</p>	
			
		
			
			<p id='content_p' class='p123'>
				 <label id='content_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_CONTENT)%>:
				 </label>
${my:input('CmsActivity','content',model.content,0,0 )}			</p>	
			
		
			
			<p id='validDateLong_p' class='p123'>
				 <label id='validDateLong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_VALID_DATE_LONG)%>:
				 </label>
${my:input('CmsActivity','validDateLong',model.validDateLong,10,0 )}
			</p>	
			
		
			
			<p id='validDate_p' class='p123'>
				 <label id='validDate_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_VALID_DATE)%>:
				 </label>
${my:input('CmsActivity','validDate',model.validDate,0,0 )}			</p>	
			
		
			
			<p id='invalidDateLong_p' class='p123'>
				 <label id='invalidDateLong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_INVALID_DATE_LONG)%>:
				 </label>
${my:input('CmsActivity','invalidDateLong',model.invalidDateLong,10,0 )}
			</p>	
			
		
			
			<p id='invalidDate_p' class='p123'>
				 <label id='invalidDate_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_INVALID_DATE)%>:
				 </label>
${my:input('CmsActivity','invalidDate',model.invalidDate,0,0 )}			</p>	
			
		
				<!-- 
			
			<p id='status_p' class='p123'>
				 <label id='status_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_STATUS)%>:
				 </label>
${my:input('CmsActivity','status',model.status,10,0 )}
			</p>	
			
		
				--> 
			
			<p id='addition_p' class='p123'>
				 <label id='addition_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_ADDITION)%>:
				 </label>
${my:input('CmsActivity','addition',model.addition,0,0 )}			</p>	
			
		
				<!-- 
			
			<p id='createtimelong_p' class='p123'>
				 <label id='createtimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:input('CmsActivity','createtimelong',model.createtimelong,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='modifytimelong_p' class='p123'>
				 <label id='modifytimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:input('CmsActivity','modifytimelong',model.modifytimelong,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='createuser_p' class='p123'>
				 <label id='createuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_CREATEUSER)%>:
				 </label>
${my:input('CmsActivity','createuser',model.createuser,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='modifyuser_p' class='p123'>
				 <label id='modifyuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_MODIFYUSER)%>:
				 </label>
${my:input('CmsActivity','modifyuser',model.modifyuser,10,0 )}
			</p>	
			
		
				--> 
			
			<p id='ext1_p' class='p123'>
				 <label id='ext1_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_EXT1)%>:
				 </label>
${my:input('CmsActivity','ext1',model.ext1,0,0 )}			</p>	
			
		
			
			<p id='ext2_p' class='p123'>
				 <label id='ext2_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_EXT2)%>:
				 </label>
${my:input('CmsActivity','ext2',model.ext2,0,0 )}			</p>	
			
		
			
			<p id='ext3_p' class='p123'>
				 <label id='ext3_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_EXT3)%>:
				 </label>
${my:input('CmsActivity','ext3',model.ext3,0,0 )}			</p>	
			
		
			
			<p id='ext4_p' class='p123'>
				 <label id='ext4_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_EXT4)%>:
				 </label>
${my:input('CmsActivity','ext4',model.ext4,0,0 )}			</p>	
			
		
			
			<p id='ext5_p' class='p123'>
				 <label id='ext5_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_EXT5)%>:
				 </label>
${my:input('CmsActivity','ext5',model.ext5,0,0 )}			</p>	
			
		
			
			<p id='extInt1_p' class='p123'>
				 <label id='extInt1_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_EXT_INT1)%>:
				 </label>
${my:input('CmsActivity','extInt1',model.extInt1,10,0 )}
			</p>	
			
		
			
			<p id='extInt2_p' class='p123'>
				 <label id='extInt2_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_EXT_INT2)%>:
				 </label>
${my:input('CmsActivity','extInt2',model.extInt2,10,0 )}
			</p>	
			
		
			
			<p id='extInt3_p' class='p123'>
				 <label id='extInt3_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_EXT_INT3)%>:
				 </label>
${my:input('CmsActivity','extInt3',model.extInt3,10,0 )}
			</p>	
			
		
			
			<p id='extInt4_p' class='p123'>
				 <label id='extInt4_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_EXT_INT4)%>:
				 </label>
${my:input('CmsActivity','extInt4',model.extInt4,10,0 )}
			</p>	
			
		
			
			<p id='extInt5_p' class='p123'>
				 <label id='extInt5_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsActivity",CmsActivity.ALIAS_EXT_INT5)%>:
				 </label>
${my:input('CmsActivity','extInt5',model.extInt5,10,0 )}
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
