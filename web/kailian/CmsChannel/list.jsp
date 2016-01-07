<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsChannel.TABLE_ALIAS);
	Map map = new HashMap();
		map.put("ID", "1");
		//map.put("PARENT_ID", "1");
		map.put("NAME", "1");
		map.put("PATH", "1");
		//map.put("TITILE", "1");
		//map.put("KEYWORDS", "1");
		//map.put("DESCRIPTION", "1");
		map.put("CHANNEL_TYPE", "1");
		map.put("CHANNEL_TEMPLATE", "1");
		map.put("CONTENT_TEMPLATE", "1");
		//map.put("CHANNEL_STATIC_PATH", "1");
		//map.put("CONTENT_STATIC_PATH", "1");
		map.put("RANK", "1");
		//map.put("DISPLAY", "1");
		//map.put("DOCIMG", "1");
		//map.put("AUDIT_LEVEL", "1");
		//map.put("AFTER_CHECK", "1");
		map.put("COMMENT_TYPE", "1");
		map.put("FLOWER_EGG", "1");
		map.put("VIEW_RIGHT", "1");
		//map.put("LINK", "1");
		//map.put("TITLEIMG", "1");
		//map.put("WORK_FLOW_ID", "1");
		map.put("STATUS", "1");
		map.put("ADDITION", "1");
		map.put("CREATETIMELONG", "1");
		map.put("MODIFYTIMELONG", "1");
		map.put("CREATEUSER", "1");
		map.put("MODIFYUSER", "1");
		map.put("EXT1", "1");
		map.put("EXT2", "1");
		map.put("EXT3", "1");
		map.put("EXT4", "1");
		map.put("EXT5", "1");
		map.put("EXTINT1", "1");
		map.put("EXTINT2", "1");
		map.put("EXTINT3", "1");
		map.put("EXTINT4", "1");
		map.put("EXTINT5", "1");
	request.setAttribute("showmap", map);
 %>
