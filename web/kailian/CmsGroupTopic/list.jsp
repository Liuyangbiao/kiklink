<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsGroupTopic.TABLE_ALIAS);
	Map map = new HashMap();
		map.put("ID", "1");
		map.put("TITLE", "1");
		//map.put("TYPE", "1");
		//map.put("CONTENT", "1");
		//map.put("PHOTO", "1");
		map.put("REPLY_COUNT", "1");
		map.put("SUGGEST_COUNT", "1");
		map.put("FLOWER_COUNT", "1");
		map.put("EGG_COUNT", "1");
		/*
		map.put("USERID", "1");
		map.put("GROUPID", "1");
		map.put("STATUS", "1");
		map.put("ADDITION", "1");
		map.put("CREATETIMELONG", "1");
		map.put("MODIFYTIMELONG", "1");
		map.put("CREATEUSER", "1");
		map.put("MODIFYUSER", "1");
		*/
		map.put("EXT1", "1");
		map.put("EXT2", "1");
		/*
		map.put("EXT3", "1");
		map.put("EXT4", "1");
		map.put("EXT5", "1");
		map.put("EXT_INT1", "1");
		map.put("EXT_INT2", "1");
		map.put("EXT_INT3", "1");
		*/
		map.put("EXT_INT4", "1");
		/*
		map.put("EXT_INT5", "1");
		*/
	request.setAttribute("showmap", map);
 %>
<c:set var="actionBasePath" value="/kailian/CmsGroupTopic" />
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
        <h3><%=JSTLTagUtils.getCnname("CmsGroupTopic","table_name")%>列表
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
						<th id="id_000"><span onClick="newsort('<%=CmsGroupTopic.ALIAS_ID%>');"><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_ID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="TITLE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="title_000"><span onClick="newsort('<%=CmsGroupTopic.ALIAS_TITLE%>');"><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_TITLE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="TYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="type_000"><span onClick="newsort('<%=CmsGroupTopic.ALIAS_TYPE%>');"><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_TYPE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="CONTENT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="content_000"><span onClick="newsort('<%=CmsGroupTopic.ALIAS_CONTENT%>');"><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_CONTENT)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="PHOTO"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="photo_000"><span onClick="newsort('<%=CmsGroupTopic.ALIAS_PHOTO%>');"><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_PHOTO)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="REPLY_COUNT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="replyCount_000"><span onClick="newsort('<%=CmsGroupTopic.ALIAS_REPLY_COUNT%>');"><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_REPLY_COUNT)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="SUGGEST_COUNT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="suggestCount_000"><span onClick="newsort('<%=CmsGroupTopic.ALIAS_SUGGEST_COUNT%>');"><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_SUGGEST_COUNT)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="FLOWER_COUNT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="flowerCount_000"><span onClick="newsort('<%=CmsGroupTopic.ALIAS_FLOWER_COUNT%>');"><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_FLOWER_COUNT)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="EGG_COUNT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="eggCount_000"><span onClick="newsort('<%=CmsGroupTopic.ALIAS_EGG_COUNT%>');"><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_EGG_COUNT)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="USERID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="userid_000"><span onClick="newsort('<%=CmsGroupTopic.ALIAS_USERID%>');"><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_USERID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="GROUPID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="groupid_000"><span onClick="newsort('<%=CmsGroupTopic.ALIAS_GROUPID%>');"><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_GROUPID)%></span></th>
					</c:if>
			
				<!-- 
				
			
                
                	<c:set var="tt" value="STATUS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="status_000"><span onclick="newsort('<%=CmsGroupTopic.ALIAS_STATUS%>');"><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_STATUS)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="ADDITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="addition_000"><span onclick="newsort('<%=CmsGroupTopic.ALIAS_ADDITION%>');"><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_ADDITION)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="CREATETIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="createtimelong_000"><span onclick="newsort('<%=CmsGroupTopic.ALIAS_CREATETIMELONG%>');"><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_CREATETIMELONG)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="MODIFYTIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="modifytimelong_000"><span onclick="newsort('<%=CmsGroupTopic.ALIAS_MODIFYTIMELONG%>');"><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_MODIFYTIMELONG)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="CREATEUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="createuser_000"><span onclick="newsort('<%=CmsGroupTopic.ALIAS_CREATEUSER%>');"><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_CREATEUSER)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="MODIFYUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="modifyuser_000"><span onclick="newsort('<%=CmsGroupTopic.ALIAS_MODIFYUSER%>');"><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_MODIFYUSER)%></span></th>
					</c:if>
				-->	
			
				
				
			
                
                	<c:set var="tt" value="EXT1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext1_000"><span onclick="newsort('<%=CmsGroupTopic.ALIAS_EXT1%>');"><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_EXT1)%></span></th>
					</c:if>
				
                
				
			
                
                	<c:set var="tt" value="EXT2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext2_000"><span onclick="newsort('<%=CmsGroupTopic.ALIAS_EXT2%>');"><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_EXT2)%></span></th>
					</c:if>
				
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext3_000"><span onclick="newsort('<%=CmsGroupTopic.ALIAS_EXT3%>');"><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_EXT3)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext4_000"><span onclick="newsort('<%=CmsGroupTopic.ALIAS_EXT4%>');"><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_EXT4)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext5_000"><span onclick="newsort('<%=CmsGroupTopic.ALIAS_EXT5%>');"><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_EXT5)%></span></th>
					</c:if>
				-->	
			
				
			
                
                	<c:set var="tt" value="EXT_INT1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extInt1_000"><span onClick="newsort('<%=CmsGroupTopic.ALIAS_EXT_INT1%>');"><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_EXT_INT1)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="EXT_INT2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extInt2_000"><span onClick="newsort('<%=CmsGroupTopic.ALIAS_EXT_INT2%>');"><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_EXT_INT2)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="EXT_INT3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extInt3_000"><span onClick="newsort('<%=CmsGroupTopic.ALIAS_EXT_INT3%>');"><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_EXT_INT3)%></span></th>
					</c:if>
			
				
			
                
						<th id="extInt4_000"><span onClick="newsort('extInt4');">系统推荐指数</span></th>
			
				
			
                
                	<c:set var="tt" value="EXT_INT5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extInt5_000"><span onClick="newsort('<%=CmsGroupTopic.ALIAS_EXT_INT5%>');"><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_EXT_INT5)%></span></th>
					</c:if>
			
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
				
                	<c:set var="tt" value="TITLE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="title_${v.id}" class="td123 titleTd">
