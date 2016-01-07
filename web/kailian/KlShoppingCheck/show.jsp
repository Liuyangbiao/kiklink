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
<div id="body-wrapperx">
  <!-- LOGO与左侧菜单 -->
  <!-- End #sidebar -->
  <div id="main-contentx">
    <!-- 如果没有js -->
    <%@ include file="/admin/admincommon/nojs.jsp" %>
    <!-- 标题与大图标 -->
     <%@ include file="/admin/admincommon/headicons.jsp" %>
    <!-- End .clear -->

    
    <!-- 搜索 -->
        <div class="content-box column-right" style="width:100%">
      <div class="content-box-header">
        <!-- Add the class "closed" to the Content box header to have it closed by default -->
        <h3>查看<%=JSTLTagUtils.getCnname("KlShoppingCheck","table_name")%></h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">

		<a class="button" onclick="backtolist();">返回列表</a>&nbsp;&nbsp;
		<a class="button" onclick="history.back();">后退</a>
		
		<fieldset>
			<input type="hidden" id="id" name="id" value="${model.id}"/>
		
		<!-- ONGL access static field: @package.class@field or @vs@field -->
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCheck",KlShoppingCheck.ALIAS_USERID)%>:
				 </label>
${my:showcont('KlShoppingCheck','userid',v.userid,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCheck",KlShoppingCheck.ALIAS_COACH_NAME)%>:
				 </label>
${my:showcont('KlShoppingCheck','coachName',v.coachName,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCheck",KlShoppingCheck.ALIAS_SHOPPING_PRODUCT_ID)%>:
				 </label>
${my:showcont('KlShoppingCheck','shoppingProductId',v.shoppingProductId,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCheck",KlShoppingCheck.ALIAS_TO_USER_ID)%>:
				 </label>
${my:showcont('KlShoppingCheck','toUserId',v.toUserId,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCheck",KlShoppingCheck.ALIAS_TO_USERNAME)%>:
				 </label>
${my:showcont('KlShoppingCheck','toUsername',v.toUsername,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCheck",KlShoppingCheck.ALIAS_PROGRESS)%>:
				 </label>
${my:showcont('KlShoppingCheck','progress',v.progress,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCheck",KlShoppingCheck.ALIAS_PROGRESS_COMMENT)%>:
				 </label>
${my:showcont('KlShoppingCheck','progressComment',v.progressComment,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCheck",KlShoppingCheck.ALIAS_PROGRESS_TIME)%>:
				 </label>
${my:showcont('KlShoppingCheck','progressTime',v.progressTime,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCheck",KlShoppingCheck.ALIAS_STATUS)%>:
				 </label>
${my:showcont('KlShoppingCheck','status',v.status,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCheck",KlShoppingCheck.ALIAS_ADDITION)%>:
				 </label>
${my:showcont('KlShoppingCheck','addition',v.addition,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCheck",KlShoppingCheck.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:showcont('KlShoppingCheck','createtimelong',v.createtimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCheck",KlShoppingCheck.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:showcont('KlShoppingCheck','modifytimelong',v.modifytimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCheck",KlShoppingCheck.ALIAS_CREATEUSER)%>:
				 </label>
${my:showcont('KlShoppingCheck','createuser',v.createuser,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCheck",KlShoppingCheck.ALIAS_MODIFYUSER)%>:
				 </label>
${my:showcont('KlShoppingCheck','modifyuser',v.modifyuser,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCheck",KlShoppingCheck.ALIAS_EXT1)%>:
				 </label>
${my:showcont('KlShoppingCheck','ext1',v.ext1,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCheck",KlShoppingCheck.ALIAS_EXT2)%>:
				 </label>
${my:showcont('KlShoppingCheck','ext2',v.ext2,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCheck",KlShoppingCheck.ALIAS_EXT3)%>:
				 </label>
${my:showcont('KlShoppingCheck','ext3',v.ext3,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCheck",KlShoppingCheck.ALIAS_EXT4)%>:
				 </label>
${my:showcont('KlShoppingCheck','ext4',v.ext4,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCheck",KlShoppingCheck.ALIAS_EXT5)%>:
				 </label>
${my:showcont('KlShoppingCheck','ext5',v.ext5,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCheck",KlShoppingCheck.ALIAS_EXT_INT1)%>:
				 </label>
${my:showcont('KlShoppingCheck','extInt1',v.extInt1,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCheck",KlShoppingCheck.ALIAS_EXT_INT2)%>:
				 </label>
${my:showcont('KlShoppingCheck','extInt2',v.extInt2,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCheck",KlShoppingCheck.ALIAS_EXT_INT3)%>:
				 </label>
${my:showcont('KlShoppingCheck','extInt3',v.extInt3,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCheck",KlShoppingCheck.ALIAS_EXT_INT4)%>:
				 </label>
${my:showcont('KlShoppingCheck','extInt4',v.extInt4,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCheck",KlShoppingCheck.ALIAS_EXT_INT5)%>:
				 </label>
${my:showcont('KlShoppingCheck','extInt5',v.extInt5,0 )}			</p>	
		</fieldset>
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

<!-- Download From www.exet.tk-->
</html>
