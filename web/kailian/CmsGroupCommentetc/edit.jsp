<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsGroupCommentetc.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/CmsGroupCommentetc" />
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
        <h3>编辑<%=JSTLTagUtils.getCnname("CmsGroupCommentetc","table_name")%></h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">
          	<form id="form1" action="${ctx}/kailian/CmsGroupCommentetc/update.do" method="post">
		<a class="button" onclick="if (doeditors()) $('#form1').submit();" >提交</a>&nbsp;&nbsp;
		<a class="button" onclick="backtolist();">返回列表</a>&nbsp;&nbsp;
		<a class="button" onclick="history.back();">后退</a>
		
		<input type="hidden" id="createtimelong" name="createtimelong" value="${model.createtimelong}"  />
		
		<fieldset>
		
			<input type="hidden" id="id" name="id" value="${model.id}"/>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		<!-- ONGL access static field: @package.class@field or @vs@field -->
			
			<p id='groupid_p' class='p123'>
				 <label id='groupid_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsGroupCommentetc",CmsGroupCommentetc.ALIAS_GROUPID)%>:
				 </label>
${my:input('CmsGroupCommentetc','groupid',model.groupid,10,0 )}
			</p>	
			
		
			
			<p id='topicid_p' class='p123'>
				 <label id='topicid_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsGroupCommentetc",CmsGroupCommentetc.ALIAS_TOPICID)%>:
				 </label>
${my:input('CmsGroupCommentetc','topicid',model.topicid,10,0 )}
			</p>	
			
		
			
			<p id='topicTitle_p' class='p123'>
				 <label id='topicTitle_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsGroupCommentetc",CmsGroupCommentetc.ALIAS_TOPIC_TITLE)%>:
				 </label>
${my:input('CmsGroupCommentetc','topicTitle',model.topicTitle,0,0 )}			</p>	
			
		
			
			<p id='userid_p' class='p123'>
				 <label id='userid_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsGroupCommentetc",CmsGroupCommentetc.ALIAS_USERID)%>:
				 </label>
${my:input('CmsGroupCommentetc','userid',model.userid,10,0 )}
			</p>	
			
		
			
			<p id='userName_p' class='p123'>
				 <label id='userName_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsGroupCommentetc",CmsGroupCommentetc.ALIAS_USER_NAME)%>:
				 </label>
${my:input('CmsGroupCommentetc','userName',model.userName,0,0 )}			</p>	
			
		
			
			<p id='userPhoto_p' class='p123'>
				 <label id='userPhoto_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsGroupCommentetc",CmsGroupCommentetc.ALIAS_USER_PHOTO)%>:
				 </label>
${my:input('CmsGroupCommentetc','userPhoto',model.userPhoto,0,0 )}			</p>	
			
		
			
			<p id='type_p' class='p123'>
				 <label id='type_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsGroupCommentetc",CmsGroupCommentetc.ALIAS_TYPE)%>:
				 </label>
${my:input('CmsGroupCommentetc','type',model.type,10,0 )}
			</p>	
			
		
			
			<p id='content_p' class='p123'>
				 <label id='content_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsGroupCommentetc",CmsGroupCommentetc.ALIAS_CONTENT)%>:
				 </label>
${my:input('CmsGroupCommentetc','content',model.content,0,0 )}			</p>	
			
		
				<!-- 
			
			<p id='status_p' class='p123'>
				 <label id='status_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsGroupCommentetc",CmsGroupCommentetc.ALIAS_STATUS)%>:
				 </label>
${my:input('CmsGroupCommentetc','status',model.status,10,0 )}
			</p>	
			
		
				--> 
			
			<p id='addition_p' class='p123'>
				 <label id='addition_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsGroupCommentetc",CmsGroupCommentetc.ALIAS_ADDITION)%>:
				 </label>
