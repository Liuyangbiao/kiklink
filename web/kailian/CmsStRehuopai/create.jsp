<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsStRehuopai.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/CmsStRehuopai" />
<c:set var="ttid" value="ID"></c:set>
<c:set var="ttcreator" value="CREATOR"></c:set>
<c:set var="ttcreatetime" value="CREATE_TIME"></c:set>
<c:set var="ttdeleted" value="DELETED"></c:set>
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
        <h3>创建<%=JSTLTagUtils.getCnname("CmsStRehuopai","table_name")%></h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">
          	<form id="form1" action="${ctx}/kailian/CmsStRehuopai/save.do" method="post">
		<a class="button" onclick="if(doeditors()) $('#form1').submit();" >提交</a>&nbsp;&nbsp;
		<a class="button" onclick="backtolist();">返回列表</a>&nbsp;&nbsp;
		<a class="button" onclick="history.back();">后退</a>
		
		<fieldset>
			<input type="hidden" id="id" name="id" value="${model.id}"/>
		
		<!-- ONGL access static field: @package.class@field or @vs@field -->
		
			<c:set var="tt" value="ID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			</c:if>
		
			<c:set var="tt" value="ACTNAME"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='actname_p' class='p123'>
				 <label id='actname_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_ACTNAME)%>:
				 </label>
