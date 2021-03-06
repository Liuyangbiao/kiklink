<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", KlTopicCoach.TABLE_ALIAS);
	Map map = new HashMap();
		map.put("ID", "1");
		map.put("COACH_NAME", "1");
		map.put("COACH_SCHOOL", "1");
		/*
		map.put("SHOP_ADD", "1");
		map.put("SMS", "1");
		map.put("PERSONAL_DECLARATION", "1");
		map.put("TOPIC_ABOUT_COACH", "1");
		map.put("TOPIC_COACH_CAPACITY", "1");
		map.put("TOPIC_NEED", "1");
		map.put("NOW_INVITE", "1");
		map.put("COUNT", "1");
		map.put("PHONE", "1");
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
		map.put("CREATETIMELONG", "1");
		map.put("MODIFYTIMELONG", "1");
		map.put("CREATEUSER", "1");
		map.put("MODIFYUSER", "1");
		*/
	request.setAttribute("showmap", map);
 %>
<c:set var="actionBasePath" value="/kailian/KlTopicCoach" />
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
        <h3><%=JSTLTagUtils.getCnname("KlTopicCoach","table_name")%>列表
		&nbsp;&nbsp;
		
		<c:choose>
        	<c:when test="${param.fromiframe eq null or param.fromiframe eq ''}">
            <a class="button iframe" href="${ctx}/${actionBasePath}/create.do?ext1=${param.ext1}" title="新增">新增</a>
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
						<th id="id_000"><span onclick="newsort('<%=KlTopicCoach.ALIAS_ID%>');"><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_ID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="COACH_NAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="coachName_000"><span onclick="newsort('<%=KlTopicCoach.ALIAS_COACH_NAME%>');"><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_COACH_NAME)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="COACH_SCHOOL"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="coachSchool_000"><span onclick="newsort('<%=KlTopicCoach.ALIAS_COACH_SCHOOL%>');"><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_COACH_SCHOOL)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="SHOP_ADD"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="shopAdd_000"><span onclick="newsort('<%=KlTopicCoach.ALIAS_SHOP_ADD%>');"><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_SHOP_ADD)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="SMS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="sms_000"><span onclick="newsort('<%=KlTopicCoach.ALIAS_SMS%>');"><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_SMS)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="PERSONAL_DECLARATION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="personalDeclaration_000"><span onclick="newsort('<%=KlTopicCoach.ALIAS_PERSONAL_DECLARATION%>');"><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_PERSONAL_DECLARATION)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="TOPIC_ABOUT_COACH"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="topicAboutCoach_000"><span onclick="newsort('<%=KlTopicCoach.ALIAS_TOPIC_ABOUT_COACH%>');"><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_TOPIC_ABOUT_COACH)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="TOPIC_COACH_CAPACITY"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="topicCoachCapacity_000"><span onclick="newsort('<%=KlTopicCoach.ALIAS_TOPIC_COACH_CAPACITY%>');"><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_TOPIC_COACH_CAPACITY)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="TOPIC_NEED"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="topicNeed_000"><span onclick="newsort('<%=KlTopicCoach.ALIAS_TOPIC_NEED%>');"><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_TOPIC_NEED)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="NOW_INVITE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="nowInvite_000"><span onclick="newsort('<%=KlTopicCoach.ALIAS_NOW_INVITE%>');"><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_NOW_INVITE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="COUNT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="count_000"><span onclick="newsort('<%=KlTopicCoach.ALIAS_COUNT%>');"><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_COUNT)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="PHONE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="phone_000"><span onclick="newsort('<%=KlTopicCoach.ALIAS_PHONE%>');"><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_PHONE)%></span></th>
					</c:if>
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext1_000"><span onclick="newsort('<%=KlTopicCoach.ALIAS_EXT1%>');"><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_EXT1)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext2_000"><span onclick="newsort('<%=KlTopicCoach.ALIAS_EXT2%>');"><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_EXT2)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext3_000"><span onclick="newsort('<%=KlTopicCoach.ALIAS_EXT3%>');"><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_EXT3)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext4_000"><span onclick="newsort('<%=KlTopicCoach.ALIAS_EXT4%>');"><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_EXT4)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext5_000"><span onclick="newsort('<%=KlTopicCoach.ALIAS_EXT5%>');"><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_EXT5)%></span></th>
					</c:if>
				-->	
			
				
			
                
                	<c:set var="tt" value="EXT_INT1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extInt1_000"><span onclick="newsort('<%=KlTopicCoach.ALIAS_EXT_INT1%>');"><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_EXT_INT1)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="EXT_INT2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extInt2_000"><span onclick="newsort('<%=KlTopicCoach.ALIAS_EXT_INT2%>');"><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_EXT_INT2)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="EXT_INT3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extInt3_000"><span onclick="newsort('<%=KlTopicCoach.ALIAS_EXT_INT3%>');"><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_EXT_INT3)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="EXT_INT4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extInt4_000"><span onclick="newsort('<%=KlTopicCoach.ALIAS_EXT_INT4%>');"><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_EXT_INT4)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="EXT_INT5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extInt5_000"><span onclick="newsort('<%=KlTopicCoach.ALIAS_EXT_INT5%>');"><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_EXT_INT5)%></span></th>
					</c:if>
			
				<!-- 
				
			
                
                	<c:set var="tt" value="STATUS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="status_000"><span onclick="newsort('<%=KlTopicCoach.ALIAS_STATUS%>');"><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_STATUS)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="CREATETIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="createtimelong_000"><span onclick="newsort('<%=KlTopicCoach.ALIAS_CREATETIMELONG%>');"><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_CREATETIMELONG)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="MODIFYTIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="modifytimelong_000"><span onclick="newsort('<%=KlTopicCoach.ALIAS_MODIFYTIMELONG%>');"><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_MODIFYTIMELONG)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="CREATEUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="createuser_000"><span onclick="newsort('<%=KlTopicCoach.ALIAS_CREATEUSER%>');"><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_CREATEUSER)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="MODIFYUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="modifyuser_000"><span onclick="newsort('<%=KlTopicCoach.ALIAS_MODIFYUSER%>');"><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_MODIFYUSER)%></span></th>
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
				
                	<c:set var="tt" value="COACH_NAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="coachName_${v.id}" class="td123 coachNameTd">
