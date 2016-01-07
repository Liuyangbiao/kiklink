<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsArticle.TABLE_ALIAS);
	Map map = new HashMap();
		map.put("ID", "1");
		//map.put("CHANNEL_ID", "1");
		map.put("PATH", "1");
		map.put("TITILE", "1");
		//map.put("SHORT_TITLE", "1");
		//map.put("KEYWORDS", "1");
		//map.put("META_TAGS", "1");
		//map.put("DESCRIPTION", "1");
		map.put("AUTHOR", "1");
		//map.put("ORIGIN", "1");
		//map.put("CHANNEL_TYPE", "1");
		map.put("TITLE_IMG", "1");
		//map.put("CONTENT_IMG", "1");
		//map.put("CONTENT", "1");
		map.put("RANK", "1");
		map.put("DISPLAY", "1");
		//map.put("FLOWER", "1");
		//map.put("EGG", "1");
		//map.put("LINK", "1");
		//map.put("ADDITION_JSON", "1");
		map.put("STATUS", "1");
		map.put("ADDITION", "1");
		map.put("CREATETIMELONG", "1");
		map.put("MODIFYTIMELONG", "1");
		map.put("CREATEUSER", "1");
		map.put("MODIFYUSER", "1");
	request.setAttribute("showmap", map);
 %>
<c:set var="actionBasePath" value="/kailian/CmsArticle" />
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
        <h3><%=JSTLTagUtils.getCnname("CmsArticle","table_name")%>列表
		&nbsp;&nbsp;
		
		<c:choose>
        	<c:when test="${param.fromiframe eq null or param.fromiframe eq ''}">
            <a class="button iframe" href="${ctx}/${actionBasePath}/create.do?channelId=${param.channelId}" title="新增">新增</a>
		 &nbsp;&nbsp;
		 <a class="button" onclick="if(confirm('确定要删除所选数据吗？')) deleteidsrt();" title="删除所选">删除所选</a>
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
						<th id="id_000"><span onclick="newsort('<%=CmsArticle.ALIAS_ID%>');"><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_ID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="CHANNEL_ID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="channelId_000"><span onclick="newsort('<%=CmsArticle.ALIAS_CHANNEL_ID%>');"><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_CHANNEL_ID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="PATH"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="path_000"><span onclick="newsort('<%=CmsArticle.ALIAS_PATH%>');"><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_PATH)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="TITILE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="titile_000"><span onclick="newsort('<%=CmsArticle.ALIAS_TITILE%>');"><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_TITILE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="SHORT_TITLE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="shortTitle_000"><span onclick="newsort('<%=CmsArticle.ALIAS_SHORT_TITLE%>');"><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_SHORT_TITLE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="KEYWORDS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="keywords_000"><span onclick="newsort('<%=CmsArticle.ALIAS_KEYWORDS%>');"><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_KEYWORDS)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="META_TAGS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="metaTags_000"><span onclick="newsort('<%=CmsArticle.ALIAS_META_TAGS%>');"><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_META_TAGS)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="DESCRIPTION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="description_000"><span onclick="newsort('<%=CmsArticle.ALIAS_DESCRIPTION%>');"><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_DESCRIPTION)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="AUTHOR"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="author_000"><span onclick="newsort('<%=CmsArticle.ALIAS_AUTHOR%>');"><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_AUTHOR)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="ORIGIN"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="origin_000"><span onclick="newsort('<%=CmsArticle.ALIAS_ORIGIN%>');"><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_ORIGIN)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="CHANNEL_TYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="channelType_000"><span onclick="newsort('<%=CmsArticle.ALIAS_CHANNEL_TYPE%>');"><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_CHANNEL_TYPE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="TITLE_IMG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="titleImg_000"><span onclick="newsort('<%=CmsArticle.ALIAS_TITLE_IMG%>');"><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_TITLE_IMG)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="CONTENT_IMG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="contentImg_000"><span onclick="newsort('<%=CmsArticle.ALIAS_CONTENT_IMG%>');"><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_CONTENT_IMG)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="CONTENT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="content_000"><span onclick="newsort('<%=CmsArticle.ALIAS_CONTENT%>');"><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_CONTENT)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="RANK"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="rank_000"><span onclick="newsort('<%=CmsArticle.ALIAS_RANK%>');"><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_RANK)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="DISPLAY"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="display_000"><span onclick="newsort('<%=CmsArticle.ALIAS_DISPLAY%>');"><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_DISPLAY)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="FLOWER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="flower_000"><span onclick="newsort('<%=CmsArticle.ALIAS_FLOWER%>');"><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_FLOWER)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="EGG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="egg_000"><span onclick="newsort('<%=CmsArticle.ALIAS_EGG%>');"><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_EGG)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="LINK"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="link_000"><span onclick="newsort('<%=CmsArticle.ALIAS_LINK%>');"><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_LINK)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="ADDITION_JSON"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="additionJson_000"><span onclick="newsort('<%=CmsArticle.ALIAS_ADDITION_JSON%>');"><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_ADDITION_JSON)%></span></th>
					</c:if>
			
				<!-- 
				
			
                
                	<c:set var="tt" value="STATUS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="status_000"><span onclick="newsort('<%=CmsArticle.ALIAS_STATUS%>');"><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_STATUS)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="ADDITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="addition_000"><span onclick="newsort('<%=CmsArticle.ALIAS_ADDITION%>');"><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_ADDITION)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="CREATETIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="createtimelong_000"><span onclick="newsort('<%=CmsArticle.ALIAS_CREATETIMELONG%>');"><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_CREATETIMELONG)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="MODIFYTIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="modifytimelong_000"><span onclick="newsort('<%=CmsArticle.ALIAS_MODIFYTIMELONG%>');"><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_MODIFYTIMELONG)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="CREATEUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="createuser_000"><span onclick="newsort('<%=CmsArticle.ALIAS_CREATEUSER%>');"><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_CREATEUSER)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="MODIFYUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="modifyuser_000"><span onclick="newsort('<%=CmsArticle.ALIAS_MODIFYUSER%>');"><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_MODIFYUSER)%></span></th>
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
				
                	<c:set var="tt" value="CHANNEL_ID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="channelId_${v.id}" class="td123 channelIdTd">