<c:set var="actionBasePath" value="/kailian/CmsChannel" />
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
        <h3><%=JSTLTagUtils.getCnname("CmsChannel","table_name")%>列表
		&nbsp;&nbsp;
		
		<c:choose>
        	<c:when test="${param.fromiframe eq null or param.fromiframe eq ''}">
            <a class="button iframe" href="${ctx}/${actionBasePath}/create.do" title="新增">新增</a>
		 &nbsp;&nbsp;
		 <a class="button" onClick="if(confirm('确定要删除所选数据吗？')) deleteidsrt();" title="删除所选">删除所选</a>
            </c:when>
            <c:otherwise>
            
            </c:otherwise>
        </c:choose>
		
		
		 
		 &nbsp;&nbsp;
		 ${pg.totalCount}条记录
		 &nbsp;&nbsp;
		 <a class="button" onClick="$('#queryForm').submit();">刷新</a>
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
						<th id="id_000"><span onClick="newsort('<%=CmsChannel.ALIAS_ID%>');"><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_ID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="PARENT_ID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="parentId_000"><span onClick="newsort('<%=CmsChannel.ALIAS_PARENT_ID%>');"><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_PARENT_ID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="NAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="name_000"><span onClick="newsort('<%=CmsChannel.ALIAS_NAME%>');"><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_NAME)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="PATH"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="path_000"><span onClick="newsort('<%=CmsChannel.ALIAS_PATH%>');"><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_PATH)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="TITILE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="titile_000"><span onClick="newsort('<%=CmsChannel.ALIAS_TITILE%>');"><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_TITILE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="KEYWORDS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="keywords_000"><span onClick="newsort('<%=CmsChannel.ALIAS_KEYWORDS%>');"><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_KEYWORDS)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="DESCRIPTION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="description_000"><span onClick="newsort('<%=CmsChannel.ALIAS_DESCRIPTION%>');"><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_DESCRIPTION)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="CHANNEL_TYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="channelType_000"><span onClick="newsort('<%=CmsChannel.ALIAS_CHANNEL_TYPE%>');"><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_CHANNEL_TYPE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="CHANNEL_TEMPLATE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="channelTemplate_000"><span onClick="newsort('<%=CmsChannel.ALIAS_CHANNEL_TEMPLATE%>');"><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_CHANNEL_TEMPLATE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="CONTENT_TEMPLATE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="contentTemplate_000"><span onClick="newsort('<%=CmsChannel.ALIAS_CONTENT_TEMPLATE%>');"><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_CONTENT_TEMPLATE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="CHANNEL_STATIC_PATH"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="channelStaticPath_000"><span onClick="newsort('<%=CmsChannel.ALIAS_CHANNEL_STATIC_PATH%>');"><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_CHANNEL_STATIC_PATH)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="CONTENT_STATIC_PATH"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="contentStaticPath_000"><span onClick="newsort('<%=CmsChannel.ALIAS_CONTENT_STATIC_PATH%>');"><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_CONTENT_STATIC_PATH)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="RANK"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="rank_000"><span onClick="newsort('<%=CmsChannel.ALIAS_RANK%>');"><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_RANK)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="DISPLAY"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="display_000"><span onClick="newsort('<%=CmsChannel.ALIAS_DISPLAY%>');"><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_DISPLAY)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="DOCIMG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="docimg_000"><span onClick="newsort('<%=CmsChannel.ALIAS_DOCIMG%>');"><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_DOCIMG)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="AUDIT_LEVEL"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="auditLevel_000"><span onClick="newsort('<%=CmsChannel.ALIAS_AUDIT_LEVEL%>');"><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_AUDIT_LEVEL)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="AFTER_CHECK"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="afterCheck_000"><span onClick="newsort('<%=CmsChannel.ALIAS_AFTER_CHECK%>');"><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_AFTER_CHECK)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="COMMENT_TYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="commentType_000"><span onClick="newsort('<%=CmsChannel.ALIAS_COMMENT_TYPE%>');"><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_COMMENT_TYPE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="FLOWER_EGG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="flowerEgg_000"><span onClick="newsort('<%=CmsChannel.ALIAS_FLOWER_EGG%>');"><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_FLOWER_EGG)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="VIEW_RIGHT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="viewRight_000"><span onClick="newsort('<%=CmsChannel.ALIAS_VIEW_RIGHT%>');"><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_VIEW_RIGHT)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="LINK"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="link_000"><span onClick="newsort('<%=CmsChannel.ALIAS_LINK%>');"><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_LINK)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="TITLEIMG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="titleimg_000"><span onClick="newsort('<%=CmsChannel.ALIAS_TITLEIMG%>');"><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_TITLEIMG)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="WORK_FLOW_ID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="workFlowId_000"><span onClick="newsort('<%=CmsChannel.ALIAS_WORK_FLOW_ID%>');"><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_WORK_FLOW_ID)%></span></th>
					</c:if>
			
				<!-- 
				
			
                
                	<c:set var="tt" value="STATUS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="status_000"><span onclick="newsort('<%=CmsChannel.ALIAS_STATUS%>');"><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_STATUS)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="ADDITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="addition_000"><span onclick="newsort('<%=CmsChannel.ALIAS_ADDITION%>');"><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_ADDITION)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="CREATETIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="createtimelong_000"><span onclick="newsort('<%=CmsChannel.ALIAS_CREATETIMELONG%>');"><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_CREATETIMELONG)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="MODIFYTIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="modifytimelong_000"><span onclick="newsort('<%=CmsChannel.ALIAS_MODIFYTIMELONG%>');"><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_MODIFYTIMELONG)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="CREATEUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="createuser_000"><span onclick="newsort('<%=CmsChannel.ALIAS_CREATEUSER%>');"><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_CREATEUSER)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="MODIFYUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="modifyuser_000"><span onclick="newsort('<%=CmsChannel.ALIAS_MODIFYUSER%>');"><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_MODIFYUSER)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext1_000"><span onclick="newsort('<%=CmsChannel.ALIAS_EXT1%>');"><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_EXT1)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext2_000"><span onclick="newsort('<%=CmsChannel.ALIAS_EXT2%>');"><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_EXT2)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext3_000"><span onclick="newsort('<%=CmsChannel.ALIAS_EXT3%>');"><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_EXT3)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext4_000"><span onclick="newsort('<%=CmsChannel.ALIAS_EXT4%>');"><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_EXT4)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext5_000"><span onclick="newsort('<%=CmsChannel.ALIAS_EXT5%>');"><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_EXT5)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXTINT1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extint1_000"><span onclick="newsort('<%=CmsChannel.ALIAS_EXTINT1%>');"><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_EXTINT1)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXTINT2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extint2_000"><span onclick="newsort('<%=CmsChannel.ALIAS_EXTINT2%>');"><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_EXTINT2)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXTINT3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extint3_000"><span onclick="newsort('<%=CmsChannel.ALIAS_EXTINT3%>');"><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_EXTINT3)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXTINT4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extint4_000"><span onclick="newsort('<%=CmsChannel.ALIAS_EXTINT4%>');"><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_EXTINT4)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXTINT5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extint5_000"><span onclick="newsort('<%=CmsChannel.ALIAS_EXTINT5%>');"><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_EXTINT5)%></span></th>
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
				
                	<c:set var="tt" value="PARENT_ID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="parentId_${v.id}" class="td123 parentIdTd">
