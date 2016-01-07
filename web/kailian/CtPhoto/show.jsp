<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CtPhoto.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/CtPhoto" />
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
        <h3>查看<%=JSTLTagUtils.getCnname("CtPhoto","table_name")%></h3>
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
					<%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_OWNERID)%>:
				 </label>
${my:showcont('CtPhoto','ownerid',v.ownerid,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_OWNERTYPE)%>:
				 </label>
${my:showcont('CtPhoto','ownertype',v.ownertype,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_SUBMITERID)%>:
				 </label>
${my:showcont('CtPhoto','submiterid',v.submiterid,0 )}			</p>	
			
			<p>
				 <label>
					<span class="required">*</span><%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_SUBMITERNAME)%>:
				 </label>
${my:showcont('CtPhoto','submitername',v.submitername,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_IMGURL)%>:
				 </label>
${my:showcont('CtPhoto','imgurl',v.imgurl,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_IMGNAME)%>:
				 </label>
${my:showcont('CtPhoto','imgname',v.imgname,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_STATUS)%>:
				 </label>
${my:showcont('CtPhoto','status',v.status,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_ADDITION)%>:
				 </label>
${my:showcont('CtPhoto','addition',v.addition,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:showcont('CtPhoto','createtimelong',v.createtimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:showcont('CtPhoto','modifytimelong',v.modifytimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_CREATEUSER)%>:
				 </label>
${my:showcont('CtPhoto','createuser',v.createuser,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_MODIFYUSER)%>:
				 </label>
${my:showcont('CtPhoto','modifyuser',v.modifyuser,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_EXT1)%>:
				 </label>
${my:showcont('CtPhoto','ext1',v.ext1,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_EXT2)%>:
				 </label>
${my:showcont('CtPhoto','ext2',v.ext2,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_EXT3)%>:
				 </label>
${my:showcont('CtPhoto','ext3',v.ext3,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_EXT4)%>:
				 </label>
${my:showcont('CtPhoto','ext4',v.ext4,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_EXT5)%>:
				 </label>
${my:showcont('CtPhoto','ext5',v.ext5,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_EXTINT1)%>:
				 </label>
${my:showcont('CtPhoto','extint1',v.extint1,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_EXTINT2)%>:
				 </label>
${my:showcont('CtPhoto','extint2',v.extint2,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_EXTINT3)%>:
				 </label>
${my:showcont('CtPhoto','extint3',v.extint3,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_EXTINT4)%>:
				 </label>
${my:showcont('CtPhoto','extint4',v.extint4,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CtPhoto",CtPhoto.ALIAS_EXTINT5)%>:
				 </label>
${my:showcont('CtPhoto','extint5',v.extint5,0 )}			</p>	
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
