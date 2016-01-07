<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsStRehuopai.TABLE_ALIAS);
	Map map = new HashMap();
		map.put("ID", "1");
		map.put("ACTNAME", "1");
		/*
		map.put("CLOSEDATE", "1");
		map.put("KEYWORDS", "1");
		map.put("DESCRIPTION", "1");
		map.put("CO_TIME", "1");
		map.put("CO_POSITION", "1");
		map.put("BUS_WAY", "1");
		map.put("DRIVE_WAY", "1");
		map.put("CO_PROCESS1", "1");
		map.put("CO_PROCESS2", "1");
		map.put("CO_PROCESS3", "1");
		map.put("CO_PROCESS4", "1");
		map.put("CO_PROCESS5", "1");
		map.put("CO_PROCESS6", "1");
		map.put("CO_PROCESS7", "1");
		map.put("CO_PROCESS8", "1");
		map.put("CO_PROCESS9", "1");
		map.put("CO_PROCESS10", "1");
		map.put("CO_TYPES", "1");
		map.put("CO_ATTENTIONS", "1");
		map.put("PRICE", "1");
		map.put("PRICE_TIP", "1");
		map.put("BIGIMG1", "1");
		map.put("BIGIMG2", "1");
		map.put("BIGIMG3", "1");
		map.put("BIGIMG4", "1");
		map.put("BIGIMG5", "1");
		map.put("BIGIMG6", "1");
		map.put("EXT1", "1");
		map.put("EXT2", "1");
		map.put("EXT3", "1");
		map.put("EXT4", "1");
		map.put("EXT5", "1");
		map.put("EXT_INT1", "1");
		map.put("EXT_INT2", "1");
		map.put("EXT_INT3", "1");
		map.put("EXT_INT4", "1");
		map.put("EXT_INT5", "1");
		*/
		map.put("STATUS", "1");
		//map.put("ADDITION", "1");
		map.put("CREATETIMELONG", "1");
		map.put("MODIFYTIMELONG", "1");
		map.put("CREATEUSER", "1");
		map.put("MODIFYUSER", "1");
	request.setAttribute("showmap", map);
 %>