${my:input('CmsStRehuopai','actname',model.actname,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="CLOSEDATE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='closedate_p' class='p123'>
				 <label id='closedate_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CLOSEDATE)%>:
				 </label>
${my:input('CmsStRehuopai','closedate',model.closedate,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="KEYWORDS"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='keywords_p' class='p123'>
				 <label id='keywords_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_KEYWORDS)%>:
				 </label>
${my:input('CmsStRehuopai','keywords',model.keywords,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="DESCRIPTION"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='description_p' class='p123'>
				 <label id='description_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_DESCRIPTION)%>:
				 </label>
${my:input('CmsStRehuopai','description',model.description,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="CO_TIME"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='coTime_p' class='p123'>
				 <label id='coTime_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_TIME)%>:
				 </label>
${my:input('CmsStRehuopai','coTime',model.coTime,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="CO_POSITION"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='coPosition_p' class='p123'>
				 <label id='coPosition_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_POSITION)%>:
				 </label>
${my:input('CmsStRehuopai','coPosition',model.coPosition,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="BUS_WAY"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='busWay_p' class='p123'>
				 <label id='busWay_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_BUS_WAY)%>:
				 </label>
${my:input('CmsStRehuopai','busWay',model.busWay,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="DRIVE_WAY"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='driveWay_p' class='p123'>
				 <label id='driveWay_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_DRIVE_WAY)%>:
				 </label>
${my:input('CmsStRehuopai','driveWay',model.driveWay,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="CO_PROCESS1"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='coProcess1_p' class='p123'>
				 <label id='coProcess1_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_PROCESS1)%>:
				 </label>
${my:input('CmsStRehuopai','coProcess1',model.coProcess1,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="CO_PROCESS2"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='coProcess2_p' class='p123'>
				 <label id='coProcess2_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_PROCESS2)%>:
				 </label>
${my:input('CmsStRehuopai','coProcess2',model.coProcess2,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="CO_PROCESS3"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='coProcess3_p' class='p123'>
				 <label id='coProcess3_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_PROCESS3)%>:
				 </label>
${my:input('CmsStRehuopai','coProcess3',model.coProcess3,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="CO_PROCESS4"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='coProcess4_p' class='p123'>
				 <label id='coProcess4_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_PROCESS4)%>:
				 </label>
${my:input('CmsStRehuopai','coProcess4',model.coProcess4,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="CO_PROCESS5"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='coProcess5_p' class='p123'>
				 <label id='coProcess5_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_PROCESS5)%>:
				 </label>
${my:input('CmsStRehuopai','coProcess5',model.coProcess5,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="CO_PROCESS6"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='coProcess6_p' class='p123'>
				 <label id='coProcess6_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_PROCESS6)%>:
				 </label>
${my:input('CmsStRehuopai','coProcess6',model.coProcess6,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="CO_PROCESS7"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='coProcess7_p' class='p123'>
				 <label id='coProcess7_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_PROCESS7)%>:
				 </label>
${my:input('CmsStRehuopai','coProcess7',model.coProcess7,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="CO_PROCESS8"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='coProcess8_p' class='p123'>
				 <label id='coProcess8_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_PROCESS8)%>:
				 </label>
${my:input('CmsStRehuopai','coProcess8',model.coProcess8,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="CO_PROCESS9"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='coProcess9_p' class='p123'>
				 <label id='coProcess9_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_PROCESS9)%>:
				 </label>
${my:input('CmsStRehuopai','coProcess9',model.coProcess9,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="CO_PROCESS10"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='coProcess10_p' class='p123'>
				 <label id='coProcess10_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_PROCESS10)%>:
				 </label>
${my:input('CmsStRehuopai','coProcess10',model.coProcess10,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="CO_TYPES"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='coTypes_p' class='p123'>
				 <label id='coTypes_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_TYPES)%>:
				 </label>
${my:input('CmsStRehuopai','coTypes',model.coTypes,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="CO_ATTENTIONS"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='coAttentions_p' class='p123'>
				 <label id='coAttentions_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_ATTENTIONS)%>:
				 </label>
${my:input('CmsStRehuopai','coAttentions',model.coAttentions,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="PRICE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='price_p' class='p123'>
				 <label id='price_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_PRICE)%>:
				 </label>
${my:input('CmsStRehuopai','price',model.price,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="PRICE_TIP"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='priceTip_p' class='p123'>
				 <label id='priceTip_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_PRICE_TIP)%>:
				 </label>
${my:input('CmsStRehuopai','priceTip',model.priceTip,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="BIGIMG1"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='bigimg1_p' class='p123'>
				 <label id='bigimg1_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_BIGIMG1)%>:
				 </label>
${my:input('CmsStRehuopai','bigimg1',model.bigimg1,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="BIGIMG2"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='bigimg2_p' class='p123'>
				 <label id='bigimg2_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_BIGIMG2)%>:
				 </label>
${my:input('CmsStRehuopai','bigimg2',model.bigimg2,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="BIGIMG3"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='bigimg3_p' class='p123'>
				 <label id='bigimg3_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_BIGIMG3)%>:
				 </label>
${my:input('CmsStRehuopai','bigimg3',model.bigimg3,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="BIGIMG4"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='bigimg4_p' class='p123'>
				 <label id='bigimg4_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_BIGIMG4)%>:
				 </label>
${my:input('CmsStRehuopai','bigimg4',model.bigimg4,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="BIGIMG5"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='bigimg5_p' class='p123'>
				 <label id='bigimg5_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_BIGIMG5)%>:
				 </label>
${my:input('CmsStRehuopai','bigimg5',model.bigimg5,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="BIGIMG6"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='bigimg6_p' class='p123'>
				 <label id='bigimg6_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_BIGIMG6)%>:
				 </label>
${my:input('CmsStRehuopai','bigimg6',model.bigimg6,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="EXT1"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='ext1_p' class='p123'>
				 <label id='ext1_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_EXT1)%>:
				 </label>
${my:input('CmsStRehuopai','ext1',model.ext1,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="EXT2"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='ext2_p' class='p123'>
				 <label id='ext2_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_EXT2)%>:
				 </label>
${my:input('CmsStRehuopai','ext2',model.ext2,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="EXT3"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='ext3_p' class='p123'>
				 <label id='ext3_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_EXT3)%>:
				 </label>
${my:input('CmsStRehuopai','ext3',model.ext3,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="EXT4"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='ext4_p' class='p123'>
				 <label id='ext4_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_EXT4)%>:
				 </label>
${my:input('CmsStRehuopai','ext4',model.ext4,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="EXT5"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='ext5_p' class='p123'>
				 <label id='ext5_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_EXT5)%>:
				 </label>
${my:input('CmsStRehuopai','ext5',model.ext5,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="EXT_INT1"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='extInt1_p' class='p123'>
				 <label id='extInt1_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_EXT_INT1)%>:
				 </label>
${my:input('CmsStRehuopai','extInt1',model.extInt1,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="EXT_INT2"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='extInt2_p' class='p123'>
				 <label id='extInt2_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_EXT_INT2)%>:
				 </label>
${my:input('CmsStRehuopai','extInt2',model.extInt2,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="EXT_INT3"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='extInt3_p' class='p123'>
				 <label id='extInt3_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_EXT_INT3)%>:
				 </label>
${my:input('CmsStRehuopai','extInt3',model.extInt3,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="EXT_INT4"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='extInt4_p' class='p123'>
				 <label id='extInt4_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_EXT_INT4)%>:
				 </label>
${my:input('CmsStRehuopai','extInt4',model.extInt4,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="EXT_INT5"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='extInt5_p' class='p123'>
				 <label id='extInt5_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_EXT_INT5)%>:
				 </label>
${my:input('CmsStRehuopai','extInt5',model.extInt5,10,0 )}
			</p>	
			</c:if>
				<!-- 
		
			<c:set var="tt" value="STATUS"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='status_p' class='p123'>
				 <label id='status_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_STATUS)%>:
				 </label>
${my:input('CmsStRehuopai','status',model.status,10,0 )}
			</p>	
			</c:if>
				-->
		
			
			
			<p id='addition_p' class='p123'>
				 <label id='addition_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_ADDITION)%>:
				 </label>
${my:input('CmsStRehuopai','addition',model.addition,0,0 )}			</p>	
			
				<!-- 
		
			<c:set var="tt" value="CREATETIMELONG"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='createtimelong_p' class='p123'>
				 <label id='createtimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:input('CmsStRehuopai','createtimelong',model.createtimelong,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="MODIFYTIMELONG"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='modifytimelong_p' class='p123'>
				 <label id='modifytimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:input('CmsStRehuopai','modifytimelong',model.modifytimelong,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="CREATEUSER"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='createuser_p' class='p123'>
				 <label id='createuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CREATEUSER)%>:
				 </label>
${my:input('CmsStRehuopai','createuser',model.createuser,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="MODIFYUSER"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='modifyuser_p' class='p123'>
				 <label id='modifyuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_MODIFYUSER)%>:
				 </label>
${my:input('CmsStRehuopai','modifyuser',model.modifyuser,10,0 )}
			</p>	
			</c:if>
				-->
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
