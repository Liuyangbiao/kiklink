<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", KlShoppingCheck.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/KlShoppingCheck" />
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
        <h3>编辑<%=JSTLTagUtils.getCnname("KlShoppingCheck","table_name")%></h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">
          	<form id="form1" action="${ctx}/kailian/KlShoppingCheck/update.do" method="post">
		<a class="button" onclick="if (doeditors()) $('#form1').submit();" >提交</a>&nbsp;&nbsp;
		<a class="button" onclick="backtolist();">返回列表</a>&nbsp;&nbsp;
		<a class="button" onclick="history.back();">后退</a>
		
		<input type="hidden" id="createtimelong" name="createtimelong" value="${model.createtimelong}"  />
		
		<fieldset>
		
			<input type="hidden" id="id" name="id" value="${model.id}"/>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		<!-- ONGL access static field: @package.class@field or @vs@field -->
			
			<p id='userid_p' class='p123'>
				 <label id='userid_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCheck",KlShoppingCheck.ALIAS_USERID)%>:
				 </label>
${my:input('KlShoppingCheck','userid',model.userid,10,0 )}
			</p>	
			
		
			
			<p id='coachName_p' class='p123'>
				 <label id='coachName_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCheck",KlShoppingCheck.ALIAS_COACH_NAME)%>:
				 </label>
${my:input('KlShoppingCheck','coachName',model.coachName,0,0 )}			</p>	
			
		
			
			<p id='shoppingProductId_p' class='p123'>
				 <label id='shoppingProductId_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCheck",KlShoppingCheck.ALIAS_SHOPPING_PRODUCT_ID)%>:
				 </label>
${my:input('KlShoppingCheck','shoppingProductId',model.shoppingProductId,10,0 )}
			</p>	
			
		
			
			<p id='toUserId_p' class='p123'>
				 <label id='toUserId_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCheck",KlShoppingCheck.ALIAS_TO_USER_ID)%>:
				 </label>
${my:input('KlShoppingCheck','toUserId',model.toUserId,10,0 )}
			</p>	
			
		
			
			<p id='toUsername_p' class='p123'>
				 <label id='toUsername_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCheck",KlShoppingCheck.ALIAS_TO_USERNAME)%>:
				 </label>
${my:input('KlShoppingCheck','toUsername',model.toUsername,0,0 )}			</p>	
			
		
			
			<p id='progress_p' class='p123'>
				 <label id='progress_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCheck",KlShoppingCheck.ALIAS_PROGRESS)%>:
				 </label>
${my:input('KlShoppingCheck','progress',model.progress,10,0 )}
			</p>	
			
		
			
			<p id='progressComment_p' class='p123'>
				 <label id='progressComment_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCheck",KlShoppingCheck.ALIAS_PROGRESS_COMMENT)%>:
				 </label>
${my:input('KlShoppingCheck','progressComment',model.progressComment,0,0 )}			</p>	
			
		
			
			<p id='progressTime_p' class='p123'>
				 <label id='progressTime_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCheck",KlShoppingCheck.ALIAS_PROGRESS_TIME)%>:
				 </label>
${my:input('KlShoppingCheck','progressTime',model.progressTime,0,0 )}			</p>	
			
		
				<!-- 
			
			<p id='status_p' class='p123'>
				 <label id='status_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCheck",KlShoppingCheck.ALIAS_STATUS)%>:
				 </label>
${my:input('KlShoppingCheck','status',model.status,10,0 )}
			</p>	
			
		
				--> 
			
			<p id='addition_p' class='p123'>
				 <label id='addition_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCheck",KlShoppingCheck.ALIAS_ADDITION)%>:
				 </label>
${my:input('KlShoppingCheck','addition',model.addition,0,0 )}			</p>	
			
		
				<!-- 
			
			<p id='createtimelong_p' class='p123'>
				 <label id='createtimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCheck",KlShoppingCheck.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:input('KlShoppingCheck','createtimelong',model.createtimelong,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='modifytimelong_p' class='p123'>
				 <label id='modifytimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCheck",KlShoppingCheck.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:input('KlShoppingCheck','modifytimelong',model.modifytimelong,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='createuser_p' class='p123'>
				 <label id='createuser_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCheck",KlShoppingCheck.ALIAS_CREATEUSER)%>:
				 </label>
${my:input('KlShoppingCheck','createuser',model.createuser,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='modifyuser_p' class='p123'>
				 <label id='modifyuser_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCheck",KlShoppingCheck.ALIAS_MODIFYUSER)%>:
				 </label>
${my:input('KlShoppingCheck','modifyuser',model.modifyuser,10,0 )}
			</p>	
			
		
				--> 
			
			<p id='ext1_p' class='p123'>
				 <label id='ext1_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCheck",KlShoppingCheck.ALIAS_EXT1)%>:
				 </label>
${my:input('KlShoppingCheck','ext1',model.ext1,0,0 )}			</p>	
			
		
			
			<p id='ext2_p' class='p123'>
				 <label id='ext2_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCheck",KlShoppingCheck.ALIAS_EXT2)%>:
				 </label>
${my:input('KlShoppingCheck','ext2',model.ext2,0,0 )}			</p>	
			
		
			
			<p id='ext3_p' class='p123'>
				 <label id='ext3_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCheck",KlShoppingCheck.ALIAS_EXT3)%>:
				 </label>
${my:input('KlShoppingCheck','ext3',model.ext3,0,0 )}			</p>	
			
		
			
			<p id='ext4_p' class='p123'>
				 <label id='ext4_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCheck",KlShoppingCheck.ALIAS_EXT4)%>:
				 </label>
${my:input('KlShoppingCheck','ext4',model.ext4,0,0 )}			</p>	
			
		
			
			<p id='ext5_p' class='p123'>
				 <label id='ext5_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCheck",KlShoppingCheck.ALIAS_EXT5)%>:
				 </label>
${my:input('KlShoppingCheck','ext5',model.ext5,0,0 )}			</p>	
			
		
			
			<p id='extInt1_p' class='p123'>
				 <label id='extInt1_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCheck",KlShoppingCheck.ALIAS_EXT_INT1)%>:
				 </label>
${my:input('KlShoppingCheck','extInt1',model.extInt1,10,0 )}
			</p>	
			
		
			
			<p id='extInt2_p' class='p123'>
				 <label id='extInt2_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCheck",KlShoppingCheck.ALIAS_EXT_INT2)%>:
				 </label>
${my:input('KlShoppingCheck','extInt2',model.extInt2,10,0 )}
			</p>	
			
		
			
			<p id='extInt3_p' class='p123'>
				 <label id='extInt3_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCheck",KlShoppingCheck.ALIAS_EXT_INT3)%>:
				 </label>
${my:input('KlShoppingCheck','extInt3',model.extInt3,10,0 )}
			</p>	
			
		
			
			<p id='extInt4_p' class='p123'>
				 <label id='extInt4_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCheck",KlShoppingCheck.ALIAS_EXT_INT4)%>:
				 </label>
${my:input('KlShoppingCheck','extInt4',model.extInt4,10,0 )}
			</p>	
			
		
			
			<p id='extInt5_p' class='p123'>
				 <label id='extInt5_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingCheck",KlShoppingCheck.ALIAS_EXT_INT5)%>:
				 </label>
${my:input('KlShoppingCheck','extInt5',model.extInt5,10,0 )}
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
