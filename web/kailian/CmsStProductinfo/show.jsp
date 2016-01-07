<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsStProductinfo.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/CmsStProductinfo" />
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
        <h3>查看<%=JSTLTagUtils.getCnname("CmsStProductinfo","table_name")%></h3>
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
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_PRODUCTNAME)%>:
				 </label>
${my:showcont('CmsStProductinfo','productname',v.productname,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_PRICE)%>:
				 </label>
${my:showcont('CmsStProductinfo','price',v.price,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_PER_CLASS_MINUTES)%>:
				 </label>
${my:showcont('CmsStProductinfo','perClassMinutes',v.perClassMinutes,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_SHOPNAME)%>:
				 </label>
${my:showcont('CmsStProductinfo','shopname',v.shopname,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_SUBNAME)%>:
				 </label>
${my:showcont('CmsStProductinfo','subname',v.subname,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_PRODUCTID)%>:
				 </label>
${my:showcont('CmsStProductinfo','productid',v.productid,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_SHOPID)%>:
				 </label>
${my:showcont('CmsStProductinfo','shopid',v.shopid,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_PRODUCTIMG)%>:
				 </label>
${my:showcont('CmsStProductinfo','productimg',v.productimg,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_LINKTYPE)%>:
				 </label>
${my:showcont('CmsStProductinfo','linktype',v.linktype,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_RANK)%>:
				 </label>
${my:showcont('CmsStProductinfo','rank',v.rank,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_STYLECLASS)%>:
				 </label>
${my:showcont('CmsStProductinfo','styleclass',v.styleclass,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_EXT1)%>:
				 </label>
${my:showcont('CmsStProductinfo','ext1',v.ext1,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_EXT2)%>:
				 </label>
${my:showcont('CmsStProductinfo','ext2',v.ext2,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_EXT3)%>:
				 </label>
${my:showcont('CmsStProductinfo','ext3',v.ext3,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_EXT4)%>:
				 </label>
${my:showcont('CmsStProductinfo','ext4',v.ext4,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_EXT5)%>:
				 </label>
${my:showcont('CmsStProductinfo','ext5',v.ext5,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_EXT_INT1)%>:
				 </label>
${my:showcont('CmsStProductinfo','extInt1',v.extInt1,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_EXT_INT2)%>:
				 </label>
${my:showcont('CmsStProductinfo','extInt2',v.extInt2,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_EXT_INT3)%>:
				 </label>
${my:showcont('CmsStProductinfo','extInt3',v.extInt3,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_EXT_INT4)%>:
				 </label>
${my:showcont('CmsStProductinfo','extInt4',v.extInt4,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_EXT_INT5)%>:
				 </label>
${my:showcont('CmsStProductinfo','extInt5',v.extInt5,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_STATUS)%>:
				 </label>
${my:showcont('CmsStProductinfo','status',v.status,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_ADDITION)%>:
				 </label>
${my:showcont('CmsStProductinfo','addition',v.addition,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:showcont('CmsStProductinfo','createtimelong',v.createtimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:showcont('CmsStProductinfo','modifytimelong',v.modifytimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_CREATEUSER)%>:
				 </label>
${my:showcont('CmsStProductinfo','createuser',v.createuser,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_MODIFYUSER)%>:
				 </label>
${my:showcont('CmsStProductinfo','modifyuser',v.modifyuser,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_TOPICID)%>:
				 </label>
${my:showcont('CmsStProductinfo','topicid',v.topicid,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_GROUPID)%>:
				 </label>
${my:showcont('CmsStProductinfo','groupid',v.groupid,0 )}			</p>	
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
