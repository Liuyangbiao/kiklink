<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsStProductgroup.TABLE_ALIAS);
	Map map = new HashMap();
		map.put("ID", "1");
		map.put("GROUPNAME", "1");
		/*
		map.put("DESCRIPTION", "1");
		map.put("BGIMG1", "1");
		map.put("BGIMGLEFT", "1");
		map.put("BGIMGRIGHT", "1");
		map.put("HEADHEIGHT", "1");
		map.put("GROUPTYPE", "1");
		map.put("RANK", "1");
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
		*/
		map.put("RANK", "1");
		map.put("STATUS", "1");
		map.put("ADDITION", "1");
		map.put("CREATETIMELONG", "1");
		map.put("MODIFYTIMELONG", "1");
		map.put("CREATEUSER", "1");
		map.put("MODIFYUSER", "1");
		
	request.setAttribute("showmap", map);
 %>
<c:set var="actionBasePath" value="/kailian/CmsStProductgroup" />
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
        <h3>专题“${topic.topicname}”的<%=JSTLTagUtils.getCnname("CmsStProductgroup","table_name")%>列表
		&nbsp;&nbsp;
		
		<c:choose>
        	<c:when test="${param.fromiframe eq null or param.fromiframe eq ''}">
            <a class="button iframe" href="#" onclick="parent.addPanel('${ctx}/${actionBasePath}/create.do?topicid=${param.topicid}&grouptype=${param.grouptype}','新增产品组');" title="新增">新增</a>
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
						<th id="id_000"><span onclick="newsort('<%=CmsStProductgroup.ALIAS_ID%>');"><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_ID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="GROUPNAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="groupname_000"><span onclick="newsort('<%=CmsStProductgroup.ALIAS_GROUPNAME%>');"><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_GROUPNAME)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="DESCRIPTION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="description_000"><span onclick="newsort('<%=CmsStProductgroup.ALIAS_DESCRIPTION%>');"><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_DESCRIPTION)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="BGIMG1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="bgimg1_000"><span onclick="newsort('<%=CmsStProductgroup.ALIAS_BGIMG1%>');"><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_BGIMG1)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="BGIMGLEFT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="bgimgleft_000"><span onclick="newsort('<%=CmsStProductgroup.ALIAS_BGIMGLEFT%>');"><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_BGIMGLEFT)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="BGIMGRIGHT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="bgimgright_000"><span onclick="newsort('<%=CmsStProductgroup.ALIAS_BGIMGRIGHT%>');"><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_BGIMGRIGHT)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="HEADHEIGHT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="headheight_000"><span onclick="newsort('<%=CmsStProductgroup.ALIAS_HEADHEIGHT%>');"><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_HEADHEIGHT)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="GROUPTYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="grouptype_000"><span onclick="newsort('<%=CmsStProductgroup.ALIAS_GROUPTYPE%>');"><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_GROUPTYPE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="RANK"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="rank_000"><span onclick="newsort('<%=CmsStProductgroup.ALIAS_RANK%>');"><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_RANK)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="STYLECLASS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="styleclass_000"><span onclick="newsort('<%=CmsStProductgroup.ALIAS_STYLECLASS%>');"><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_STYLECLASS)%></span></th>
					</c:if>
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext1_000"><span onclick="newsort('<%=CmsStProductgroup.ALIAS_EXT1%>');"><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_EXT1)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext2_000"><span onclick="newsort('<%=CmsStProductgroup.ALIAS_EXT2%>');"><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_EXT2)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext3_000"><span onclick="newsort('<%=CmsStProductgroup.ALIAS_EXT3%>');"><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_EXT3)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext4_000"><span onclick="newsort('<%=CmsStProductgroup.ALIAS_EXT4%>');"><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_EXT4)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext5_000"><span onclick="newsort('<%=CmsStProductgroup.ALIAS_EXT5%>');"><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_EXT5)%></span></th>
					</c:if>
				-->	
			
				
			
                
                	<c:set var="tt" value="EXT_INT1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extInt1_000"><span onclick="newsort('<%=CmsStProductgroup.ALIAS_EXT_INT1%>');"><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_EXT_INT1)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="EXT_INT2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extInt2_000"><span onclick="newsort('<%=CmsStProductgroup.ALIAS_EXT_INT2%>');"><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_EXT_INT2)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="EXT_INT3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extInt3_000"><span onclick="newsort('<%=CmsStProductgroup.ALIAS_EXT_INT3%>');"><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_EXT_INT3)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="EXT_INT4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extInt4_000"><span onclick="newsort('<%=CmsStProductgroup.ALIAS_EXT_INT4%>');"><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_EXT_INT4)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="EXT_INT5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extInt5_000"><span onclick="newsort('<%=CmsStProductgroup.ALIAS_EXT_INT5%>');"><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_EXT_INT5)%></span></th>
					</c:if>
			
				<!-- 
				
			
                
                	<c:set var="tt" value="STATUS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="status_000"><span onclick="newsort('<%=CmsStProductgroup.ALIAS_STATUS%>');"><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_STATUS)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="ADDITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="addition_000"><span onclick="newsort('<%=CmsStProductgroup.ALIAS_ADDITION%>');"><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_ADDITION)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="CREATETIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="createtimelong_000"><span onclick="newsort('<%=CmsStProductgroup.ALIAS_CREATETIMELONG%>');"><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_CREATETIMELONG)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="MODIFYTIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="modifytimelong_000"><span onclick="newsort('<%=CmsStProductgroup.ALIAS_MODIFYTIMELONG%>');"><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_MODIFYTIMELONG)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="CREATEUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="createuser_000"><span onclick="newsort('<%=CmsStProductgroup.ALIAS_CREATEUSER%>');"><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_CREATEUSER)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="MODIFYUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="modifyuser_000"><span onclick="newsort('<%=CmsStProductgroup.ALIAS_MODIFYUSER%>');"><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_MODIFYUSER)%></span></th>
					</c:if>
				-->	
			
				
			
                
                	<c:set var="tt" value="TOPICID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="topicid_000"><span onclick="newsort('<%=CmsStProductgroup.ALIAS_TOPICID%>');"><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_TOPICID)%></span></th>
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
				
                	<c:set var="tt" value="GROUPNAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="groupname_${v.id}" class="td123 groupnameTd">
