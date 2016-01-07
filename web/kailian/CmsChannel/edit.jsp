<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsChannel.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/CmsChannel" />
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
        <h3>编辑<%=JSTLTagUtils.getCnname("CmsChannel","table_name")%></h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">
          	<form id="form1" action="${ctx}/kailian/CmsChannel/update.do" method="post">
		<a class="button" onclick="if (doeditors()) $('#form1').submit();" >提交</a>&nbsp;&nbsp;
		<a class="button" onclick="backtolist();">返回列表</a>&nbsp;&nbsp;
		<a class="button" onclick="history.back();">后退</a>
		
		<input type="hidden" id="createtimelong" name="createtimelong" value="${model.createtimelong}"  />
		
		<fieldset>
		
			<input type="hidden" id="id" name="id" value="${model.id}"/>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		<!-- ONGL access static field: @package.class@field or @vs@field -->
			
			<p id='parentId_p' class='p123'>
				 <label id='parentId_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_PARENT_ID)%>:
				 </label>
${my:input('CmsChannel','parentId',model.parentId,10,0 )}
			</p>	
			
		
			
			<p id='name_p' class='p123'>
				 <label id='name_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_NAME)%>:
				 </label>
${my:input('CmsChannel','name',model.name,0,0 )}			</p>	
			
		
			
			<p id='path_p' class='p123'>
				 <label id='path_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_PATH)%>:
				 </label>
${my:input('CmsChannel','path',model.path,0,0 )}			</p>	
			
		
			
			<p id='titile_p' class='p123'>
				 <label id='titile_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_TITILE)%>:
				 </label>
${my:input('CmsChannel','titile',model.titile,0,0 )}			</p>	
			
		
			
			<p id='keywords_p' class='p123'>
				 <label id='keywords_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_KEYWORDS)%>:
				 </label>
${my:input('CmsChannel','keywords',model.keywords,0,0 )}			</p>	
			
		
			
			<p id='description_p' class='p123'>
				 <label id='description_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_DESCRIPTION)%>:
				 </label>
${my:input('CmsChannel','description',model.description,0,0 )}			</p>	
			
		
			
			<p id='channelType_p' class='p123'>
				 <label id='channelType_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_CHANNEL_TYPE)%>:
				 </label>
${my:input('CmsChannel','channelType',model.channelType,10,0 )}
			</p>	
			
		
			
			<p id='channelTemplate_p' class='p123'>
				 <label id='channelTemplate_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_CHANNEL_TEMPLATE)%>:
				 </label>
${my:input('CmsChannel','channelTemplate',model.channelTemplate,0,0 )}			</p>	
			
		
			
			<p id='contentTemplate_p' class='p123'>
				 <label id='contentTemplate_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_CONTENT_TEMPLATE)%>:
				 </label>
${my:input('CmsChannel','contentTemplate',model.contentTemplate,0,0 )}			</p>	
			
		
			
			<p id='channelStaticPath_p' class='p123'>
				 <label id='channelStaticPath_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_CHANNEL_STATIC_PATH)%>:
				 </label>
${my:input('CmsChannel','channelStaticPath',model.channelStaticPath,0,0 )}			</p>	
			
		
			
			<p id='contentStaticPath_p' class='p123'>
				 <label id='contentStaticPath_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_CONTENT_STATIC_PATH)%>:
				 </label>
${my:input('CmsChannel','contentStaticPath',model.contentStaticPath,0,0 )}			</p>	
			
		
			
			<p id='rank_p' class='p123'>
				 <label id='rank_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_RANK)%>:
				 </label>
${my:input('CmsChannel','rank',model.rank,10,0 )}
			</p>	
			
		
			
			<p id='display_p' class='p123'>
				 <label id='display_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_DISPLAY)%>:
				 </label>
${my:input('CmsChannel','display',model.display,10,0 )}
			</p>	
			
		
			
			<p id='docimg_p' class='p123'>
				 <label id='docimg_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_DOCIMG)%>:
				 </label>
${my:input('CmsChannel','docimg',model.docimg,0,0 )}			</p>	
			
		
			
			<p id='auditLevel_p' class='p123'>
				 <label id='auditLevel_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_AUDIT_LEVEL)%>:
				 </label>
${my:input('CmsChannel','auditLevel',model.auditLevel,10,0 )}
			</p>	
			
		
			
			<p id='afterCheck_p' class='p123'>
				 <label id='afterCheck_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_AFTER_CHECK)%>:
				 </label>
${my:input('CmsChannel','afterCheck',model.afterCheck,10,0 )}
			</p>	
			
		
			
			<p id='commentType_p' class='p123'>
				 <label id='commentType_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_COMMENT_TYPE)%>:
				 </label>
