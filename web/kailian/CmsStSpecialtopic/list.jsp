<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsStSpecialtopic.TABLE_ALIAS);
	Map map = new HashMap();
		map.put("ID", "1");
		
		map.put("TOPICNAME", "1");
		/*
		map.put("KEYWORDS", "1");
		map.put("DESCRIPTION", "1");
		map.put("BGIMG1", "1");
		map.put("BGIMG2", "1");
		map.put("SUGGESTWORDS", "1");
		map.put("HEADIMG", "1");
		
		map.put("TOPICTYPE", "1");
		map.put("TEMPLATEID", "1");
		*/
		map.put("RANK", "1");
		/*
		map.put("STYLECLASS", "1");
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
		map.put("STATUS", "1");
		*/
		map.put("ADDITION", "1");
		map.put("CREATETIMELONG", "1");
		map.put("MODIFYTIMELONG", "1");
		map.put("CREATEUSER", "1");
		map.put("MODIFYUSER", "1");
	request.setAttribute("showmap", map);
 %>
<c:set var="actionBasePath" value="/kailian/CmsStSpecialtopic" />
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
        <h3><%=JSTLTagUtils.getCnname("CmsStSpecialtopic","table_name")%>列表
		&nbsp;&nbsp;
		
		<c:choose>
        	<c:when test="${param.fromiframe eq null or param.fromiframe eq ''}">
            <a class="button iframe" href="#" onclick="parent.addPanel('${ctx}/${actionBasePath}/create.do','新增专题');" title="新增">新增</a>
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
						<th id="id_000"><span onclick="newsort('<%=CmsStSpecialtopic.ALIAS_ID%>');"><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_ID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="TOPICNAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="topicname_000"><span onclick="newsort('<%=CmsStSpecialtopic.ALIAS_TOPICNAME%>');"><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_TOPICNAME)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="KEYWORDS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="keywords_000"><span onclick="newsort('<%=CmsStSpecialtopic.ALIAS_KEYWORDS%>');"><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_KEYWORDS)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="DESCRIPTION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="description_000"><span onclick="newsort('<%=CmsStSpecialtopic.ALIAS_DESCRIPTION%>');"><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_DESCRIPTION)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="BGIMG1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="bgimg1_000"><span onclick="newsort('<%=CmsStSpecialtopic.ALIAS_BGIMG1%>');"><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_BGIMG1)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="BGIMG2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="bgimg2_000"><span onclick="newsort('<%=CmsStSpecialtopic.ALIAS_BGIMG2%>');"><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_BGIMG2)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="SUGGESTWORDS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="suggestwords_000"><span onclick="newsort('<%=CmsStSpecialtopic.ALIAS_SUGGESTWORDS%>');"><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_SUGGESTWORDS)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="HEADIMG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="headimg_000"><span onclick="newsort('<%=CmsStSpecialtopic.ALIAS_HEADIMG%>');"><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_HEADIMG)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="TOPICTYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="topictype_000"><span onclick="newsort('<%=CmsStSpecialtopic.ALIAS_TOPICTYPE%>');"><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_TOPICTYPE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="TEMPLATEID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="templateid_000"><span onclick="newsort('<%=CmsStSpecialtopic.ALIAS_TEMPLATEID%>');"><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_TEMPLATEID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="RANK"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="rank_000"><span onclick="newsort('<%=CmsStSpecialtopic.ALIAS_RANK%>');"><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_RANK)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="STYLECLASS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="styleclass_000"><span onclick="newsort('<%=CmsStSpecialtopic.ALIAS_STYLECLASS%>');"><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_STYLECLASS)%></span></th>
					</c:if>
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext1_000"><span onclick="newsort('<%=CmsStSpecialtopic.ALIAS_EXT1%>');"><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_EXT1)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext2_000"><span onclick="newsort('<%=CmsStSpecialtopic.ALIAS_EXT2%>');"><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_EXT2)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext3_000"><span onclick="newsort('<%=CmsStSpecialtopic.ALIAS_EXT3%>');"><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_EXT3)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext4_000"><span onclick="newsort('<%=CmsStSpecialtopic.ALIAS_EXT4%>');"><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_EXT4)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext5_000"><span onclick="newsort('<%=CmsStSpecialtopic.ALIAS_EXT5%>');"><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_EXT5)%></span></th>
					</c:if>
				-->	
			
				
			
                
                	<c:set var="tt" value="EXT_INT1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extInt1_000"><span onclick="newsort('<%=CmsStSpecialtopic.ALIAS_EXT_INT1%>');"><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_EXT_INT1)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="EXT_INT2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extInt2_000"><span onclick="newsort('<%=CmsStSpecialtopic.ALIAS_EXT_INT2%>');"><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_EXT_INT2)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="EXT_INT3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extInt3_000"><span onclick="newsort('<%=CmsStSpecialtopic.ALIAS_EXT_INT3%>');"><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_EXT_INT3)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="EXT_INT4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extInt4_000"><span onclick="newsort('<%=CmsStSpecialtopic.ALIAS_EXT_INT4%>');"><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_EXT_INT4)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="EXT_INT5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extInt5_000"><span onclick="newsort('<%=CmsStSpecialtopic.ALIAS_EXT_INT5%>');"><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_EXT_INT5)%></span></th>
					</c:if>
			
				<!-- 
				
			
                
                	<c:set var="tt" value="STATUS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="status_000"><span onclick="newsort('<%=CmsStSpecialtopic.ALIAS_STATUS%>');"><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_STATUS)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="ADDITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="addition_000"><span onclick="newsort('<%=CmsStSpecialtopic.ALIAS_ADDITION%>');"><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_ADDITION)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="CREATETIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="createtimelong_000"><span onclick="newsort('<%=CmsStSpecialtopic.ALIAS_CREATETIMELONG%>');"><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_CREATETIMELONG)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="MODIFYTIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="modifytimelong_000"><span onclick="newsort('<%=CmsStSpecialtopic.ALIAS_MODIFYTIMELONG%>');"><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_MODIFYTIMELONG)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="CREATEUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="createuser_000"><span onclick="newsort('<%=CmsStSpecialtopic.ALIAS_CREATEUSER%>');"><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_CREATEUSER)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="MODIFYUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="modifyuser_000"><span onclick="newsort('<%=CmsStSpecialtopic.ALIAS_MODIFYUSER%>');"><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_MODIFYUSER)%></span></th>
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
				
                	<c:set var="tt" value="TOPICNAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="topicname_${v.id}" class="td123 topicnameTd">