${my:showcont('CmsStProductgroup','groupname',v.groupname,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="DESCRIPTION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="description_${v.id}" class="td123 descriptionTd">
${my:showcont('CmsStProductgroup','description',v.description,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="BGIMG1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="bgimg1_${v.id}" class="td123 bgimg1Td">
${my:showcont('CmsStProductgroup','bgimg1',v.bgimg1,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="BGIMGLEFT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="bgimgleft_${v.id}" class="td123 bgimgleftTd">
${my:showcont('CmsStProductgroup','bgimgleft',v.bgimgleft,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="BGIMGRIGHT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="bgimgright_${v.id}" class="td123 bgimgrightTd">
${my:showcont('CmsStProductgroup','bgimgright',v.bgimgright,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="HEADHEIGHT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="headheight_${v.id}" class="td123 headheightTd">
${my:showcont('CmsStProductgroup','headheight',v.headheight,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="GROUPTYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="grouptype_${v.id}" class="td123 grouptypeTd">
${my:showcont('CmsStProductgroup','grouptype',v.grouptype,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="RANK"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="rank_${v.id}" class="td123 rankTd">
${my:showcont('CmsStProductgroup','rank',v.rank,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="STYLECLASS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="styleclass_${v.id}" class="td123 styleclassTd">
${my:showcont('CmsStProductgroup','styleclass',v.styleclass,0 )}							</td>
					</c:if>
				
				<!-- 
                	<c:set var="tt" value="EXT1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext1_${v.id}" class="td123 ext1Td">
${my:showcont('CmsStProductgroup','ext1',v.ext1,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext2_${v.id}" class="td123 ext2Td">
${my:showcont('CmsStProductgroup','ext2',v.ext2,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext3_${v.id}" class="td123 ext3Td">
${my:showcont('CmsStProductgroup','ext3',v.ext3,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext4_${v.id}" class="td123 ext4Td">
${my:showcont('CmsStProductgroup','ext4',v.ext4,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext5_${v.id}" class="td123 ext5Td">
${my:showcont('CmsStProductgroup','ext5',v.ext5,0 )}							</td>
					</c:if>
				
				--> 
                	<c:set var="tt" value="EXT_INT1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extInt1_${v.id}" class="td123 extInt1Td">
${my:showcont('CmsStProductgroup','extInt1',v.extInt1,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="EXT_INT2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extInt2_${v.id}" class="td123 extInt2Td">
${my:showcont('CmsStProductgroup','extInt2',v.extInt2,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="EXT_INT3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extInt3_${v.id}" class="td123 extInt3Td">
${my:showcont('CmsStProductgroup','extInt3',v.extInt3,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="EXT_INT4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extInt4_${v.id}" class="td123 extInt4Td">
${my:showcont('CmsStProductgroup','extInt4',v.extInt4,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="EXT_INT5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extInt5_${v.id}" class="td123 extInt5Td">
${my:showcont('CmsStProductgroup','extInt5',v.extInt5,0 )}							</td>
					</c:if>
				
				<!-- 
                	<c:set var="tt" value="STATUS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="status_${v.id}" class="td123 statusTd">
${my:showcont('CmsStProductgroup','status',v.status,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="ADDITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="addition_${v.id}" class="td123 additionTd">
${my:showcont('CmsStProductgroup','addition',v.addition,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="CREATETIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createtimelong_${v.id}" class="td123 createtimelongTd">
${my:showcont('CmsStProductgroup','createtimelong',v.createtimelong,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="MODIFYTIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="modifytimelong_${v.id}" class="td123 modifytimelongTd">
${my:showcont('CmsStProductgroup','modifytimelong',v.modifytimelong,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="CREATEUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createuser_${v.id}" class="td123 createuserTd">
${my:showcont('CmsStProductgroup','createuser',v.createuser,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="MODIFYUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="modifyuser_${v.id}" class="td123 modifyuserTd">
${my:showcont('CmsStProductgroup','modifyuser',v.modifyuser,0 )}							</td>
					</c:if>
				
				--> 
                	<c:set var="tt" value="TOPICID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="topicid_${v.id}" class="td123 topicidTd">
${my:showcont('CmsStProductgroup','topicid',v.topicid,0 )}							</td>
					</c:if>
				
                
                <td id="operate_${v.id}" class="operate111">
                  <!-- Icons-->
             	<c:choose>
        	<c:when test="${param.fromiframe eq null or param.fromiframe eq ''}">
        		<!--
            	<a class="xinzeng111" href="${ctx}/${actionBasePath}/create.do?topicid=${param.topicid}&grouptype=${param.grouptype}" title="新增"><img src="${ctx}/admin/resources/images/icons/pencil.png" alt="新增" /></a>
                 -->
                  <a href="#" onclick="if(confirm('您确定要删除这条数据吗？')) window.location.href='${ctx}/${actionBasePath}/delete.do?items=${v.id}&topicid=${v.topicid}';" title="删除"><img src="${ctx}/admin/resources/images/icons/cross.png" alt="删除" /></a>
                  <a class="iframe" href="#" onclick="parent.addPanel('${ctx}/${actionBasePath}/edit.do?id=${v.id}','修改产品组');" title="修改"><img src="${ctx}/admin/resources/images/icons/hammer_screwdriver.png" alt="修改" /></a> 
${my:input('CmsStProductgroup','list_iframe',v.id,-1,0 )}${my:input('CmsStProductgroup','list_blank',v.id,-1,0 )}

<a class="iframe" href="#" onclick="parent.addPanel('${ctx}/kailian/CmsStProductinfo/list.do?groupid=${v.id}','产品列表');" title="产品列表" target="_blank">产品列表</a> 
&nbsp;
<a class="iframe" href="#" onclick="parent.addPanel('${ctx}/kailian/KlTopicCoach/list.do?ext1=${v.id}','教练列表');" title="教练列表" target="_blank">教练列表</a> 
           
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
              <label><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_ID)%></label>
${my:input('CmsStProductgroup','id',param.id,0,-1 )}						
						
              </p>
			
			 <p id="groupname_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_GROUPNAME)%></label>
${my:input('CmsStProductgroup','groupname',param.groupname,0,-1 )}						
						
              </p>
			
			 <p id="description_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_DESCRIPTION)%></label>
${my:input('CmsStProductgroup','description',param.description,0,-1 )}						
						
              </p>
			
			 <p id="bgimg1_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_BGIMG1)%></label>
${my:input('CmsStProductgroup','bgimg1',param.bgimg1,0,-1 )}						
						
              </p>
			
			 <p id="bgimgleft_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_BGIMGLEFT)%></label>
${my:input('CmsStProductgroup','bgimgleft',param.bgimgleft,0,-1 )}						
						
              </p>
			
			 <p id="bgimgright_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_BGIMGRIGHT)%></label>
${my:input('CmsStProductgroup','bgimgright',param.bgimgright,0,-1 )}						
						
              </p>
			
			 <p id="headheight_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_HEADHEIGHT)%></label>
${my:input('CmsStProductgroup','headheight',param.headheight,0,-1 )}						
						
              </p>
			
			 <p id="grouptype_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_GROUPTYPE)%></label>
${my:input('CmsStProductgroup','grouptype',param.grouptype,0,-1 )}						
						
              </p>
			
			 <p id="rank_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_RANK)%></label>
${my:input('CmsStProductgroup','rank',param.rank,0,-1 )}						
						
              </p>
			
			 <p id="styleclass_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_STYLECLASS)%></label>
${my:input('CmsStProductgroup','styleclass',param.styleclass,0,-1 )}						
						
              </p>
			
				<!-- 
			 <p id="ext1_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_EXT1)%></label>
${my:input('CmsStProductgroup','ext1',param.ext1,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="ext2_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_EXT2)%></label>
${my:input('CmsStProductgroup','ext2',param.ext2,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="ext3_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_EXT3)%></label>
${my:input('CmsStProductgroup','ext3',param.ext3,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="ext4_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_EXT4)%></label>
${my:input('CmsStProductgroup','ext4',param.ext4,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="ext5_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_EXT5)%></label>
${my:input('CmsStProductgroup','ext5',param.ext5,0,-1 )}						
						
              </p>
				-->
			
			 <p id="extInt1_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_EXT_INT1)%></label>
${my:input('CmsStProductgroup','extInt1',param.extInt1,0,-1 )}						
						
              </p>
			
			 <p id="extInt2_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_EXT_INT2)%></label>
${my:input('CmsStProductgroup','extInt2',param.extInt2,0,-1 )}						
						
              </p>
			
			 <p id="extInt3_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_EXT_INT3)%></label>
${my:input('CmsStProductgroup','extInt3',param.extInt3,0,-1 )}						
						
              </p>
			
			 <p id="extInt4_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_EXT_INT4)%></label>
${my:input('CmsStProductgroup','extInt4',param.extInt4,0,-1 )}						
						
              </p>
			
			 <p id="extInt5_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_EXT_INT5)%></label>
${my:input('CmsStProductgroup','extInt5',param.extInt5,0,-1 )}						
						
              </p>
			
				<!-- 
			 <p id="status_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_STATUS)%></label>
${my:input('CmsStProductgroup','status',param.status,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="addition_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_ADDITION)%></label>
${my:input('CmsStProductgroup','addition',param.addition,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="createtimelong_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_CREATETIMELONG)%></label>
${my:input('CmsStProductgroup','createtimelong',param.createtimelong,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="modifytimelong_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_MODIFYTIMELONG)%></label>
${my:input('CmsStProductgroup','modifytimelong',param.modifytimelong,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="createuser_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_CREATEUSER)%></label>
${my:input('CmsStProductgroup','createuser',param.createuser,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="modifyuser_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_MODIFYUSER)%></label>
${my:input('CmsStProductgroup','modifyuser',param.modifyuser,0,-1 )}						
						
              </p>
				-->
			
			 <p id="topicid_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductgroup",CmsStProductgroup.ALIAS_TOPICID)%></label>
${my:input('CmsStProductgroup','topicid',param.topicid,0,-1 )}						
						
              </p>
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
		
		window.location.href = "${ctx}/${actionBasePath}/delete.do?items=" + items + "&topicid=${param.topicid}";
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