${my:input('CmsChannel','commentType',model.commentType,10,0 )}
			</p>	
			
		
			
			<p id='flowerEgg_p' class='p123'>
				 <label id='flowerEgg_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_FLOWER_EGG)%>:
				 </label>
${my:input('CmsChannel','flowerEgg',model.flowerEgg,10,0 )}
			</p>	
			
		
			
			<p id='viewRight_p' class='p123'>
				 <label id='viewRight_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_VIEW_RIGHT)%>:
				 </label>
${my:input('CmsChannel','viewRight',model.viewRight,10,0 )}
			</p>	
			
		
			
			<p id='link_p' class='p123'>
				 <label id='link_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_LINK)%>:
				 </label>
${my:input('CmsChannel','link',model.link,0,0 )}			</p>	
			
		
			
			<p id='titleimg_p' class='p123'>
				 <label id='titleimg_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_TITLEIMG)%>:
				 </label>
${my:input('CmsChannel','titleimg',model.titleimg,0,0 )}			</p>	
			
		
			
			<p id='workFlowId_p' class='p123'>
				 <label id='workFlowId_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_WORK_FLOW_ID)%>:
				 </label>
${my:input('CmsChannel','workFlowId',model.workFlowId,10,0 )}
			</p>	
			
		
				<!-- 
			
			<p id='status_p' class='p123'>
				 <label id='status_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_STATUS)%>:
				 </label>
${my:input('CmsChannel','status',model.status,10,0 )}
			</p>	
			
		
				--> 
			
			<p id='addition_p' class='p123'>
				 <label id='addition_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_ADDITION)%>:
				 </label>
${my:input('CmsChannel','addition',model.addition,0,0 )}			</p>	
			
		
				<!-- 
			
			<p id='createtimelong_p' class='p123'>
				 <label id='createtimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:input('CmsChannel','createtimelong',model.createtimelong,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='modifytimelong_p' class='p123'>
				 <label id='modifytimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:input('CmsChannel','modifytimelong',model.modifytimelong,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='createuser_p' class='p123'>
				 <label id='createuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_CREATEUSER)%>:
				 </label>
${my:input('CmsChannel','createuser',model.createuser,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='modifyuser_p' class='p123'>
				 <label id='modifyuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_MODIFYUSER)%>:
				 </label>
${my:input('CmsChannel','modifyuser',model.modifyuser,10,0 )}
			</p>	
			
		
				--> 
			
			<p id='ext1_p' class='p123'>
				 <label id='ext1_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_EXT1)%>:
				 </label>
${my:input('CmsChannel','ext1',model.ext1,0,0 )}			</p>	
			
		
			
			<p id='ext2_p' class='p123'>
				 <label id='ext2_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_EXT2)%>:
				 </label>
${my:input('CmsChannel','ext2',model.ext2,0,0 )}			</p>	
			
		
			
			<p id='ext3_p' class='p123'>
				 <label id='ext3_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_EXT3)%>:
				 </label>
${my:input('CmsChannel','ext3',model.ext3,0,0 )}			</p>	
			
		
			
			<p id='ext4_p' class='p123'>
				 <label id='ext4_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_EXT4)%>:
				 </label>
${my:input('CmsChannel','ext4',model.ext4,0,0 )}			</p>	
			
		
			
			<p id='ext5_p' class='p123'>
				 <label id='ext5_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_EXT5)%>:
				 </label>
${my:input('CmsChannel','ext5',model.ext5,0,0 )}			</p>	
			
		
			
			<p id='extint1_p' class='p123'>
				 <label id='extint1_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_EXTINT1)%>:
				 </label>
${my:input('CmsChannel','extint1',model.extint1,10,0 )}
			</p>	
			
		
			
			<p id='extint2_p' class='p123'>
				 <label id='extint2_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_EXTINT2)%>:
				 </label>
${my:input('CmsChannel','extint2',model.extint2,10,0 )}
			</p>	
			
		
			
			<p id='extint3_p' class='p123'>
				 <label id='extint3_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_EXTINT3)%>:
				 </label>
${my:input('CmsChannel','extint3',model.extint3,10,0 )}
			</p>	
			
		
			
			<p id='extint4_p' class='p123'>
				 <label id='extint4_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_EXTINT4)%>:
				 </label>
${my:input('CmsChannel','extint4',model.extint4,10,0 )}
			</p>	
			
		
			
			<p id='extint5_p' class='p123'>
				 <label id='extint5_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_EXTINT5)%>:
				 </label>
${my:input('CmsChannel','extint5',model.extint5,10,0 )}
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