${my:showcont('CmsChannel','parentId',v.parentId,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="NAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="name_${v.id}" class="td123 nameTd">
${my:showcont('CmsChannel','name',v.name,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="PATH"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="path_${v.id}" class="td123 pathTd">
${my:showcont('CmsChannel','path',v.path,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="TITILE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="titile_${v.id}" class="td123 titileTd">
${my:showcont('CmsChannel','titile',v.titile,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="KEYWORDS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="keywords_${v.id}" class="td123 keywordsTd">
${my:showcont('CmsChannel','keywords',v.keywords,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="DESCRIPTION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="description_${v.id}" class="td123 descriptionTd">
${my:showcont('CmsChannel','description',v.description,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="CHANNEL_TYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="channelType_${v.id}" class="td123 channelTypeTd">
${my:showcont('CmsChannel','channelType',v.channelType,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="CHANNEL_TEMPLATE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="channelTemplate_${v.id}" class="td123 channelTemplateTd">
${my:showcont('CmsChannel','channelTemplate',v.channelTemplate,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="CONTENT_TEMPLATE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="contentTemplate_${v.id}" class="td123 contentTemplateTd">
${my:showcont('CmsChannel','contentTemplate',v.contentTemplate,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="CHANNEL_STATIC_PATH"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="channelStaticPath_${v.id}" class="td123 channelStaticPathTd">
${my:showcont('CmsChannel','channelStaticPath',v.channelStaticPath,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="CONTENT_STATIC_PATH"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="contentStaticPath_${v.id}" class="td123 contentStaticPathTd">
${my:showcont('CmsChannel','contentStaticPath',v.contentStaticPath,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="RANK"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="rank_${v.id}" class="td123 rankTd">
${my:showcont('CmsChannel','rank',v.rank,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="DISPLAY"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="display_${v.id}" class="td123 displayTd">
${my:showcont('CmsChannel','display',v.display,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="DOCIMG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="docimg_${v.id}" class="td123 docimgTd">
${my:showcont('CmsChannel','docimg',v.docimg,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="AUDIT_LEVEL"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="auditLevel_${v.id}" class="td123 auditLevelTd">
${my:showcont('CmsChannel','auditLevel',v.auditLevel,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="AFTER_CHECK"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="afterCheck_${v.id}" class="td123 afterCheckTd">
${my:showcont('CmsChannel','afterCheck',v.afterCheck,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="COMMENT_TYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="commentType_${v.id}" class="td123 commentTypeTd">
${my:showcont('CmsChannel','commentType',v.commentType,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="FLOWER_EGG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="flowerEgg_${v.id}" class="td123 flowerEggTd">
${my:showcont('CmsChannel','flowerEgg',v.flowerEgg,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="VIEW_RIGHT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="viewRight_${v.id}" class="td123 viewRightTd">
${my:showcont('CmsChannel','viewRight',v.viewRight,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="LINK"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="link_${v.id}" class="td123 linkTd">
${my:showcont('CmsChannel','link',v.link,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="TITLEIMG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="titleimg_${v.id}" class="td123 titleimgTd">
${my:showcont('CmsChannel','titleimg',v.titleimg,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="WORK_FLOW_ID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="workFlowId_${v.id}" class="td123 workFlowIdTd">
${my:showcont('CmsChannel','workFlowId',v.workFlowId,0 )}							</td>
					</c:if>
				
				<!-- 
                	<c:set var="tt" value="STATUS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="status_${v.id}" class="td123 statusTd">
${my:showcont('CmsChannel','status',v.status,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="ADDITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="addition_${v.id}" class="td123 additionTd">
${my:showcont('CmsChannel','addition',v.addition,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="CREATETIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createtimelong_${v.id}" class="td123 createtimelongTd">
${my:showcont('CmsChannel','createtimelong',v.createtimelong,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="MODIFYTIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="modifytimelong_${v.id}" class="td123 modifytimelongTd">
${my:showcont('CmsChannel','modifytimelong',v.modifytimelong,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="CREATEUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createuser_${v.id}" class="td123 createuserTd">
${my:showcont('CmsChannel','createuser',v.createuser,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="MODIFYUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="modifyuser_${v.id}" class="td123 modifyuserTd">
${my:showcont('CmsChannel','modifyuser',v.modifyuser,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext1_${v.id}" class="td123 ext1Td">
${my:showcont('CmsChannel','ext1',v.ext1,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext2_${v.id}" class="td123 ext2Td">
${my:showcont('CmsChannel','ext2',v.ext2,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext3_${v.id}" class="td123 ext3Td">
${my:showcont('CmsChannel','ext3',v.ext3,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext4_${v.id}" class="td123 ext4Td">
${my:showcont('CmsChannel','ext4',v.ext4,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext5_${v.id}" class="td123 ext5Td">
${my:showcont('CmsChannel','ext5',v.ext5,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXTINT1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extint1_${v.id}" class="td123 extint1Td">
${my:showcont('CmsChannel','extint1',v.extint1,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXTINT2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extint2_${v.id}" class="td123 extint2Td">
${my:showcont('CmsChannel','extint2',v.extint2,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXTINT3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extint3_${v.id}" class="td123 extint3Td">
${my:showcont('CmsChannel','extint3',v.extint3,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXTINT4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extint4_${v.id}" class="td123 extint4Td">
${my:showcont('CmsChannel','extint4',v.extint4,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXTINT5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extint5_${v.id}" class="td123 extint5Td">
${my:showcont('CmsChannel','extint5',v.extint5,0 )}							</td>
					</c:if>
				
				--> 
                
                <td id="operate_${v.id}" class="operate111">
                  <!-- Icons-->
             	<c:choose>
        	<c:when test="${param.fromiframe eq null or param.fromiframe eq ''}">
        		<!--
            	<a class="xinzeng111" href="${ctx}/${actionBasePath}/create.do" title="新增"><img src="${ctx}/admin/resources/images/icons/pencil.png" alt="新增" /></a>
                 -->
                  <a href="#" onClick="if(confirm('您确定要删除这条数据吗？')) window.location.href='${ctx}/${actionBasePath}/delete.do?items=${v.id}';" title="删除"><img src="${ctx}/admin/resources/images/icons/cross.png" alt="删除" /></a>
                  <a class="iframe" href="${ctx}/${actionBasePath}/edit.do?id=${v.id}" title="修改"><img src="${ctx}/admin/resources/images/icons/hammer_screwdriver.png" alt="修改" /></a> 
${my:input('CmsChannel','list_iframe',v.id,-1,0 )}${my:input('CmsChannel','list_blank',v.id,-1,0 )}
           
            </c:when>
            <c:otherwise>
            	<a class="button" href="#" onClick="parent.didiframe(obj[${vs.index}],'${param.params}');">选取</a>
            </c:otherwise>
        </c:choose>	
             		
             		

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
			<a href="#" class="button" onClick="$('#queryForm').submit();">查询</a>
				&nbsp;&nbsp;
				<a href="#" class="button" onClick="$('#queryForm').reset();">重置</a>
				<br/>
			
			<input type="hidden" id="pageNumber" name="pageNumber" value="${param.pageNumber}"/>
			<input type="hidden" id="pageSize" name="pageSize" value="10" />
			<input type="hidden" id="sort" name="sort" value="${param.sort}" />
			<input type="hidden" id="fromiframe" name="fromiframe" value="${param.fromiframe}" />
			<input type="hidden" id="params" name="params" value="${param.params}" />
			<fieldset>
			
			 <p id="id_formp">
              <label><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_ID)%></label>
${my:input('CmsChannel','id',param.id,0,-1 )}						
						
              </p>
			
			 <p id="parentId_formp">
              <label><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_PARENT_ID)%></label>
${my:input('CmsChannel','parentId',param.parentId,0,-1 )}						
						
              </p>
			
			 <p id="name_formp">
              <label><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_NAME)%></label>
${my:input('CmsChannel','name',param.name,0,-1 )}						
						
              </p>
			
			 <p id="path_formp">
              <label><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_PATH)%></label>
${my:input('CmsChannel','path',param.path,0,-1 )}						
						
              </p>
			
			 <p id="titile_formp">
              <label><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_TITILE)%></label>
${my:input('CmsChannel','titile',param.titile,0,-1 )}						
						
              </p>
			
			 <p id="keywords_formp">
              <label><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_KEYWORDS)%></label>
${my:input('CmsChannel','keywords',param.keywords,0,-1 )}						
						
              </p>
			
			 <p id="description_formp">
              <label><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_DESCRIPTION)%></label>
${my:input('CmsChannel','description',param.description,0,-1 )}						
						
              </p>
			
			 <p id="channelType_formp">
              <label><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_CHANNEL_TYPE)%></label>
${my:input('CmsChannel','channelType',param.channelType,0,-1 )}						
						
              </p>
			
			 <p id="channelTemplate_formp">
              <label><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_CHANNEL_TEMPLATE)%></label>
${my:input('CmsChannel','channelTemplate',param.channelTemplate,0,-1 )}						
						
              </p>
			
			 <p id="contentTemplate_formp">
              <label><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_CONTENT_TEMPLATE)%></label>
${my:input('CmsChannel','contentTemplate',param.contentTemplate,0,-1 )}						
						
              </p>
			
			 <p id="channelStaticPath_formp">
              <label><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_CHANNEL_STATIC_PATH)%></label>
${my:input('CmsChannel','channelStaticPath',param.channelStaticPath,0,-1 )}						
						
              </p>
			
			 <p id="contentStaticPath_formp">
              <label><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_CONTENT_STATIC_PATH)%></label>
${my:input('CmsChannel','contentStaticPath',param.contentStaticPath,0,-1 )}						
						
              </p>
			
			 <p id="rank_formp">
              <label><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_RANK)%></label>
${my:input('CmsChannel','rank',param.rank,0,-1 )}						
						
              </p>
			
			 <p id="display_formp">
              <label><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_DISPLAY)%></label>
${my:input('CmsChannel','display',param.display,0,-1 )}						
						
              </p>
			
			 <p id="docimg_formp">
              <label><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_DOCIMG)%></label>
${my:input('CmsChannel','docimg',param.docimg,0,-1 )}						
						
              </p>
			
			 <p id="auditLevel_formp">
              <label><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_AUDIT_LEVEL)%></label>
${my:input('CmsChannel','auditLevel',param.auditLevel,0,-1 )}						
						
              </p>
			
			 <p id="afterCheck_formp">
              <label><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_AFTER_CHECK)%></label>
${my:input('CmsChannel','afterCheck',param.afterCheck,0,-1 )}						
						
              </p>
			
			 <p id="commentType_formp">
              <label><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_COMMENT_TYPE)%></label>
${my:input('CmsChannel','commentType',param.commentType,0,-1 )}						
						
              </p>
			
			 <p id="flowerEgg_formp">
              <label><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_FLOWER_EGG)%></label>
${my:input('CmsChannel','flowerEgg',param.flowerEgg,0,-1 )}						
						
              </p>
			
			 <p id="viewRight_formp">
              <label><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_VIEW_RIGHT)%></label>
${my:input('CmsChannel','viewRight',param.viewRight,0,-1 )}						
						
              </p>
			
			 <p id="link_formp">
              <label><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_LINK)%></label>
${my:input('CmsChannel','link',param.link,0,-1 )}						
						
              </p>
			
			 <p id="titleimg_formp">
              <label><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_TITLEIMG)%></label>
${my:input('CmsChannel','titleimg',param.titleimg,0,-1 )}						
						
              </p>
			
			 <p id="workFlowId_formp">
              <label><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_WORK_FLOW_ID)%></label>
${my:input('CmsChannel','workFlowId',param.workFlowId,0,-1 )}						
						
              </p>
			
				<!-- 
			 <p id="status_formp">
              <label><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_STATUS)%></label>
${my:input('CmsChannel','status',param.status,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="addition_formp">
              <label><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_ADDITION)%></label>
${my:input('CmsChannel','addition',param.addition,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="createtimelong_formp">
              <label><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_CREATETIMELONG)%></label>
${my:input('CmsChannel','createtimelong',param.createtimelong,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="modifytimelong_formp">
              <label><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_MODIFYTIMELONG)%></label>
${my:input('CmsChannel','modifytimelong',param.modifytimelong,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="createuser_formp">
              <label><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_CREATEUSER)%></label>
${my:input('CmsChannel','createuser',param.createuser,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="modifyuser_formp">
              <label><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_MODIFYUSER)%></label>
${my:input('CmsChannel','modifyuser',param.modifyuser,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="ext1_formp">
              <label><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_EXT1)%></label>
${my:input('CmsChannel','ext1',param.ext1,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="ext2_formp">
              <label><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_EXT2)%></label>
${my:input('CmsChannel','ext2',param.ext2,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="ext3_formp">
              <label><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_EXT3)%></label>
${my:input('CmsChannel','ext3',param.ext3,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="ext4_formp">
              <label><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_EXT4)%></label>
${my:input('CmsChannel','ext4',param.ext4,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="ext5_formp">
              <label><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_EXT5)%></label>
${my:input('CmsChannel','ext5',param.ext5,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="extint1_formp">
              <label><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_EXTINT1)%></label>
${my:input('CmsChannel','extint1',param.extint1,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="extint2_formp">
              <label><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_EXTINT2)%></label>
${my:input('CmsChannel','extint2',param.extint2,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="extint3_formp">
              <label><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_EXTINT3)%></label>
${my:input('CmsChannel','extint3',param.extint3,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="extint4_formp">
              <label><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_EXTINT4)%></label>
${my:input('CmsChannel','extint4',param.extint4,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="extint5_formp">
              <label><%=JSTLTagUtils.getCnname("CmsChannel",CmsChannel.ALIAS_EXTINT5)%></label>
${my:input('CmsChannel','extint5',param.extint5,0,-1 )}						
						
              </p>
				-->
				</fieldset>
				<br/>
				<a href="#" class="button" onClick="$('#queryForm').submit();">查询</a>
				&nbsp;&nbsp;
				<a href="#" class="button" onClick="$('#queryForm').reset();">重置</a>
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
	
	var str1 = '${my:resultlist(pg.result)}';
	var obj = eval('(' + str1 + ')');   
	
</script>
<!-- Download From www.exet.tk-->
</html>