${my:input('CmsGroupCommentetc','addition',model.addition,0,0 )}			</p>	
			
		
				<!-- 
			
			<p id='createtimelong_p' class='p123'>
				 <label id='createtimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsGroupCommentetc",CmsGroupCommentetc.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:input('CmsGroupCommentetc','createtimelong',model.createtimelong,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='modifytimelong_p' class='p123'>
				 <label id='modifytimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsGroupCommentetc",CmsGroupCommentetc.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:input('CmsGroupCommentetc','modifytimelong',model.modifytimelong,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='createuser_p' class='p123'>
				 <label id='createuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsGroupCommentetc",CmsGroupCommentetc.ALIAS_CREATEUSER)%>:
				 </label>
${my:input('CmsGroupCommentetc','createuser',model.createuser,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='modifyuser_p' class='p123'>
				 <label id='modifyuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsGroupCommentetc",CmsGroupCommentetc.ALIAS_MODIFYUSER)%>:
				 </label>
${my:input('CmsGroupCommentetc','modifyuser',model.modifyuser,10,0 )}
			</p>	
			
		
				--> 
			
			<p id='ext1_p' class='p123'>
				 <label id='ext1_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsGroupCommentetc",CmsGroupCommentetc.ALIAS_EXT1)%>:
				 </label>
${my:input('CmsGroupCommentetc','ext1',model.ext1,0,0 )}			</p>	
			
		
			
			<p id='ext2_p' class='p123'>
				 <label id='ext2_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsGroupCommentetc",CmsGroupCommentetc.ALIAS_EXT2)%>:
				 </label>
${my:input('CmsGroupCommentetc','ext2',model.ext2,0,0 )}			</p>	
			
		
			
			<p id='ext3_p' class='p123'>
				 <label id='ext3_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsGroupCommentetc",CmsGroupCommentetc.ALIAS_EXT3)%>:
				 </label>
${my:input('CmsGroupCommentetc','ext3',model.ext3,0,0 )}			</p>	
			
		
			
			<p id='ext4_p' class='p123'>
				 <label id='ext4_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsGroupCommentetc",CmsGroupCommentetc.ALIAS_EXT4)%>:
				 </label>
${my:input('CmsGroupCommentetc','ext4',model.ext4,0,0 )}			</p>	
			
		
			
			<p id='ext5_p' class='p123'>
				 <label id='ext5_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsGroupCommentetc",CmsGroupCommentetc.ALIAS_EXT5)%>:
				 </label>
${my:input('CmsGroupCommentetc','ext5',model.ext5,0,0 )}			</p>	
			
		
			
			<p id='extInt1_p' class='p123'>
				 <label id='extInt1_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsGroupCommentetc",CmsGroupCommentetc.ALIAS_EXT_INT1)%>:
				 </label>
${my:input('CmsGroupCommentetc','extInt1',model.extInt1,10,0 )}
			</p>	
			
		
			
			<p id='extInt2_p' class='p123'>
				 <label id='extInt2_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsGroupCommentetc",CmsGroupCommentetc.ALIAS_EXT_INT2)%>:
				 </label>
${my:input('CmsGroupCommentetc','extInt2',model.extInt2,10,0 )}
			</p>	
			
		
			
			<p id='extInt3_p' class='p123'>
				 <label id='extInt3_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsGroupCommentetc",CmsGroupCommentetc.ALIAS_EXT_INT3)%>:
				 </label>
${my:input('CmsGroupCommentetc','extInt3',model.extInt3,10,0 )}
			</p>	
			
		
			
			<p id='extInt4_p' class='p123'>
				 <label id='extInt4_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsGroupCommentetc",CmsGroupCommentetc.ALIAS_EXT_INT4)%>:
				 </label>
${my:input('CmsGroupCommentetc','extInt4',model.extInt4,10,0 )}
			</p>	
			
		
			
			<p id='extInt5_p' class='p123'>
				 <label id='extInt5_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsGroupCommentetc",CmsGroupCommentetc.ALIAS_EXT_INT5)%>:
				 </label>
${my:input('CmsGroupCommentetc','extInt5',model.extInt5,10,0 )}
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