${my:showcont('KlTopicCoach','coachName',v.coachName,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="COACH_SCHOOL"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="coachSchool_${v.id}" class="td123 coachSchoolTd">
${my:showcont('KlTopicCoach','coachSchool',v.coachSchool,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="SHOP_ADD"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="shopAdd_${v.id}" class="td123 shopAddTd">
${my:showcont('KlTopicCoach','shopAdd',v.shopAdd,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="SMS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="sms_${v.id}" class="td123 smsTd">
${my:showcont('KlTopicCoach','sms',v.sms,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="PERSONAL_DECLARATION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="personalDeclaration_${v.id}" class="td123 personalDeclarationTd">
${my:showcont('KlTopicCoach','personalDeclaration',v.personalDeclaration,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="TOPIC_ABOUT_COACH"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="topicAboutCoach_${v.id}" class="td123 topicAboutCoachTd">
${my:showcont('KlTopicCoach','topicAboutCoach',v.topicAboutCoach,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="TOPIC_COACH_CAPACITY"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="topicCoachCapacity_${v.id}" class="td123 topicCoachCapacityTd">
${my:showcont('KlTopicCoach','topicCoachCapacity',v.topicCoachCapacity,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="TOPIC_NEED"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="topicNeed_${v.id}" class="td123 topicNeedTd">
${my:showcont('KlTopicCoach','topicNeed',v.topicNeed,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="NOW_INVITE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="nowInvite_${v.id}" class="td123 nowInviteTd">
${my:showcont('KlTopicCoach','nowInvite',v.nowInvite,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="COUNT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="count_${v.id}" class="td123 countTd">
${my:showcont('KlTopicCoach','count',v.count,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="PHONE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="phone_${v.id}" class="td123 phoneTd">
${my:showcont('KlTopicCoach','phone',v.phone,0 )}							</td>
					</c:if>
				
				 
                	<c:set var="tt" value="EXT1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext1_${v.id}" class="td123 ext1Td">
${my:showcont('KlTopicCoach','ext1',v.ext1,0 )}							</td>
					</c:if>
				
				
				<!-- 
                	<c:set var="tt" value="EXT2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext2_${v.id}" class="td123 ext2Td">
${my:showcont('KlTopicCoach','ext2',v.ext2,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext3_${v.id}" class="td123 ext3Td">
${my:showcont('KlTopicCoach','ext3',v.ext3,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext4_${v.id}" class="td123 ext4Td">
${my:showcont('KlTopicCoach','ext4',v.ext4,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext5_${v.id}" class="td123 ext5Td">
${my:showcont('KlTopicCoach','ext5',v.ext5,0 )}							</td>
					</c:if>
				
				--> 
                	<c:set var="tt" value="EXT_INT1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extInt1_${v.id}" class="td123 extInt1Td">
${my:showcont('KlTopicCoach','extInt1',v.extInt1,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="EXT_INT2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extInt2_${v.id}" class="td123 extInt2Td">
${my:showcont('KlTopicCoach','extInt2',v.extInt2,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="EXT_INT3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extInt3_${v.id}" class="td123 extInt3Td">
${my:showcont('KlTopicCoach','extInt3',v.extInt3,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="EXT_INT4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extInt4_${v.id}" class="td123 extInt4Td">
${my:showcont('KlTopicCoach','extInt4',v.extInt4,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="EXT_INT5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extInt5_${v.id}" class="td123 extInt5Td">
${my:showcont('KlTopicCoach','extInt5',v.extInt5,0 )}							</td>
					</c:if>
				
				<!-- 
                	<c:set var="tt" value="STATUS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="status_${v.id}" class="td123 statusTd">
${my:showcont('KlTopicCoach','status',v.status,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="CREATETIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createtimelong_${v.id}" class="td123 createtimelongTd">
${my:showcont('KlTopicCoach','createtimelong',v.createtimelong,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="MODIFYTIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="modifytimelong_${v.id}" class="td123 modifytimelongTd">
${my:showcont('KlTopicCoach','modifytimelong',v.modifytimelong,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="CREATEUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createuser_${v.id}" class="td123 createuserTd">
${my:showcont('KlTopicCoach','createuser',v.createuser,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="MODIFYUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="modifyuser_${v.id}" class="td123 modifyuserTd">
${my:showcont('KlTopicCoach','modifyuser',v.modifyuser,0 )}							</td>
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
${my:input('KlTopicCoach','list_iframe',v.id,-1,0 )}${my:input('KlTopicCoach','list_blank',v.id,-1,0 )}
        <a class="iframe" href="#" onclick="parent.addPanel('${ctx}/kailian/CmsStRhppeople/list.do?pid=0&ext4=${v.id}','报名数据');" title="报名数据" target="_blank">报名数据</a> 


           
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
              <label><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_ID)%></label>
${my:input('KlTopicCoach','id',param.id,0,-1 )}						
						
              </p>
			
			 <p id="coachName_formp">
              <label><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_COACH_NAME)%></label>
${my:input('KlTopicCoach','coachName',param.coachName,0,-1 )}						
						
              </p>
			
			 <p id="coachSchool_formp">
              <label><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_COACH_SCHOOL)%></label>
${my:input('KlTopicCoach','coachSchool',param.coachSchool,0,-1 )}						
						
              </p>
			
			 <p id="shopAdd_formp">
              <label><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_SHOP_ADD)%></label>
${my:input('KlTopicCoach','shopAdd',param.shopAdd,0,-1 )}						
						
              </p>
			
			 <p id="sms_formp">
              <label><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_SMS)%></label>
${my:input('KlTopicCoach','sms',param.sms,0,-1 )}						
						
              </p>
			
			 <p id="personalDeclaration_formp">
              <label><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_PERSONAL_DECLARATION)%></label>
${my:input('KlTopicCoach','personalDeclaration',param.personalDeclaration,0,-1 )}						
						
              </p>
			
			 <p id="topicAboutCoach_formp">
              <label><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_TOPIC_ABOUT_COACH)%></label>
${my:input('KlTopicCoach','topicAboutCoach',param.topicAboutCoach,0,-1 )}						
						
              </p>
			
			 <p id="topicCoachCapacity_formp">
              <label><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_TOPIC_COACH_CAPACITY)%></label>
${my:input('KlTopicCoach','topicCoachCapacity',param.topicCoachCapacity,0,-1 )}						
						
              </p>
			
			 <p id="topicNeed_formp">
              <label><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_TOPIC_NEED)%></label>
${my:input('KlTopicCoach','topicNeed',param.topicNeed,0,-1 )}						
						
              </p>
			
			 <p id="nowInvite_formp">
              <label><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_NOW_INVITE)%></label>
${my:input('KlTopicCoach','nowInvite',param.nowInvite,0,-1 )}						
						
              </p>
			
			 <p id="count_formp">
              <label><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_COUNT)%></label>
${my:input('KlTopicCoach','count',param.count,0,-1 )}						
						
              </p>
			
			 <p id="phone_formp">
              <label><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_PHONE)%></label>
${my:input('KlTopicCoach','phone',param.phone,0,-1 )}						
						
              </p>
			
			 <p id="ext1_formp">
              <label><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_EXT1)%></label>
${my:input('KlTopicCoach','ext1',param.ext1,0,-1 )}						
						
              </p>
			
				<!-- 
			 <p id="ext2_formp">
              <label><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_EXT2)%></label>
${my:input('KlTopicCoach','ext2',param.ext2,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="ext3_formp">
              <label><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_EXT3)%></label>
${my:input('KlTopicCoach','ext3',param.ext3,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="ext4_formp">
              <label><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_EXT4)%></label>
${my:input('KlTopicCoach','ext4',param.ext4,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="ext5_formp">
              <label><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_EXT5)%></label>
${my:input('KlTopicCoach','ext5',param.ext5,0,-1 )}						
						
              </p>
				-->
			
			 <p id="extInt1_formp">
              <label><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_EXT_INT1)%></label>
${my:input('KlTopicCoach','extInt1',param.extInt1,0,-1 )}						
						
              </p>
			
			 <p id="extInt2_formp">
              <label><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_EXT_INT2)%></label>
${my:input('KlTopicCoach','extInt2',param.extInt2,0,-1 )}						
						
              </p>
			
			 <p id="extInt3_formp">
              <label><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_EXT_INT3)%></label>
${my:input('KlTopicCoach','extInt3',param.extInt3,0,-1 )}						
						
              </p>
			
			 <p id="extInt4_formp">
              <label><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_EXT_INT4)%></label>
${my:input('KlTopicCoach','extInt4',param.extInt4,0,-1 )}						
						
              </p>
			
			 <p id="extInt5_formp">
              <label><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_EXT_INT5)%></label>
${my:input('KlTopicCoach','extInt5',param.extInt5,0,-1 )}						
						
              </p>
			
				<!-- 
			 <p id="status_formp">
              <label><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_STATUS)%></label>
${my:input('KlTopicCoach','status',param.status,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="createtimelong_formp">
              <label><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_CREATETIMELONG)%></label>
${my:input('KlTopicCoach','createtimelong',param.createtimelong,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="modifytimelong_formp">
              <label><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_MODIFYTIMELONG)%></label>
${my:input('KlTopicCoach','modifytimelong',param.modifytimelong,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="createuser_formp">
              <label><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_CREATEUSER)%></label>
${my:input('KlTopicCoach','createuser',param.createuser,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="modifyuser_formp">
              <label><%=JSTLTagUtils.getCnname("KlTopicCoach",KlTopicCoach.ALIAS_MODIFYUSER)%></label>
${my:input('KlTopicCoach','modifyuser',param.modifyuser,0,-1 )}						
						
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