${my:showcont('CmsArticle','channelId',v.channelId,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="PATH"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="path_${v.id}" class="td123 pathTd">
${my:showcont('CmsArticle','path',v.path,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="TITILE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="titile_${v.id}" class="td123 titileTd">
${my:showcont('CmsArticle','titile',v.titile,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="SHORT_TITLE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="shortTitle_${v.id}" class="td123 shortTitleTd">
${my:showcont('CmsArticle','shortTitle',v.shortTitle,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="KEYWORDS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="keywords_${v.id}" class="td123 keywordsTd">
${my:showcont('CmsArticle','keywords',v.keywords,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="META_TAGS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="metaTags_${v.id}" class="td123 metaTagsTd">
${my:showcont('CmsArticle','metaTags',v.metaTags,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="DESCRIPTION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="description_${v.id}" class="td123 descriptionTd">
${my:showcont('CmsArticle','description',v.description,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="AUTHOR"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="author_${v.id}" class="td123 authorTd">
${my:showcont('CmsArticle','author',v.author,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="ORIGIN"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="origin_${v.id}" class="td123 originTd">
${my:showcont('CmsArticle','origin',v.origin,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="CHANNEL_TYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="channelType_${v.id}" class="td123 channelTypeTd">
${my:showcont('CmsArticle','channelType',v.channelType,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="TITLE_IMG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="titleImg_${v.id}" class="td123 titleImgTd">
${my:showcont('CmsArticle','titleImg',v.titleImg,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="CONTENT_IMG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="contentImg_${v.id}" class="td123 contentImgTd">
${my:showcont('CmsArticle','contentImg',v.contentImg,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="CONTENT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="content_${v.id}" class="td123 contentTd">
${my:showcont('CmsArticle','content',v.content,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="RANK"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="rank_${v.id}" class="td123 rankTd">
${my:showcont('CmsArticle','rank',v.rank,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="DISPLAY"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="display_${v.id}" class="td123 displayTd">
${my:showcont('CmsArticle','display',v.display,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="FLOWER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="flower_${v.id}" class="td123 flowerTd">
${my:showcont('CmsArticle','flower',v.flower,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="EGG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="egg_${v.id}" class="td123 eggTd">
${my:showcont('CmsArticle','egg',v.egg,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="LINK"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="link_${v.id}" class="td123 linkTd">
${my:showcont('CmsArticle','link',v.link,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="ADDITION_JSON"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="additionJson_${v.id}" class="td123 additionJsonTd">
${my:showcont('CmsArticle','additionJson',v.additionJson,0 )}							</td>
					</c:if>
				
				<!-- 
                	<c:set var="tt" value="STATUS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="status_${v.id}" class="td123 statusTd">
${my:showcont('CmsArticle','status',v.status,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="ADDITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="addition_${v.id}" class="td123 additionTd">
${my:showcont('CmsArticle','addition',v.addition,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="CREATETIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createtimelong_${v.id}" class="td123 createtimelongTd">
${my:showcont('CmsArticle','createtimelong',v.createtimelong,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="MODIFYTIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="modifytimelong_${v.id}" class="td123 modifytimelongTd">
${my:showcont('CmsArticle','modifytimelong',v.modifytimelong,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="CREATEUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createuser_${v.id}" class="td123 createuserTd">
${my:showcont('CmsArticle','createuser',v.createuser,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="MODIFYUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="modifyuser_${v.id}" class="td123 modifyuserTd">
${my:showcont('CmsArticle','modifyuser',v.modifyuser,0 )}							</td>
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
${my:input('CmsArticle','list_iframe',v.id,-1,0 )}${my:input('CmsArticle','list_blank',v.id,-1,0 )}
           
            </c:when>
            <c:otherwise>
            	<a class="button" href="#" onclick="parent.didiframe(obj[${vs.index}],'${param.params}');">选取</a>
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
              <label><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_ID)%></label>
${my:input('CmsArticle','id',param.id,0,-1 )}						
						
              </p>
			
			 <p id="channelId_formp">
              <label><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_CHANNEL_ID)%></label>
${my:input('CmsArticle','channelId',param.channelId,0,-1 )}						
						
              </p>
			
			 <p id="path_formp">
              <label><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_PATH)%></label>
${my:input('CmsArticle','path',param.path,0,-1 )}						
						
              </p>
			
			 <p id="titile_formp">
              <label><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_TITILE)%></label>
${my:input('CmsArticle','titile',param.titile,0,-1 )}						
						
              </p>
			
			 <p id="shortTitle_formp">
              <label><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_SHORT_TITLE)%></label>
${my:input('CmsArticle','shortTitle',param.shortTitle,0,-1 )}						
						
              </p>
			
			 <p id="keywords_formp">
              <label><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_KEYWORDS)%></label>
${my:input('CmsArticle','keywords',param.keywords,0,-1 )}						
						
              </p>
			
			 <p id="metaTags_formp">
              <label><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_META_TAGS)%></label>
${my:input('CmsArticle','metaTags',param.metaTags,0,-1 )}						
						
              </p>
			
			 <p id="description_formp">
              <label><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_DESCRIPTION)%></label>
${my:input('CmsArticle','description',param.description,0,-1 )}						
						
              </p>
			
			 <p id="author_formp">
              <label><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_AUTHOR)%></label>
${my:input('CmsArticle','author',param.author,0,-1 )}						
						
              </p>
			
			 <p id="origin_formp">
              <label><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_ORIGIN)%></label>
${my:input('CmsArticle','origin',param.origin,0,-1 )}						
						
              </p>
			
			 <p id="channelType_formp">
              <label><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_CHANNEL_TYPE)%></label>
${my:input('CmsArticle','channelType',param.channelType,0,-1 )}						
						
              </p>
			
			 <p id="titleImg_formp">
              <label><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_TITLE_IMG)%></label>
${my:input('CmsArticle','titleImg',param.titleImg,0,-1 )}						
						
              </p>
			
			 <p id="contentImg_formp">
              <label><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_CONTENT_IMG)%></label>
${my:input('CmsArticle','contentImg',param.contentImg,0,-1 )}						
						
              </p>
			
			 <p id="content_formp">
              <label><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_CONTENT)%></label>
${my:input('CmsArticle','content',param.content,0,-1 )}						
						
              </p>
			
			 <p id="rank_formp">
              <label><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_RANK)%></label>
${my:input('CmsArticle','rank',param.rank,0,-1 )}						
						
              </p>
			
			 <p id="display_formp">
              <label><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_DISPLAY)%></label>
${my:input('CmsArticle','display',param.display,0,-1 )}						
						
              </p>
			
			 <p id="flower_formp">
              <label><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_FLOWER)%></label>
${my:input('CmsArticle','flower',param.flower,0,-1 )}						
						
              </p>
			
			 <p id="egg_formp">
              <label><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_EGG)%></label>
${my:input('CmsArticle','egg',param.egg,0,-1 )}						
						
              </p>
			
			 <p id="link_formp">
              <label><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_LINK)%></label>
${my:input('CmsArticle','link',param.link,0,-1 )}						
						
              </p>
			
			 <p id="additionJson_formp">
              <label><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_ADDITION_JSON)%></label>
${my:input('CmsArticle','additionJson',param.additionJson,0,-1 )}						
						
              </p>
			
				<!-- 
			 <p id="status_formp">
              <label><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_STATUS)%></label>
${my:input('CmsArticle','status',param.status,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="addition_formp">
              <label><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_ADDITION)%></label>
${my:input('CmsArticle','addition',param.addition,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="createtimelong_formp">
              <label><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_CREATETIMELONG)%></label>
${my:input('CmsArticle','createtimelong',param.createtimelong,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="modifytimelong_formp">
              <label><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_MODIFYTIMELONG)%></label>
${my:input('CmsArticle','modifytimelong',param.modifytimelong,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="createuser_formp">
              <label><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_CREATEUSER)%></label>
${my:input('CmsArticle','createuser',param.createuser,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="modifyuser_formp">
              <label><%=JSTLTagUtils.getCnname("CmsArticle",CmsArticle.ALIAS_MODIFYUSER)%></label>
${my:input('CmsArticle','modifyuser',param.modifyuser,0,-1 )}						
						
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
	
	var str1 = '${my:resultlist(pg.result)}';
	var obj = eval('(' + str1 + ')');   
	
</script>
<!-- Download From www.exet.tk-->
</html>
