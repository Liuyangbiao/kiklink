<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsStRehuopai.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/CmsStRehuopai" />
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
        <h3>查看<%=JSTLTagUtils.getCnname("CmsStRehuopai","table_name")%></h3>
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
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_ACTNAME)%>:
				 </label>
${my:showcont('CmsStRehuopai','actname',v.actname,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CLOSEDATE)%>:
				 </label>
${my:showcont('CmsStRehuopai','closedate',v.closedate,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_KEYWORDS)%>:
				 </label>
${my:showcont('CmsStRehuopai','keywords',v.keywords,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_DESCRIPTION)%>:
				 </label>
${my:showcont('CmsStRehuopai','description',v.description,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_TIME)%>:
				 </label>
${my:showcont('CmsStRehuopai','coTime',v.coTime,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_POSITION)%>:
				 </label>
${my:showcont('CmsStRehuopai','coPosition',v.coPosition,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_BUS_WAY)%>:
				 </label>
${my:showcont('CmsStRehuopai','busWay',v.busWay,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_DRIVE_WAY)%>:
				 </label>
${my:showcont('CmsStRehuopai','driveWay',v.driveWay,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_PROCESS1)%>:
				 </label>
${my:showcont('CmsStRehuopai','coProcess1',v.coProcess1,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_PROCESS2)%>:
				 </label>
${my:showcont('CmsStRehuopai','coProcess2',v.coProcess2,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_PROCESS3)%>:
				 </label>
${my:showcont('CmsStRehuopai','coProcess3',v.coProcess3,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_PROCESS4)%>:
				 </label>
${my:showcont('CmsStRehuopai','coProcess4',v.coProcess4,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_PROCESS5)%>:
				 </label>
${my:showcont('CmsStRehuopai','coProcess5',v.coProcess5,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_PROCESS6)%>:
				 </label>
${my:showcont('CmsStRehuopai','coProcess6',v.coProcess6,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_PROCESS7)%>:
				 </label>
${my:showcont('CmsStRehuopai','coProcess7',v.coProcess7,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_PROCESS8)%>:
				 </label>
${my:showcont('CmsStRehuopai','coProcess8',v.coProcess8,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_PROCESS9)%>:
				 </label>
${my:showcont('CmsStRehuopai','coProcess9',v.coProcess9,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_PROCESS10)%>:
				 </label>
${my:showcont('CmsStRehuopai','coProcess10',v.coProcess10,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_TYPES)%>:
				 </label>
${my:showcont('CmsStRehuopai','coTypes',v.coTypes,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_ATTENTIONS)%>:
				 </label>
${my:showcont('CmsStRehuopai','coAttentions',v.coAttentions,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_PRICE)%>:
				 </label>
${my:showcont('CmsStRehuopai','price',v.price,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_PRICE_TIP)%>:
				 </label>
${my:showcont('CmsStRehuopai','priceTip',v.priceTip,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_BIGIMG1)%>:
				 </label>
${my:showcont('CmsStRehuopai','bigimg1',v.bigimg1,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_BIGIMG2)%>:
				 </label>
${my:showcont('CmsStRehuopai','bigimg2',v.bigimg2,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_BIGIMG3)%>:
				 </label>
${my:showcont('CmsStRehuopai','bigimg3',v.bigimg3,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_BIGIMG4)%>:
				 </label>
${my:showcont('CmsStRehuopai','bigimg4',v.bigimg4,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_BIGIMG5)%>:
				 </label>
${my:showcont('CmsStRehuopai','bigimg5',v.bigimg5,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_BIGIMG6)%>:
				 </label>
${my:showcont('CmsStRehuopai','bigimg6',v.bigimg6,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_EXT1)%>:
				 </label>
${my:showcont('CmsStRehuopai','ext1',v.ext1,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_EXT2)%>:
				 </label>
${my:showcont('CmsStRehuopai','ext2',v.ext2,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_EXT3)%>:
				 </label>
${my:showcont('CmsStRehuopai','ext3',v.ext3,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_EXT4)%>:
				 </label>
${my:showcont('CmsStRehuopai','ext4',v.ext4,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_EXT5)%>:
				 </label>
${my:showcont('CmsStRehuopai','ext5',v.ext5,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_EXT_INT1)%>:
				 </label>
${my:showcont('CmsStRehuopai','extInt1',v.extInt1,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_EXT_INT2)%>:
				 </label>
${my:showcont('CmsStRehuopai','extInt2',v.extInt2,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_EXT_INT3)%>:
				 </label>
${my:showcont('CmsStRehuopai','extInt3',v.extInt3,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_EXT_INT4)%>:
				 </label>
${my:showcont('CmsStRehuopai','extInt4',v.extInt4,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_EXT_INT5)%>:
				 </label>
${my:showcont('CmsStRehuopai','extInt5',v.extInt5,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_STATUS)%>:
				 </label>
${my:showcont('CmsStRehuopai','status',v.status,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_ADDITION)%>:
				 </label>
${my:showcont('CmsStRehuopai','addition',v.addition,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:showcont('CmsStRehuopai','createtimelong',v.createtimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:showcont('CmsStRehuopai','modifytimelong',v.modifytimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CREATEUSER)%>:
				 </label>
${my:showcont('CmsStRehuopai','createuser',v.createuser,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_MODIFYUSER)%>:
				 </label>
${my:showcont('CmsStRehuopai','modifyuser',v.modifyuser,0 )}			</p>	
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