<c:set var="actionBasePath" value="/kailian/CmsStRehuopai" />
<c:set var="ttid" value="ID"></c:set>
<c:set var="ttcreator" value="CREATOR"></c:set>
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
    <div class="content-box">
      <!-- Start Content Box -->
      <div class="content-box-header">
        <h3><%=JSTLTagUtils.getCnname("CmsStRehuopai","table_name")%>列表
		&nbsp;&nbsp;
		
		<c:choose>
        	<c:when test="${param.fromiframe eq null or param.fromiframe eq ''}">
            <a class="button" href="#" onclick="parent.addPanel('${ctx}/${actionBasePath}/create.do','新增热活派');" title="新增">新增</a>
		 &nbsp;&nbsp;
		 <a class="button" onclick="if(confirm('确定要删除所选数据吗？')) deleteids();" title="删除所选">删除所选</a>
            </c:when>
            <c:otherwise>
            
            </c:otherwise>
        </c:choose>
		
		
		 
		 &nbsp;&nbsp;
		 ${pg.totalCount}条记录
		 &nbsp;&nbsp;
		 <a class="button" onclick="$('#queryForm').submit();">刷新</a>
		 </h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content" style="">
        <div class="tab-content default-tab" id="tab1">
          <!-- This is the target div. id must match the href of this div's tab -->
          <%@ include file="/admin/admincommon/tipup.jsp" %>
          <table>
            <thead>
              <tr>
                <th>
                  <input class="check-all" type="checkbox" />
                </th>
				
			
                
                	<c:set var="tt" value="ID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="id_000"><span onclick="newsort('<%=CmsStRehuopai.ALIAS_ID%>');"><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_ID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="ACTNAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="actname_000"><span onclick="newsort('<%=CmsStRehuopai.ALIAS_ACTNAME%>');"><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_ACTNAME)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="CLOSEDATE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="closedate_000"><span onclick="newsort('<%=CmsStRehuopai.ALIAS_CLOSEDATE%>');"><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CLOSEDATE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="KEYWORDS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="keywords_000"><span onclick="newsort('<%=CmsStRehuopai.ALIAS_KEYWORDS%>');"><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_KEYWORDS)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="DESCRIPTION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="description_000"><span onclick="newsort('<%=CmsStRehuopai.ALIAS_DESCRIPTION%>');"><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_DESCRIPTION)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="CO_TIME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="coTime_000"><span onclick="newsort('<%=CmsStRehuopai.ALIAS_CO_TIME%>');"><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_TIME)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="CO_POSITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="coPosition_000"><span onclick="newsort('<%=CmsStRehuopai.ALIAS_CO_POSITION%>');"><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_POSITION)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="BUS_WAY"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="busWay_000"><span onclick="newsort('<%=CmsStRehuopai.ALIAS_BUS_WAY%>');"><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_BUS_WAY)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="DRIVE_WAY"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="driveWay_000"><span onclick="newsort('<%=CmsStRehuopai.ALIAS_DRIVE_WAY%>');"><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_DRIVE_WAY)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="CO_PROCESS1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="coProcess1_000"><span onclick="newsort('<%=CmsStRehuopai.ALIAS_CO_PROCESS1%>');"><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_PROCESS1)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="CO_PROCESS2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="coProcess2_000"><span onclick="newsort('<%=CmsStRehuopai.ALIAS_CO_PROCESS2%>');"><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_PROCESS2)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="CO_PROCESS3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="coProcess3_000"><span onclick="newsort('<%=CmsStRehuopai.ALIAS_CO_PROCESS3%>');"><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_PROCESS3)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="CO_PROCESS4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="coProcess4_000"><span onclick="newsort('<%=CmsStRehuopai.ALIAS_CO_PROCESS4%>');"><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_PROCESS4)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="CO_PROCESS5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="coProcess5_000"><span onclick="newsort('<%=CmsStRehuopai.ALIAS_CO_PROCESS5%>');"><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_PROCESS5)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="CO_PROCESS6"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="coProcess6_000"><span onclick="newsort('<%=CmsStRehuopai.ALIAS_CO_PROCESS6%>');"><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_PROCESS6)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="CO_PROCESS7"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="coProcess7_000"><span onclick="newsort('<%=CmsStRehuopai.ALIAS_CO_PROCESS7%>');"><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_PROCESS7)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="CO_PROCESS8"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="coProcess8_000"><span onclick="newsort('<%=CmsStRehuopai.ALIAS_CO_PROCESS8%>');"><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_PROCESS8)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="CO_PROCESS9"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="coProcess9_000"><span onclick="newsort('<%=CmsStRehuopai.ALIAS_CO_PROCESS9%>');"><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_PROCESS9)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="CO_PROCESS10"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="coProcess10_000"><span onclick="newsort('<%=CmsStRehuopai.ALIAS_CO_PROCESS10%>');"><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_PROCESS10)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="CO_TYPES"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="coTypes_000"><span onclick="newsort('<%=CmsStRehuopai.ALIAS_CO_TYPES%>');"><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_TYPES)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="CO_ATTENTIONS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="coAttentions_000"><span onclick="newsort('<%=CmsStRehuopai.ALIAS_CO_ATTENTIONS%>');"><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_ATTENTIONS)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="PRICE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="price_000"><span onclick="newsort('<%=CmsStRehuopai.ALIAS_PRICE%>');"><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_PRICE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="PRICE_TIP"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="priceTip_000"><span onclick="newsort('<%=CmsStRehuopai.ALIAS_PRICE_TIP%>');"><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_PRICE_TIP)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="BIGIMG1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="bigimg1_000"><span onclick="newsort('<%=CmsStRehuopai.ALIAS_BIGIMG1%>');"><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_BIGIMG1)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="BIGIMG2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="bigimg2_000"><span onclick="newsort('<%=CmsStRehuopai.ALIAS_BIGIMG2%>');"><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_BIGIMG2)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="BIGIMG3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="bigimg3_000"><span onclick="newsort('<%=CmsStRehuopai.ALIAS_BIGIMG3%>');"><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_BIGIMG3)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="BIGIMG4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="bigimg4_000"><span onclick="newsort('<%=CmsStRehuopai.ALIAS_BIGIMG4%>');"><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_BIGIMG4)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="BIGIMG5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="bigimg5_000"><span onclick="newsort('<%=CmsStRehuopai.ALIAS_BIGIMG5%>');"><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_BIGIMG5)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="BIGIMG6"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="bigimg6_000"><span onclick="newsort('<%=CmsStRehuopai.ALIAS_BIGIMG6%>');"><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_BIGIMG6)%></span></th>
					</c:if>
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext1_000"><span onclick="newsort('<%=CmsStRehuopai.ALIAS_EXT1%>');"><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_EXT1)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext2_000"><span onclick="newsort('<%=CmsStRehuopai.ALIAS_EXT2%>');"><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_EXT2)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext3_000"><span onclick="newsort('<%=CmsStRehuopai.ALIAS_EXT3%>');"><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_EXT3)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext4_000"><span onclick="newsort('<%=CmsStRehuopai.ALIAS_EXT4%>');"><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_EXT4)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext5_000"><span onclick="newsort('<%=CmsStRehuopai.ALIAS_EXT5%>');"><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_EXT5)%></span></th>
					</c:if>
				-->	
			
				
			
                
                	<c:set var="tt" value="EXT_INT1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extInt1_000"><span onclick="newsort('<%=CmsStRehuopai.ALIAS_EXT_INT1%>');"><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_EXT_INT1)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="EXT_INT2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extInt2_000"><span onclick="newsort('<%=CmsStRehuopai.ALIAS_EXT_INT2%>');"><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_EXT_INT2)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="EXT_INT3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extInt3_000"><span onclick="newsort('<%=CmsStRehuopai.ALIAS_EXT_INT3%>');"><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_EXT_INT3)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="EXT_INT4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extInt4_000"><span onclick="newsort('<%=CmsStRehuopai.ALIAS_EXT_INT4%>');"><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_EXT_INT4)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="EXT_INT5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extInt5_000"><span onclick="newsort('<%=CmsStRehuopai.ALIAS_EXT_INT5%>');"><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_EXT_INT5)%></span></th>
					</c:if>
			
				<!-- 
				
			
                
                	<c:set var="tt" value="STATUS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="status_000"><span onclick="newsort('<%=CmsStRehuopai.ALIAS_STATUS%>');"><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_STATUS)%></span></th>
					</c:if>
				-->	
			
			
				
			
				<!-- 
				
			
                
                	<c:set var="tt" value="MODIFYTIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="modifytimelong_000"><span onclick="newsort('<%=CmsStRehuopai.ALIAS_MODIFYTIMELONG%>');"><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_MODIFYTIMELONG)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="CREATEUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="createuser_000"><span onclick="newsort('<%=CmsStRehuopai.ALIAS_CREATEUSER%>');"><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CREATEUSER)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="MODIFYUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="modifyuser_000"><span onclick="newsort('<%=CmsStRehuopai.ALIAS_MODIFYUSER%>');"><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_MODIFYUSER)%></span></th>
					</c:if>
				-->	
			
				<th>操作</th>
              </tr>
            </thead>

            <tbody>
            <c:forEach var="v" varStatus="vs" items="${pg.result}">
              <tr>
                <td>
                  <input type="checkbox" id="checkbox_${v.id}" />
                </td>
                
                	<c:set var="tt" value="ID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<td>${v.id}</td>
					</c:if>
				
                	<c:set var="tt" value="ACTNAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="actname_${v.id}" class="td123 actnameTd">