${my:showcont('CmsGroupTopic','title',v.title,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="TYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="type_${v.id}" class="td123 typeTd">
${my:showcont('CmsGroupTopic','type',v.type,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="CONTENT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="content_${v.id}" class="td123 contentTd">
${my:showcont('CmsGroupTopic','content',v.content,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="PHOTO"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="photo_${v.id}" class="td123 photoTd">
${my:showcont('CmsGroupTopic','photo',v.photo,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="REPLY_COUNT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="replyCount_${v.id}" class="td123 replyCountTd">
${my:showcont('CmsGroupTopic','replyCount',v.replyCount,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="SUGGEST_COUNT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="suggestCount_${v.id}" class="td123 suggestCountTd">
${my:showcont('CmsGroupTopic','suggestCount',v.suggestCount,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="FLOWER_COUNT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="flowerCount_${v.id}" class="td123 flowerCountTd">
${my:showcont('CmsGroupTopic','flowerCount',v.flowerCount,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="EGG_COUNT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="eggCount_${v.id}" class="td123 eggCountTd">
${my:showcont('CmsGroupTopic','eggCount',v.eggCount,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="USERID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="userid_${v.id}" class="td123 useridTd">
${my:showcont('CmsGroupTopic','userid',v.userid,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="GROUPID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="groupid_${v.id}" class="td123 groupidTd">
${my:showcont('CmsGroupTopic','groupid',v.groupid,0 )}							</td>
					</c:if>
				
				<!-- 
                	<c:set var="tt" value="STATUS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="status_${v.id}" class="td123 statusTd">
${my:showcont('CmsGroupTopic','status',v.status,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="ADDITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="addition_${v.id}" class="td123 additionTd">
${my:showcont('CmsGroupTopic','addition',v.addition,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="CREATETIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createtimelong_${v.id}" class="td123 createtimelongTd">
${my:showcont('CmsGroupTopic','createtimelong',v.createtimelong,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="MODIFYTIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="modifytimelong_${v.id}" class="td123 modifytimelongTd">
${my:showcont('CmsGroupTopic','modifytimelong',v.modifytimelong,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="CREATEUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createuser_${v.id}" class="td123 createuserTd">
${my:showcont('CmsGroupTopic','createuser',v.createuser,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="MODIFYUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="modifyuser_${v.id}" class="td123 modifyuserTd">
${my:showcont('CmsGroupTopic','modifyuser',v.modifyuser,0 )}							</td>
					</c:if>
				
				--> 
				
                	<c:set var="tt" value="EXT1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext1_${v.id}" class="td123 ext1Td">
${my:showcont('CmsGroupTopic','ext1',v.ext1,0 )}							</td>
					</c:if>
				
		
                	<c:set var="tt" value="EXT2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext2_${v.id}" class="td123 ext2Td">
${my:showcont('CmsGroupTopic','ext2',v.ext2,0 )}							</td>
					</c:if>
				
				
				<!-- 
                	<c:set var="tt" value="EXT3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext3_${v.id}" class="td123 ext3Td">
${my:showcont('CmsGroupTopic','ext3',v.ext3,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext4_${v.id}" class="td123 ext4Td">
${my:showcont('CmsGroupTopic','ext4',v.ext4,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext5_${v.id}" class="td123 ext5Td">
${my:showcont('CmsGroupTopic','ext5',v.ext5,0 )}							</td>
					</c:if>
				
				--> 
                	<c:set var="tt" value="EXT_INT1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extInt1_${v.id}" class="td123 extInt1Td">
${my:showcont('CmsGroupTopic','extInt1',v.extInt1,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="EXT_INT2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extInt2_${v.id}" class="td123 extInt2Td">
${my:showcont('CmsGroupTopic','extInt2',v.extInt2,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="EXT_INT3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extInt3_${v.id}" class="td123 extInt3Td">
${my:showcont('CmsGroupTopic','extInt3',v.extInt3,0 )}							</td>
					</c:if>
				
							<td id="extInt4_${v.id}" class="td123 extInt4Td">
${my:showcont('CmsGroupTopic','extInt4',v.extInt4,0 )}							</td>
				
                	<c:set var="tt" value="EXT_INT5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extInt5_${v.id}" class="td123 extInt5Td">
${my:showcont('CmsGroupTopic','extInt5',v.extInt5,0 )}							</td>
					</c:if>
				
                
                <td id="operate_${v.id}" class="operate111">
                  <!-- Icons-->
             	<c:choose>
        	<c:when test="${param.fromiframe eq null or param.fromiframe eq ''}">
        		<!--
            	<a class="xinzeng111" href="${ctx}/${actionBasePath}/create.do" title="新增"><img src="${ctx}/admin/resources/images/icons/pencil.png" alt="新增" /></a>
                 -->
                  <a href="#" onClick="if(confirm('您确定要删除这条数据吗？')) window.location.href='${ctx}/${actionBasePath}/delete.do?items=${v.id}';" title="删除"><img src="${ctx}/admin/resources/images/icons/cross.png" alt="删除" /></a>
                  <a class="iframe" href="${ctx}/${actionBasePath}/edit.do?id=${v.id}" title="修改"><img src="${ctx}/admin/resources/images/icons/hammer_screwdriver.png" alt="修改" /></a> 
${my:input('CmsGroupTopic','list_iframe',v.id,-1,0 )}${my:input('CmsGroupTopic','list_blank',v.id,-1,0 )}
           
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
              <label><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_ID)%></label>
${my:input('CmsGroupTopic','id',param.id,0,-1 )}						
						
              </p>
			
			 <p id="title_formp">
              <label><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_TITLE)%></label>
${my:input('CmsGroupTopic','title',param.title,0,-1 )}						
						
              </p>
			
			 <p id="type_formp">
              <label><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_TYPE)%></label>
${my:input('CmsGroupTopic','type',param.type,0,-1 )}						
						
              </p>
			
			 <p id="content_formp">
              <label><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_CONTENT)%></label>
${my:input('CmsGroupTopic','content',param.content,0,-1 )}						
						
              </p>
			
			 <p id="photo_formp">
              <label><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_PHOTO)%></label>
${my:input('CmsGroupTopic','photo',param.photo,0,-1 )}						
						
              </p>
			
			 <p id="replyCount_formp">
              <label><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_REPLY_COUNT)%></label>
${my:input('CmsGroupTopic','replyCount',param.replyCount,0,-1 )}						
						
              </p>
			
			 <p id="suggestCount_formp">
              <label><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_SUGGEST_COUNT)%></label>
${my:input('CmsGroupTopic','suggestCount',param.suggestCount,0,-1 )}						
						
              </p>
			
			 <p id="flowerCount_formp">
              <label><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_FLOWER_COUNT)%></label>
${my:input('CmsGroupTopic','flowerCount',param.flowerCount,0,-1 )}						
						
              </p>
			
			 <p id="eggCount_formp">
              <label><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_EGG_COUNT)%></label>
${my:input('CmsGroupTopic','eggCount',param.eggCount,0,-1 )}						
						
              </p>
			
			 <p id="userid_formp">
              <label><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_USERID)%></label>
${my:input('CmsGroupTopic','userid',param.userid,0,-1 )}						
						
              </p>
			
			 <p id="groupid_formp">
              <label><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_GROUPID)%></label>
${my:input('CmsGroupTopic','groupid',param.groupid,0,-1 )}						
						
              </p>
			
				<!-- 
			 <p id="status_formp">
              <label><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_STATUS)%></label>
${my:input('CmsGroupTopic','status',param.status,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="addition_formp">
              <label><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_ADDITION)%></label>
${my:input('CmsGroupTopic','addition',param.addition,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="createtimelong_formp">
              <label><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_CREATETIMELONG)%></label>
${my:input('CmsGroupTopic','createtimelong',param.createtimelong,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="modifytimelong_formp">
              <label><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_MODIFYTIMELONG)%></label>
${my:input('CmsGroupTopic','modifytimelong',param.modifytimelong,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="createuser_formp">
              <label><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_CREATEUSER)%></label>
${my:input('CmsGroupTopic','createuser',param.createuser,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="modifyuser_formp">
              <label><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_MODIFYUSER)%></label>
${my:input('CmsGroupTopic','modifyuser',param.modifyuser,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="ext1_formp">
              <label><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_EXT1)%></label>
${my:input('CmsGroupTopic','ext1',param.ext1,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="ext2_formp">
              <label><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_EXT2)%></label>
${my:input('CmsGroupTopic','ext2',param.ext2,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="ext3_formp">
              <label><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_EXT3)%></label>
${my:input('CmsGroupTopic','ext3',param.ext3,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="ext4_formp">
              <label><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_EXT4)%></label>
${my:input('CmsGroupTopic','ext4',param.ext4,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="ext5_formp">
              <label><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_EXT5)%></label>
${my:input('CmsGroupTopic','ext5',param.ext5,0,-1 )}						
						
              </p>
				-->
			
			 <p id="extInt1_formp">
              <label><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_EXT_INT1)%></label>
${my:input('CmsGroupTopic','extInt1',param.extInt1,0,-1 )}						
						
              </p>
			
			 <p id="extInt2_formp">
              <label><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_EXT_INT2)%></label>
${my:input('CmsGroupTopic','extInt2',param.extInt2,0,-1 )}						
						
              </p>
			
			 <p id="extInt3_formp">
              <label><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_EXT_INT3)%></label>
${my:input('CmsGroupTopic','extInt3',param.extInt3,0,-1 )}						
						
              </p>
			
			 <p id="extInt4_formp">
              <label><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_EXT_INT4)%></label>
${my:input('CmsGroupTopic','extInt4',param.extInt4,0,-1 )}						
						
              </p>
			
			 <p id="extInt5_formp">
              <label><%=JSTLTagUtils.getCnname("CmsGroupTopic",CmsGroupTopic.ALIAS_EXT_INT5)%></label>
${my:input('CmsGroupTopic','extInt5',param.extInt5,0,-1 )}						
						
              </p>
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
