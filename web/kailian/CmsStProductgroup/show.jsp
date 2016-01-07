<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsStProductgroup.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/CmsStProductgroup" />
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
        <h3>查看<%=JSTLTagUtils.getCnname("CmsStProductgroup","table_name")%></h3>
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
					<%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_GROUPNAME)%>:
				 </label>
${my:showcont('CmsStProductgroup','groupname',v.groupname,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_DESCRIPTION)%>:
				 </label>
${my:showcont('CmsStProductgroup','description',v.description,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_BGIMG1)%>:
				 </label>
${my:showcont('CmsStProductgroup','bgimg1',v.bgimg1,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_BGIMGLEFT)%>:
				 </label>
${my:showcont('CmsStProductgroup','bgimgleft',v.bgimgleft,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_BGIMGRIGHT)%>:
				 </label>
${my:showcont('CmsStProductgroup','bgimgright',v.bgimgright,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_HEADHEIGHT)%>:
				 </label>
${my:showcont('CmsStProductgroup','headheight',v.headheight,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_GROUPTYPE)%>:
				 </label>
${my:showcont('CmsStProductgroup','grouptype',v.grouptype,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_RANK)%>:
				 </label>
${my:showcont('CmsStProductgroup','rank',v.rank,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_STYLECLASS)%>:
				 </label>
${my:showcont('CmsStProductgroup','styleclass',v.styleclass,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_EXT1)%>:
				 </label>
${my:showcont('CmsStProductgroup','ext1',v.ext1,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_EXT2)%>:
				 </label>
${my:showcont('CmsStProductgroup','ext2',v.ext2,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_EXT3)%>:
				 </label>
${my:showcont('CmsStProductgroup','ext3',v.ext3,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_EXT4)%>:
				 </label>
${my:showcont('CmsStProductgroup','ext4',v.ext4,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_EXT5)%>:
				 </label>
${my:showcont('CmsStProductgroup','ext5',v.ext5,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_EXT_INT1)%>:
				 </label>
${my:showcont('CmsStProductgroup','extInt1',v.extInt1,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_EXT_INT2)%>:
				 </label>
${my:showcont('CmsStProductgroup','extInt2',v.extInt2,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_EXT_INT3)%>:
				 </label>
${my:showcont('CmsStProductgroup','extInt3',v.extInt3,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_EXT_INT4)%>:
				 </label>
${my:showcont('CmsStProductgroup','extInt4',v.extInt4,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_EXT_INT5)%>:
				 </label>
${my:showcont('CmsStProductgroup','extInt5',v.extInt5,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_STATUS)%>:
				 </label>
${my:showcont('CmsStProductgroup','status',v.status,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_ADDITION)%>:
				 </label>
${my:showcont('CmsStProductgroup','addition',v.addition,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:showcont('CmsStProductgroup','createtimelong',v.createtimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:showcont('CmsStProductgroup','modifytimelong',v.modifytimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_CREATEUSER)%>:
				 </label>
${my:showcont('CmsStProductgroup','createuser',v.createuser,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_MODIFYUSER)%>:
				 </label>
${my:showcont('CmsStProductgroup','modifyuser',v.modifyuser,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_TOPICID)%>:
				 </label>
${my:showcont('CmsStProductgroup','topicid',v.topicid,0 )}			</p>	
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