${my:showcont('CmsStRehuopai','actname',v.actname,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="CLOSEDATE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="closedate_${v.id}" class="td123 closedateTd">
${my:showcont('CmsStRehuopai','closedate',v.closedate,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="KEYWORDS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="keywords_${v.id}" class="td123 keywordsTd">
${my:showcont('CmsStRehuopai','keywords',v.keywords,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="DESCRIPTION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="description_${v.id}" class="td123 descriptionTd">
${my:showcont('CmsStRehuopai','description',v.description,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="CO_TIME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="coTime_${v.id}" class="td123 coTimeTd">
${my:showcont('CmsStRehuopai','coTime',v.coTime,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="CO_POSITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="coPosition_${v.id}" class="td123 coPositionTd">
${my:showcont('CmsStRehuopai','coPosition',v.coPosition,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="BUS_WAY"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="busWay_${v.id}" class="td123 busWayTd">
${my:showcont('CmsStRehuopai','busWay',v.busWay,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="DRIVE_WAY"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="driveWay_${v.id}" class="td123 driveWayTd">
${my:showcont('CmsStRehuopai','driveWay',v.driveWay,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="CO_PROCESS1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="coProcess1_${v.id}" class="td123 coProcess1Td">
${my:showcont('CmsStRehuopai','coProcess1',v.coProcess1,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="CO_PROCESS2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="coProcess2_${v.id}" class="td123 coProcess2Td">
${my:showcont('CmsStRehuopai','coProcess2',v.coProcess2,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="CO_PROCESS3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="coProcess3_${v.id}" class="td123 coProcess3Td">
${my:showcont('CmsStRehuopai','coProcess3',v.coProcess3,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="CO_PROCESS4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="coProcess4_${v.id}" class="td123 coProcess4Td">
${my:showcont('CmsStRehuopai','coProcess4',v.coProcess4,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="CO_PROCESS5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="coProcess5_${v.id}" class="td123 coProcess5Td">
${my:showcont('CmsStRehuopai','coProcess5',v.coProcess5,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="CO_PROCESS6"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="coProcess6_${v.id}" class="td123 coProcess6Td">
${my:showcont('CmsStRehuopai','coProcess6',v.coProcess6,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="CO_PROCESS7"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="coProcess7_${v.id}" class="td123 coProcess7Td">
${my:showcont('CmsStRehuopai','coProcess7',v.coProcess7,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="CO_PROCESS8"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="coProcess8_${v.id}" class="td123 coProcess8Td">
${my:showcont('CmsStRehuopai','coProcess8',v.coProcess8,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="CO_PROCESS9"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="coProcess9_${v.id}" class="td123 coProcess9Td">
${my:showcont('CmsStRehuopai','coProcess9',v.coProcess9,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="CO_PROCESS10"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="coProcess10_${v.id}" class="td123 coProcess10Td">
${my:showcont('CmsStRehuopai','coProcess10',v.coProcess10,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="CO_TYPES"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="coTypes_${v.id}" class="td123 coTypesTd">
${my:showcont('CmsStRehuopai','coTypes',v.coTypes,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="CO_ATTENTIONS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="coAttentions_${v.id}" class="td123 coAttentionsTd">
${my:showcont('CmsStRehuopai','coAttentions',v.coAttentions,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="PRICE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="price_${v.id}" class="td123 priceTd">
${my:showcont('CmsStRehuopai','price',v.price,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="PRICE_TIP"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="priceTip_${v.id}" class="td123 priceTipTd">
${my:showcont('CmsStRehuopai','priceTip',v.priceTip,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="BIGIMG1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="bigimg1_${v.id}" class="td123 bigimg1Td">
${my:showcont('CmsStRehuopai','bigimg1',v.bigimg1,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="BIGIMG2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="bigimg2_${v.id}" class="td123 bigimg2Td">
${my:showcont('CmsStRehuopai','bigimg2',v.bigimg2,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="BIGIMG3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="bigimg3_${v.id}" class="td123 bigimg3Td">
${my:showcont('CmsStRehuopai','bigimg3',v.bigimg3,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="BIGIMG4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="bigimg4_${v.id}" class="td123 bigimg4Td">
${my:showcont('CmsStRehuopai','bigimg4',v.bigimg4,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="BIGIMG5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="bigimg5_${v.id}" class="td123 bigimg5Td">
${my:showcont('CmsStRehuopai','bigimg5',v.bigimg5,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="BIGIMG6"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="bigimg6_${v.id}" class="td123 bigimg6Td">
${my:showcont('CmsStRehuopai','bigimg6',v.bigimg6,0 )}							</td>
					</c:if>
				
				<!-- 
                	<c:set var="tt" value="EXT1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext1_${v.id}" class="td123 ext1Td">
${my:showcont('CmsStRehuopai','ext1',v.ext1,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext2_${v.id}" class="td123 ext2Td">
${my:showcont('CmsStRehuopai','ext2',v.ext2,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext3_${v.id}" class="td123 ext3Td">
${my:showcont('CmsStRehuopai','ext3',v.ext3,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext4_${v.id}" class="td123 ext4Td">
${my:showcont('CmsStRehuopai','ext4',v.ext4,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext5_${v.id}" class="td123 ext5Td">
${my:showcont('CmsStRehuopai','ext5',v.ext5,0 )}							</td>
					</c:if>
				
				--> 
                	<c:set var="tt" value="EXT_INT1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extInt1_${v.id}" class="td123 extInt1Td">
${my:showcont('CmsStRehuopai','extInt1',v.extInt1,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="EXT_INT2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extInt2_${v.id}" class="td123 extInt2Td">
${my:showcont('CmsStRehuopai','extInt2',v.extInt2,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="EXT_INT3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extInt3_${v.id}" class="td123 extInt3Td">
${my:showcont('CmsStRehuopai','extInt3',v.extInt3,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="EXT_INT4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extInt4_${v.id}" class="td123 extInt4Td">
${my:showcont('CmsStRehuopai','extInt4',v.extInt4,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="EXT_INT5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extInt5_${v.id}" class="td123 extInt5Td">
${my:showcont('CmsStRehuopai','extInt5',v.extInt5,0 )}							</td>
					</c:if>
				
				<!-- 
                	<c:set var="tt" value="STATUS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="status_${v.id}" class="td123 statusTd">
${my:showcont('CmsStRehuopai','status',v.status,0 )}							</td>
					</c:if>
				
				--> 

				<!-- 
                	<c:set var="tt" value="CREATETIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createtimelong_${v.id}" class="td123 createtimelongTd">
${my:showcont('CmsStRehuopai','createtimelong',v.createtimelong,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="MODIFYTIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="modifytimelong_${v.id}" class="td123 modifytimelongTd">
${my:showcont('CmsStRehuopai','modifytimelong',v.modifytimelong,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="CREATEUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createuser_${v.id}" class="td123 createuserTd">
${my:showcont('CmsStRehuopai','createuser',v.createuser,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="MODIFYUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="modifyuser_${v.id}" class="td123 modifyuserTd">
${my:showcont('CmsStRehuopai','modifyuser',v.modifyuser,0 )}							</td>
					</c:if>
				
				--> 
                
                <td id="operate_${v.id}" class="operate111">
                  <!-- Icons-->
             	<c:choose>
        	<c:when test="${param.fromiframe eq null or param.fromiframe eq ''}">
        		<!--
            	<a class="xinzeng111" href="${ctx}/${actionBasePath}/create.do" title="新增"><img src="${ctx}/admin/resources/images/icons/pencil.png" alt="新增" /></a>
                 -->
                  <a href="#" onclick="if(confirm('您确定要删除这条数据吗？')) window.location.href='${ctx}/${actionBasePath}/delete.do?items=${v.id}';" title="删除"><img src="${ctx}/admin/resources/images/icons/cross.png" alt="删除" /></a>
                  <a class="iframe" href="${ctx}/${actionBasePath}/edit.do?id=${v.id}" title="修改"><img src="${ctx}/admin/resources/images/icons/hammer_screwdriver.png" alt="修改" /></a> 
${my:input('CmsStRehuopai','list_iframe',v.id,-1,0 )}${my:input('CmsStRehuopai','list_blank',v.id,-1,0 )}
           
           
            </c:when>
            <c:otherwise>
            	<a class="button" href="#" onclick="parent.didiframe(obj[${vs.index}],'${param.params}');">选取</a>
            </c:otherwise>
            
        </c:choose>	
             		
		<a class="iframe" href="#" onclick="parent.addPanel('${ctx}/kailian/CmsStRhppartner/list.do?pid=${v.id}','合作伙伴');" title="合作伙伴" target="_blank">合作伙伴</a> 
        <a class="iframe" href="#" onclick="parent.addPanel('${ctx}/kailian/CmsStRhpotherdetail/list.do?pid=${v.id}','其他详情');" title="其他详情" target="_blank">其他详情</a> 
        <a class="iframe" href="#" onclick="parent.addPanel('${ctx}/kailian/CmsStProductinfo/list.do?groupid=${v.extInt2}','其他好玩的');" title="其他好玩的" target="_blank">其他好玩的</a> 
        <a class="iframe" href="#" onclick="parent.addPanel('${ctx}/kailian/CmsStRhppeople/list.do?pid=${v.id}','报名数据');" title="报名数据" target="_blank">报名数据</a> 
             		
        <a target="_blank" href="${ctx}/kailian/CmsStRehuopai/rehuopai.do?id=${v.id}" title="其他好玩的" target="_blank">预览</a> 
        

                 </td>
              </tr>
           	</c:forEach>
            </tbody>
          </table>
          <br/><br/>
                  <div class="clear"></div>
                  <div class="align-left"> 
                  		
                  		<c:if test="${pg.thisPageNumber gt 1}">
                  			<a class="button" href="javascript:submitSearch(1);" title="首页">&laquo; 首页</a>
                  			<a class="button" href="javascript:submitSearch(${pg.previousPageNumber});" title="上页">&laquo; 上页</a>
                  		</c:if>
                  
                  		<c:forEach var="p" items="${pg.linkPageNumbers}">
                  			<c:choose>
                  				<c:when test="${p eq pg.thisPageNumber}">
                  					&nbsp;&nbsp;${p}&nbsp;&nbsp;
                  				</c:when>
                  				<c:otherwise>
                  					<a class="button" href="javascript:submitSearch(${p});" class="number" title="${p}">${p}</a>
                  				</c:otherwise>
                  			</c:choose>
                  			
                  		</c:forEach>
                  		
                  		<c:if test="${pg.thisPageNumber lt pg.lastPageNumber}">
                  			<a class="button" href="javascript:submitSearch(${pg.nextPageNumber});" title="下页">&raquo; 下页</a>
                  			<a class="button" href="javascript:submitSearch(${pg.lastPageNumber});" title="尾页">&raquo; 尾页</a>
                  		</c:if>
                  </div>
                  <!-- End .pagination -->
                  <div class="clear"></div>
        </div>
        <!-- End #tab1 -->

      </div>
      <!-- End .content-box-content -->
    </div>
    <!-- End .content-box -->
    
    <!-- 搜索 -->
        <div class="content-box column-right" style="width:100%">
      <div class="content-box-header">
        <!-- Add the class "closed" to the Content box header to have it closed by default -->
        <h3>搜索</h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">
          <form id="queryForm" name="queryForm" action="${ctx}/${actionBasePath}/list.do" method="post" style="display: inline;">
			<a href="#" class="button" onclick="$('#queryForm').submit();">查询</a>
				&nbsp;&nbsp;
				<a href="#" class="button" onclick="$('#queryForm').reset();">重置</a>
				<br/>
			
			<input type="hidden" id="pageNumber" name="pageNumber" value="${param.pageNumber}"/>
			<input type="hidden" id="pageSize" name="pageSize" value="10" />
			<input type="hidden" id="sort" name="sort" value="${param.sort}" />
			<input type="hidden" id="fromiframe" name="fromiframe" value="${param.fromiframe}" />
			<input type="hidden" id="params" name="params" value="${param.params}" />
			<fieldset>
			
			 <p id="id_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_ID)%></label>
${my:input('CmsStRehuopai','id',param.id,0,-1 )}						
						
              </p>
			
			 <p id="actname_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_ACTNAME)%></label>
${my:input('CmsStRehuopai','actname',param.actname,0,-1 )}						
						
              </p>
			
			 <p id="closedate_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CLOSEDATE)%></label>
${my:input('CmsStRehuopai','closedate',param.closedate,0,-1 )}						
						
              </p>
			
			 <p id="keywords_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_KEYWORDS)%></label>
${my:input('CmsStRehuopai','keywords',param.keywords,0,-1 )}						
						
              </p>
			
			 <p id="description_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_DESCRIPTION)%></label>
${my:input('CmsStRehuopai','description',param.description,0,-1 )}						
						
              </p>
			
			 <p id="coTime_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_TIME)%></label>
${my:input('CmsStRehuopai','coTime',param.coTime,0,-1 )}						
						
              </p>
			
			 <p id="coPosition_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_POSITION)%></label>
${my:input('CmsStRehuopai','coPosition',param.coPosition,0,-1 )}						
						
              </p>
			
			 <p id="busWay_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_BUS_WAY)%></label>
${my:input('CmsStRehuopai','busWay',param.busWay,0,-1 )}						
						
              </p>
			
			 <p id="driveWay_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_DRIVE_WAY)%></label>
${my:input('CmsStRehuopai','driveWay',param.driveWay,0,-1 )}						
						
              </p>
			
			 <p id="coProcess1_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_PROCESS1)%></label>
${my:input('CmsStRehuopai','coProcess1',param.coProcess1,0,-1 )}						
						
              </p>
			
			 <p id="coProcess2_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_PROCESS2)%></label>
${my:input('CmsStRehuopai','coProcess2',param.coProcess2,0,-1 )}						
						
              </p>
			
			 <p id="coProcess3_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_PROCESS3)%></label>
${my:input('CmsStRehuopai','coProcess3',param.coProcess3,0,-1 )}						
						
              </p>
			
			 <p id="coProcess4_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_PROCESS4)%></label>
${my:input('CmsStRehuopai','coProcess4',param.coProcess4,0,-1 )}						
						
              </p>
			
			 <p id="coProcess5_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_PROCESS5)%></label>
${my:input('CmsStRehuopai','coProcess5',param.coProcess5,0,-1 )}						
						
              </p>
			
			 <p id="coProcess6_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_PROCESS6)%></label>
${my:input('CmsStRehuopai','coProcess6',param.coProcess6,0,-1 )}						
						
              </p>
			
			 <p id="coProcess7_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_PROCESS7)%></label>
${my:input('CmsStRehuopai','coProcess7',param.coProcess7,0,-1 )}						
						
              </p>
			
			 <p id="coProcess8_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_PROCESS8)%></label>
${my:input('CmsStRehuopai','coProcess8',param.coProcess8,0,-1 )}						
						
              </p>
			
			 <p id="coProcess9_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_PROCESS9)%></label>
${my:input('CmsStRehuopai','coProcess9',param.coProcess9,0,-1 )}						
						
              </p>
			
			 <p id="coProcess10_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_PROCESS10)%></label>
${my:input('CmsStRehuopai','coProcess10',param.coProcess10,0,-1 )}						
						
              </p>
			
			 <p id="coTypes_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_TYPES)%></label>
${my:input('CmsStRehuopai','coTypes',param.coTypes,0,-1 )}						
						
              </p>
			
			 <p id="coAttentions_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CO_ATTENTIONS)%></label>
${my:input('CmsStRehuopai','coAttentions',param.coAttentions,0,-1 )}						
						
              </p>
			
			 <p id="price_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_PRICE)%></label>
${my:input('CmsStRehuopai','price',param.price,0,-1 )}						
						
              </p>
			
			 <p id="priceTip_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_PRICE_TIP)%></label>
${my:input('CmsStRehuopai','priceTip',param.priceTip,0,-1 )}						
						
              </p>
			
			 <p id="bigimg1_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_BIGIMG1)%></label>
${my:input('CmsStRehuopai','bigimg1',param.bigimg1,0,-1 )}						
						
              </p>
			
			 <p id="bigimg2_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_BIGIMG2)%></label>
${my:input('CmsStRehuopai','bigimg2',param.bigimg2,0,-1 )}						
						
              </p>
			
			 <p id="bigimg3_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_BIGIMG3)%></label>
${my:input('CmsStRehuopai','bigimg3',param.bigimg3,0,-1 )}						
						
              </p>
			
			 <p id="bigimg4_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_BIGIMG4)%></label>
${my:input('CmsStRehuopai','bigimg4',param.bigimg4,0,-1 )}						
						
              </p>
			
			 <p id="bigimg5_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_BIGIMG5)%></label>
${my:input('CmsStRehuopai','bigimg5',param.bigimg5,0,-1 )}						
						
              </p>
			
			 <p id="bigimg6_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_BIGIMG6)%></label>
${my:input('CmsStRehuopai','bigimg6',param.bigimg6,0,-1 )}						
						
              </p>
			
				<!-- 
			 <p id="ext1_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_EXT1)%></label>
${my:input('CmsStRehuopai','ext1',param.ext1,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="ext2_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_EXT2)%></label>
${my:input('CmsStRehuopai','ext2',param.ext2,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="ext3_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_EXT3)%></label>
${my:input('CmsStRehuopai','ext3',param.ext3,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="ext4_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_EXT4)%></label>
${my:input('CmsStRehuopai','ext4',param.ext4,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="ext5_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_EXT5)%></label>
${my:input('CmsStRehuopai','ext5',param.ext5,0,-1 )}						
						
              </p>
				-->
			
			 <p id="extInt1_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_EXT_INT1)%></label>
${my:input('CmsStRehuopai','extInt1',param.extInt1,0,-1 )}						
						
              </p>
			
			 <p id="extInt2_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_EXT_INT2)%></label>
${my:input('CmsStRehuopai','extInt2',param.extInt2,0,-1 )}						
						
              </p>
			
			 <p id="extInt3_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_EXT_INT3)%></label>
${my:input('CmsStRehuopai','extInt3',param.extInt3,0,-1 )}						
						
              </p>
			
			 <p id="extInt4_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_EXT_INT4)%></label>
${my:input('CmsStRehuopai','extInt4',param.extInt4,0,-1 )}						
						
              </p>
			
			 <p id="extInt5_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_EXT_INT5)%></label>
${my:input('CmsStRehuopai','extInt5',param.extInt5,0,-1 )}						
						
              </p>
			
				<!-- 
			 <p id="status_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_STATUS)%></label>
${my:input('CmsStRehuopai','status',param.status,0,-1 )}						
						
              </p>
				-->
			

			
				<!-- 
			 <p id="createtimelong_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CREATETIMELONG)%></label>
${my:input('CmsStRehuopai','createtimelong',param.createtimelong,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="modifytimelong_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_MODIFYTIMELONG)%></label>
${my:input('CmsStRehuopai','modifytimelong',param.modifytimelong,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="createuser_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_CREATEUSER)%></label>
${my:input('CmsStRehuopai','createuser',param.createuser,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="modifyuser_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStRehuopai",CmsStRehuopai.ALIAS_MODIFYUSER)%></label>
${my:input('CmsStRehuopai','modifyuser',param.modifyuser,0,-1 )}						
						
              </p>
				-->
				</fieldset>
				<br/>
				<a href="#" class="button" onclick="$('#queryForm').submit();">查询</a>
				&nbsp;&nbsp;
				<a href="#" class="button" onclick="$('#queryForm').reset();">重置</a>
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
	$('.iframe').fancybox({'width':widthPercent,'height':heightPercent,  'onClosed' :function() { $('#queryForm').submit();}});
	dorightlist();
});

function newsort(sortname) {
	var sort = $('#sort').val();
	if (sort == "")
		$('#sort').val(sortname);
	else {
		sort = sort.split(" ")[0];
		if (sort != sortname || $('#sort').val().split(" ").length > 1) {
			$('#sort').val(sortname);
		}
		else
			$('#sort').val(sortname + " desc");
	}
	$('#queryForm').submit();
}


function deleteids() {
		var items = "";
		for (var i = 1; i <= 10; i ++) {
			if($("#checkbox_" + i).attr("checked")=="checked") {
				if (items == "")
					items += "" + i;
				else 
					items += "," + i;
				
			}
		}
		
		window.location.href = "${ctx}/${actionBasePath}/delete.do?items=" + items;
	}
	
	
	function submitSearch(pageno) {
		document.getElementById('pageNumber').value = pageno;
		$('#queryForm').submit();
	}
	
	
</script>
<!-- Download From www.exet.tk-->
</html>