${my:showcont('CmsStSpecialtopic','topicname',v.topicname,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="KEYWORDS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="keywords_${v.id}" class="td123 keywordsTd">
${my:showcont('CmsStSpecialtopic','keywords',v.keywords,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="DESCRIPTION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="description_${v.id}" class="td123 descriptionTd">
${my:showcont('CmsStSpecialtopic','description',v.description,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="BGIMG1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="bgimg1_${v.id}" class="td123 bgimg1Td">
${my:showcont('CmsStSpecialtopic','bgimg1',v.bgimg1,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="BGIMG2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="bgimg2_${v.id}" class="td123 bgimg2Td">
${my:showcont('CmsStSpecialtopic','bgimg2',v.bgimg2,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="SUGGESTWORDS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="suggestwords_${v.id}" class="td123 suggestwordsTd">
${my:showcont('CmsStSpecialtopic','suggestwords',v.suggestwords,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="HEADIMG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="headimg_${v.id}" class="td123 headimgTd">
${my:showcont('CmsStSpecialtopic','headimg',v.headimg,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="TOPICTYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="topictype_${v.id}" class="td123 topictypeTd">
${my:showcont('CmsStSpecialtopic','topictype',v.topictype,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="TEMPLATEID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="templateid_${v.id}" class="td123 templateidTd">
${my:showcont('CmsStSpecialtopic','templateid',v.templateid,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="RANK"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="rank_${v.id}" class="td123 rankTd">
${my:showcont('CmsStSpecialtopic','rank',v.rank,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="STYLECLASS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="styleclass_${v.id}" class="td123 styleclassTd">
${my:showcont('CmsStSpecialtopic','styleclass',v.styleclass,0 )}							</td>
					</c:if>
				
				<!-- 
                	<c:set var="tt" value="EXT1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext1_${v.id}" class="td123 ext1Td">
${my:showcont('CmsStSpecialtopic','ext1',v.ext1,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext2_${v.id}" class="td123 ext2Td">
${my:showcont('CmsStSpecialtopic','ext2',v.ext2,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext3_${v.id}" class="td123 ext3Td">
${my:showcont('CmsStSpecialtopic','ext3',v.ext3,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext4_${v.id}" class="td123 ext4Td">
${my:showcont('CmsStSpecialtopic','ext4',v.ext4,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext5_${v.id}" class="td123 ext5Td">
${my:showcont('CmsStSpecialtopic','ext5',v.ext5,0 )}							</td>
					</c:if>
				
				--> 
                	<c:set var="tt" value="EXT_INT1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extInt1_${v.id}" class="td123 extInt1Td">
${my:showcont('CmsStSpecialtopic','extInt1',v.extInt1,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="EXT_INT2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extInt2_${v.id}" class="td123 extInt2Td">
${my:showcont('CmsStSpecialtopic','extInt2',v.extInt2,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="EXT_INT3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extInt3_${v.id}" class="td123 extInt3Td">
${my:showcont('CmsStSpecialtopic','extInt3',v.extInt3,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="EXT_INT4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extInt4_${v.id}" class="td123 extInt4Td">
${my:showcont('CmsStSpecialtopic','extInt4',v.extInt4,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="EXT_INT5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extInt5_${v.id}" class="td123 extInt5Td">
${my:showcont('CmsStSpecialtopic','extInt5',v.extInt5,0 )}							</td>
					</c:if>
				
				<!-- 
                	<c:set var="tt" value="STATUS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="status_${v.id}" class="td123 statusTd">
${my:showcont('CmsStSpecialtopic','status',v.status,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="ADDITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="addition_${v.id}" class="td123 additionTd">
${my:showcont('CmsStSpecialtopic','addition',v.addition,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="CREATETIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createtimelong_${v.id}" class="td123 createtimelongTd">
${my:showcont('CmsStSpecialtopic','createtimelong',v.createtimelong,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="MODIFYTIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="modifytimelong_${v.id}" class="td123 modifytimelongTd">
${my:showcont('CmsStSpecialtopic','modifytimelong',v.modifytimelong,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="CREATEUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createuser_${v.id}" class="td123 createuserTd">
${my:showcont('CmsStSpecialtopic','createuser',v.createuser,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="MODIFYUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="modifyuser_${v.id}" class="td123 modifyuserTd">
${my:showcont('CmsStSpecialtopic','modifyuser',v.modifyuser,0 )}							</td>
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
                  <a class="iframe" href="#" onclick="parent.addPanel('${ctx}/${actionBasePath}/edit.do?id=${v.id}','修改专题');" title="修改"><img src="${ctx}/admin/resources/images/icons/hammer_screwdriver.png" alt="修改" /></a> 
${my:input('CmsStSpecialtopic','list_iframe',v.id,-1,0 )}${my:input('CmsStSpecialtopic','list_blank',v.id,-1,0 )}
		&nbsp;
		<a class="iframe" href="#" onclick="parent.addPanel('${ctx}/kailian/CmsStProductgroup/list.do?topicid=${v.id}&grouptype=-1000','小组列表');" title="小组列表" target="_blank">小组列表</a> 
           &nbsp;
           <c:if test="${v.id eq 8}">
           		<a class="iframe" href="#" onclick="parent.addPanel('${ctx}/kailian/CmsStRhppeople/list.do?pid=0','报名总人数');" title="报名总人数" target="_blank">报名总人数</a> 
           &nbsp;
           </c:if>
		<a class="" href="${ctx}/${actionBasePath}/topic.do?id=${v.id}" title="预览" target="_blank">预览</a> 
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
              <label><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_ID)%></label>
${my:input('CmsStSpecialtopic','id',param.id,0,-1 )}						
						
              </p>
			
			 <p id="topicname_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_TOPICNAME)%></label>
${my:input('CmsStSpecialtopic','topicname',param.topicname,0,-1 )}						
						
              </p>
			
			 <p id="keywords_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_KEYWORDS)%></label>
${my:input('CmsStSpecialtopic','keywords',param.keywords,0,-1 )}						
						
              </p>
			
			 <p id="description_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_DESCRIPTION)%></label>
${my:input('CmsStSpecialtopic','description',param.description,0,-1 )}						
						
              </p>
			
			 <p id="bgimg1_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_BGIMG1)%></label>
${my:input('CmsStSpecialtopic','bgimg1',param.bgimg1,0,-1 )}						
						
              </p>
			
			 <p id="bgimg2_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_BGIMG2)%></label>
${my:input('CmsStSpecialtopic','bgimg2',param.bgimg2,0,-1 )}						
						
              </p>
			
			 <p id="suggestwords_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_SUGGESTWORDS)%></label>
${my:input('CmsStSpecialtopic','suggestwords',param.suggestwords,0,-1 )}						
						
              </p>
			
			 <p id="headimg_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_HEADIMG)%></label>
${my:input('CmsStSpecialtopic','headimg',param.headimg,0,-1 )}						
						
              </p>
			
			 <p id="topictype_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_TOPICTYPE)%></label>
${my:input('CmsStSpecialtopic','topictype',param.topictype,0,-1 )}						
						
              </p>
			
			 <p id="templateid_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_TEMPLATEID)%></label>
${my:input('CmsStSpecialtopic','templateid',param.templateid,0,-1 )}						
						
              </p>
			
			 <p id="rank_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_RANK)%></label>
${my:input('CmsStSpecialtopic','rank',param.rank,0,-1 )}						
						
              </p>
			
			 <p id="styleclass_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_STYLECLASS)%></label>
${my:input('CmsStSpecialtopic','styleclass',param.styleclass,0,-1 )}						
						
              </p>
			
				<!-- 
			 <p id="ext1_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_EXT1)%></label>
${my:input('CmsStSpecialtopic','ext1',param.ext1,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="ext2_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_EXT2)%></label>
${my:input('CmsStSpecialtopic','ext2',param.ext2,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="ext3_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_EXT3)%></label>
${my:input('CmsStSpecialtopic','ext3',param.ext3,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="ext4_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_EXT4)%></label>
${my:input('CmsStSpecialtopic','ext4',param.ext4,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="ext5_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_EXT5)%></label>
${my:input('CmsStSpecialtopic','ext5',param.ext5,0,-1 )}						
						
              </p>
				-->
			
			 <p id="extInt1_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_EXT_INT1)%></label>
${my:input('CmsStSpecialtopic','extInt1',param.extInt1,0,-1 )}						
						
              </p>
			
			 <p id="extInt2_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_EXT_INT2)%></label>
${my:input('CmsStSpecialtopic','extInt2',param.extInt2,0,-1 )}						
						
              </p>
			
			 <p id="extInt3_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_EXT_INT3)%></label>
${my:input('CmsStSpecialtopic','extInt3',param.extInt3,0,-1 )}						
						
              </p>
			
			 <p id="extInt4_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_EXT_INT4)%></label>
${my:input('CmsStSpecialtopic','extInt4',param.extInt4,0,-1 )}						
						
              </p>
			
			 <p id="extInt5_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_EXT_INT5)%></label>
${my:input('CmsStSpecialtopic','extInt5',param.extInt5,0,-1 )}						
						
              </p>
			
				<!-- 
			 <p id="status_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_STATUS)%></label>
${my:input('CmsStSpecialtopic','status',param.status,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="addition_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_ADDITION)%></label>
${my:input('CmsStSpecialtopic','addition',param.addition,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="createtimelong_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_CREATETIMELONG)%></label>
${my:input('CmsStSpecialtopic','createtimelong',param.createtimelong,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="modifytimelong_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_MODIFYTIMELONG)%></label>
${my:input('CmsStSpecialtopic','modifytimelong',param.modifytimelong,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="createuser_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_CREATEUSER)%></label>
${my:input('CmsStSpecialtopic','createuser',param.createuser,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="modifyuser_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStSpecialtopic",CmsStSpecialtopic.ALIAS_MODIFYUSER)%></label>
${my:input('CmsStSpecialtopic','modifyuser',param.modifyuser,0,-1 )}						
						
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
