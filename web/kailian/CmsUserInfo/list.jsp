<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsUserInfo.TABLE_ALIAS);
	Map map = new HashMap();
		map.put("ID", "1");
		map.put("USERNAME", "1");
		//map.put("PASSWD", "1");
		
		//map.put("THIRD_TYPE", "1");
		//map.put("OPENID", "1");
		//map.put("SOURCE", "1");
		map.put("MOBILE", "1");
		map.put("EMAIL", "1");
		map.put("REAL_NAME", "1");
		//map.put("PROVINCEID", "1");
		/*
		map.put("PROVINCE", "1");
		map.put("CITYID", "1");
		map.put("CITY", "1");
		map.put("QUID", "1");
		map.put("QU", "1");
		map.put("BIRTH_YEAR", "1");
		map.put("BIRTH_MONTH", "1");
		map.put("BIRTH_DATE", "1");
		map.put("PHONE", "1");
		map.put("ADDRESS", "1");
		map.put("POST_CODE", "1");
		map.put("PHOTO", "1");
		map.put("USERTYPE", "1");
		map.put("CREATE_GROUP_COUNT", "1");
		map.put("JOIN_GROUP_COUNT", "1");
		map.put("CREATE_TOPIC_COUNT", "1");
		map.put("REPLY_COUNT", "1");
		map.put("POINTS", "1");
		map.put("STATUS", "1");
		map.put("ADDITION", "1");
		map.put("CREATETIMELONG", "1");
		map.put("MODIFYTIMELONG", "1");
		map.put("CREATEUSER", "1");
		map.put("MODIFYUSER", "1");
		*/
		map.put("STATUS", "1");
	request.setAttribute("showmap", map);
 %>
<c:set var="actionBasePath" value="/kailian/CmsUserInfo" />
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
        <h3><%=JSTLTagUtils.getCnname("CmsUserInfo","table_name")%>列表
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
						<th id="id_000"><span onClick="newsort('<%=CmsUserInfo.ALIAS_ID%>');"><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_ID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="USERNAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="username_000"><span onClick="newsort('<%=CmsUserInfo.ALIAS_USERNAME%>');"><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_USERNAME)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="PASSWD"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="passwd_000"><span onClick="newsort('<%=CmsUserInfo.ALIAS_PASSWD%>');"><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_PASSWD)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="THIRD_TYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="thirdType_000"><span onClick="newsort('<%=CmsUserInfo.ALIAS_THIRD_TYPE%>');"><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_THIRD_TYPE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="OPENID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="openid_000"><span onClick="newsort('<%=CmsUserInfo.ALIAS_OPENID%>');"><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_OPENID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="SOURCE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="source_000"><span onClick="newsort('<%=CmsUserInfo.ALIAS_SOURCE%>');"><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_SOURCE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="MOBILE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="mobile_000"><span onClick="newsort('<%=CmsUserInfo.ALIAS_MOBILE%>');"><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_MOBILE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="EMAIL"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="email_000"><span onClick="newsort('<%=CmsUserInfo.ALIAS_EMAIL%>');"><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_EMAIL)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="REAL_NAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="realName_000"><span onClick="newsort('<%=CmsUserInfo.ALIAS_REAL_NAME%>');"><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_REAL_NAME)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="PROVINCEID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="provinceid_000"><span onClick="newsort('<%=CmsUserInfo.ALIAS_PROVINCEID%>');"><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_PROVINCEID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="PROVINCE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="province_000"><span onClick="newsort('<%=CmsUserInfo.ALIAS_PROVINCE%>');"><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_PROVINCE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="CITYID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="cityid_000"><span onClick="newsort('<%=CmsUserInfo.ALIAS_CITYID%>');"><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_CITYID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="CITY"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="city_000"><span onClick="newsort('<%=CmsUserInfo.ALIAS_CITY%>');"><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_CITY)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="QUID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="quid_000"><span onClick="newsort('<%=CmsUserInfo.ALIAS_QUID%>');"><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_QUID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="QU"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="qu_000"><span onClick="newsort('<%=CmsUserInfo.ALIAS_QU%>');"><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_QU)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="BIRTH_YEAR"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="birthYear_000"><span onClick="newsort('<%=CmsUserInfo.ALIAS_BIRTH_YEAR%>');"><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_BIRTH_YEAR)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="BIRTH_MONTH"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="birthMonth_000"><span onClick="newsort('<%=CmsUserInfo.ALIAS_BIRTH_MONTH%>');"><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_BIRTH_MONTH)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="BIRTH_DATE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="birthDate_000"><span onClick="newsort('<%=CmsUserInfo.ALIAS_BIRTH_DATE%>');"><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_BIRTH_DATE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="PHONE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="phone_000"><span onClick="newsort('<%=CmsUserInfo.ALIAS_PHONE%>');"><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_PHONE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="ADDRESS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="address_000"><span onClick="newsort('<%=CmsUserInfo.ALIAS_ADDRESS%>');"><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_ADDRESS)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="POST_CODE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="postCode_000"><span onClick="newsort('<%=CmsUserInfo.ALIAS_POST_CODE%>');"><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_POST_CODE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="PHOTO"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="photo_000"><span onClick="newsort('<%=CmsUserInfo.ALIAS_PHOTO%>');"><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_PHOTO)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="USERTYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="usertype_000"><span onClick="newsort('<%=CmsUserInfo.ALIAS_USERTYPE%>');"><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_USERTYPE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="CREATE_GROUP_COUNT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="createGroupCount_000"><span onClick="newsort('<%=CmsUserInfo.ALIAS_CREATE_GROUP_COUNT%>');"><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_CREATE_GROUP_COUNT)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="JOIN_GROUP_COUNT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="joinGroupCount_000"><span onClick="newsort('<%=CmsUserInfo.ALIAS_JOIN_GROUP_COUNT%>');"><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_JOIN_GROUP_COUNT)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="CREATE_TOPIC_COUNT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="createTopicCount_000"><span onClick="newsort('<%=CmsUserInfo.ALIAS_CREATE_TOPIC_COUNT%>');"><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_CREATE_TOPIC_COUNT)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="REPLY_COUNT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="replyCount_000"><span onClick="newsort('<%=CmsUserInfo.ALIAS_REPLY_COUNT%>');"><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_REPLY_COUNT)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="POINTS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="points_000"><span onClick="newsort('<%=CmsUserInfo.ALIAS_POINTS%>');"><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_POINTS)%></span></th>
					</c:if>
			
				
				
			
                
                	<c:set var="tt" value="STATUS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="status_000"><span onclick="newsort('<%=CmsUserInfo.ALIAS_STATUS%>');"><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_STATUS)%></span></th>
					</c:if>
				
			
				<!-- 
				
			
                
                	<c:set var="tt" value="ADDITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="addition_000"><span onclick="newsort('<%=CmsUserInfo.ALIAS_ADDITION%>');"><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_ADDITION)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="CREATETIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="createtimelong_000"><span onclick="newsort('<%=CmsUserInfo.ALIAS_CREATETIMELONG%>');"><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_CREATETIMELONG)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="MODIFYTIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="modifytimelong_000"><span onclick="newsort('<%=CmsUserInfo.ALIAS_MODIFYTIMELONG%>');"><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_MODIFYTIMELONG)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="CREATEUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="createuser_000"><span onclick="newsort('<%=CmsUserInfo.ALIAS_CREATEUSER%>');"><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_CREATEUSER)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="MODIFYUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="modifyuser_000"><span onclick="newsort('<%=CmsUserInfo.ALIAS_MODIFYUSER%>');"><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_MODIFYUSER)%></span></th>
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
				
                	<c:set var="tt" value="USERNAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="username_${v.id}" class="td123 usernameTd">
${my:showcont('CmsUserInfo','username',v.username,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="PASSWD"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="passwd_${v.id}" class="td123 passwdTd">
${my:showcont('CmsUserInfo','passwd',v.passwd,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="THIRD_TYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="thirdType_${v.id}" class="td123 thirdTypeTd">
${my:showcont('CmsUserInfo','thirdType',v.thirdType,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="OPENID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="openid_${v.id}" class="td123 openidTd">
${my:showcont('CmsUserInfo','openid',v.openid,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="SOURCE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="source_${v.id}" class="td123 sourceTd">
${my:showcont('CmsUserInfo','source',v.source,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="MOBILE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="mobile_${v.id}" class="td123 mobileTd">
${my:showcont('CmsUserInfo','mobile',v.mobile,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="EMAIL"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="email_${v.id}" class="td123 emailTd">
${my:showcont('CmsUserInfo','email',v.email,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="REAL_NAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="realName_${v.id}" class="td123 realNameTd">
${my:showcont('CmsUserInfo','realName',v.realName,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="PROVINCEID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="provinceid_${v.id}" class="td123 provinceidTd">
${my:showcont('CmsUserInfo','provinceid',v.provinceid,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="PROVINCE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="province_${v.id}" class="td123 provinceTd">
${my:showcont('CmsUserInfo','province',v.province,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="CITYID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="cityid_${v.id}" class="td123 cityidTd">
${my:showcont('CmsUserInfo','cityid',v.cityid,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="CITY"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="city_${v.id}" class="td123 cityTd">
${my:showcont('CmsUserInfo','city',v.city,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="QUID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="quid_${v.id}" class="td123 quidTd">
${my:showcont('CmsUserInfo','quid',v.quid,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="QU"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="qu_${v.id}" class="td123 quTd">
${my:showcont('CmsUserInfo','qu',v.qu,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="BIRTH_YEAR"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="birthYear_${v.id}" class="td123 birthYearTd">
${my:showcont('CmsUserInfo','birthYear',v.birthYear,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="BIRTH_MONTH"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="birthMonth_${v.id}" class="td123 birthMonthTd">
${my:showcont('CmsUserInfo','birthMonth',v.birthMonth,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="BIRTH_DATE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="birthDate_${v.id}" class="td123 birthDateTd">
${my:showcont('CmsUserInfo','birthDate',v.birthDate,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="PHONE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="phone_${v.id}" class="td123 phoneTd">
${my:showcont('CmsUserInfo','phone',v.phone,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="ADDRESS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="address_${v.id}" class="td123 addressTd">
${my:showcont('CmsUserInfo','address',v.address,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="POST_CODE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="postCode_${v.id}" class="td123 postCodeTd">
${my:showcont('CmsUserInfo','postCode',v.postCode,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="PHOTO"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="photo_${v.id}" class="td123 photoTd">
${my:showcont('CmsUserInfo','photo',v.photo,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="USERTYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="usertype_${v.id}" class="td123 usertypeTd">
${my:showcont('CmsUserInfo','usertype',v.usertype,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="CREATE_GROUP_COUNT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createGroupCount_${v.id}" class="td123 createGroupCountTd">
${my:showcont('CmsUserInfo','createGroupCount',v.createGroupCount,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="JOIN_GROUP_COUNT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="joinGroupCount_${v.id}" class="td123 joinGroupCountTd">
${my:showcont('CmsUserInfo','joinGroupCount',v.joinGroupCount,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="CREATE_TOPIC_COUNT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createTopicCount_${v.id}" class="td123 createTopicCountTd">
${my:showcont('CmsUserInfo','createTopicCount',v.createTopicCount,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="REPLY_COUNT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="replyCount_${v.id}" class="td123 replyCountTd">
${my:showcont('CmsUserInfo','replyCount',v.replyCount,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="POINTS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="points_${v.id}" class="td123 pointsTd">
${my:showcont('CmsUserInfo','points',v.points,0 )}							</td>
					</c:if>
				
				
                	<c:set var="tt" value="STATUS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="status_${v.id}" class="td123 statusTd">
${my:showcont('CmsUserInfo','status',v.status,0 )}							</td>
					</c:if>
				
				
				<!-- 
                	<c:set var="tt" value="ADDITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="addition_${v.id}" class="td123 additionTd">
${my:showcont('CmsUserInfo','addition',v.addition,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="CREATETIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createtimelong_${v.id}" class="td123 createtimelongTd">
${my:showcont('CmsUserInfo','createtimelong',v.createtimelong,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="MODIFYTIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="modifytimelong_${v.id}" class="td123 modifytimelongTd">
${my:showcont('CmsUserInfo','modifytimelong',v.modifytimelong,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="CREATEUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createuser_${v.id}" class="td123 createuserTd">
${my:showcont('CmsUserInfo','createuser',v.createuser,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="MODIFYUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="modifyuser_${v.id}" class="td123 modifyuserTd">
${my:showcont('CmsUserInfo','modifyuser',v.modifyuser,0 )}							</td>
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
${my:input('CmsUserInfo','list_iframe',v.id,-1,0 )}${my:input('CmsUserInfo','list_blank',v.id,-1,0 )}
&nbsp;
<c:if test="${v.status eq 1}">
<a href="#" class="button" onclick="if (confirm('您确定要阻止该用户吗？')) block(${v.id},-1);">阻止用户</a>
</c:if>    
<c:if test="${v.status eq -1}">
<a href="#" class="button" onclick="if (confirm('您确定要解冻该用户吗？')) block(${v.id},1);">解冻用户</a>
</c:if>           
            </c:when>
            <c:otherwise>
            
            	<a class="button" href="#" onClick="parent.didiframe(obj[${vs.index}],'${param.params}');">选取</a>
            </c:otherwise>
        </c:choose>	
			&nbsp;
			<a class="iframe" onclick="parent.addPanel('${ctx}/kailian/KlShoppingComplaints/list.do?toUserId=${v.id}','${v.username}被投诉');">被投诉</a> 
			&nbsp;
			<a class="iframe" onclick="parent.addPanel('${ctx}/kailian/KlShoppingComplaints/list.do?userid=${v.id}','${v.username}投诉');">投诉</a> 
			&nbsp;
			<a class="iframe" onclick="parent.addPanel('${ctx}/kailian/KlShoppingShoppingcartproduct/list.do?userid=${v.id}','${v.username}课程');">课程</a>             		
            &nbsp;
			<a class="iframe" onclick="parent.addPanel('${ctx}/kailian/CmsCommonComment/list.do?userid=${v.id}','${v.username}的评论');">评论</a>        		
			&nbsp;
			<a class="iframe" onclick="parent.addPanel('${ctx}/kailian/CmsCommonMessage/list.do?fromuserid=${v.id}','${v.username}的消息');">消息</a> 
			&nbsp;
			<a class="iframe" onclick="parent.addPanel('${ctx}/kailian/CmsCommonPoints/list.do?userid=${v.id}','${v.username}积分');">积分</a> 
			&nbsp;
			<a class="iframe" onclick="parent.addPanel('${ctx}/kailian/KlShoppingOrder/list.do?userid=${v.id}','${v.username}订单');">订单</a> 
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
              <label><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_ID)%></label>
${my:input('CmsUserInfo','id',param.id,0,-1 )}						
						
              </p>
			
			 <p id="username_formp">
              <label><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_USERNAME)%></label>
${my:input('CmsUserInfo','username',param.username,0,-1 )}						
						
              </p>
			
			 <p id="passwd_formp">
              <label><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_PASSWD)%></label>
${my:input('CmsUserInfo','passwd',param.passwd,0,-1 )}						
						
              </p>
			
			 <p id="thirdType_formp">
              <label><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_THIRD_TYPE)%></label>
${my:input('CmsUserInfo','thirdType',param.thirdType,0,-1 )}						
						
              </p>
			
			 <p id="openid_formp">
              <label><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_OPENID)%></label>
${my:input('CmsUserInfo','openid',param.openid,0,-1 )}						
						
              </p>
			
			 <p id="source_formp">
              <label><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_SOURCE)%></label>
${my:input('CmsUserInfo','source',param.source,0,-1 )}						
						
              </p>
			
			 <p id="mobile_formp">
              <label><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_MOBILE)%></label>
${my:input('CmsUserInfo','mobile',param.mobile,0,-1 )}						
						
              </p>
			
			 <p id="email_formp">
              <label><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_EMAIL)%></label>
${my:input('CmsUserInfo','email',param.email,0,-1 )}						
						
              </p>
			
			 <p id="realName_formp">
              <label><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_REAL_NAME)%></label>
${my:input('CmsUserInfo','realName',param.realName,0,-1 )}						
						
              </p>
			
			 <p id="provinceid_formp">
              <label><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_PROVINCEID)%></label>
${my:input('CmsUserInfo','provinceid',param.provinceid,0,-1 )}						
						
              </p>
			
			 <p id="province_formp">
              <label><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_PROVINCE)%></label>
${my:input('CmsUserInfo','province',param.province,0,-1 )}						
						
              </p>
			
			 <p id="cityid_formp">
              <label><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_CITYID)%></label>
${my:input('CmsUserInfo','cityid',param.cityid,0,-1 )}						
						
              </p>
			
			 <p id="city_formp">
              <label><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_CITY)%></label>
${my:input('CmsUserInfo','city',param.city,0,-1 )}						
						
              </p>
			
			 <p id="quid_formp">
              <label><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_QUID)%></label>
${my:input('CmsUserInfo','quid',param.quid,0,-1 )}						
						
              </p>
			
			 <p id="qu_formp">
              <label><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_QU)%></label>
${my:input('CmsUserInfo','qu',param.qu,0,-1 )}						
						
              </p>
			
			 <p id="birthYear_formp">
              <label><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_BIRTH_YEAR)%></label>
${my:input('CmsUserInfo','birthYear',param.birthYear,0,-1 )}						
						
              </p>
			
			 <p id="birthMonth_formp">
              <label><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_BIRTH_MONTH)%></label>
${my:input('CmsUserInfo','birthMonth',param.birthMonth,0,-1 )}						
						
              </p>
			
			 <p id="birthDate_formp">
              <label><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_BIRTH_DATE)%></label>
${my:input('CmsUserInfo','birthDate',param.birthDate,0,-1 )}						
						
              </p>
			
			 <p id="phone_formp">
              <label><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_PHONE)%></label>
${my:input('CmsUserInfo','phone',param.phone,0,-1 )}						
						
              </p>
			
			 <p id="address_formp">
              <label><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_ADDRESS)%></label>
${my:input('CmsUserInfo','address',param.address,0,-1 )}						
						
              </p>
			
			 <p id="postCode_formp">
              <label><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_POST_CODE)%></label>
${my:input('CmsUserInfo','postCode',param.postCode,0,-1 )}						
						
              </p>
			
			 <p id="photo_formp">
              <label><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_PHOTO)%></label>
${my:input('CmsUserInfo','photo',param.photo,0,-1 )}						
						
              </p>
			
			 <p id="usertype_formp">
              <label><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_USERTYPE)%></label>
${my:input('CmsUserInfo','usertype',param.usertype,0,-1 )}						
						
              </p>
			
			 <p id="createGroupCount_formp">
              <label><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_CREATE_GROUP_COUNT)%></label>
${my:input('CmsUserInfo','createGroupCount',param.createGroupCount,0,-1 )}						
						
              </p>
			
			 <p id="joinGroupCount_formp">
              <label><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_JOIN_GROUP_COUNT)%></label>
${my:input('CmsUserInfo','joinGroupCount',param.joinGroupCount,0,-1 )}						
						
              </p>
			
			 <p id="createTopicCount_formp">
              <label><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_CREATE_TOPIC_COUNT)%></label>
${my:input('CmsUserInfo','createTopicCount',param.createTopicCount,0,-1 )}						
						
              </p>
			
			 <p id="replyCount_formp">
              <label><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_REPLY_COUNT)%></label>
${my:input('CmsUserInfo','replyCount',param.replyCount,0,-1 )}						
						
              </p>
			
			 <p id="points_formp">
              <label><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_POINTS)%></label>
${my:input('CmsUserInfo','points',param.points,0,-1 )}						
						
              </p>
			
				
			 <p id="status_formp">
              <label><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_STATUS)%></label>
${my:input('CmsUserInfo','status',param.status,0,-1 )}						
						
              </p>
				
			
				<!-- 
			 <p id="addition_formp">
              <label><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_ADDITION)%></label>
${my:input('CmsUserInfo','addition',param.addition,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="createtimelong_formp">
              <label><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_CREATETIMELONG)%></label>
${my:input('CmsUserInfo','createtimelong',param.createtimelong,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="modifytimelong_formp">
              <label><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_MODIFYTIMELONG)%></label>
${my:input('CmsUserInfo','modifytimelong',param.modifytimelong,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="createuser_formp">
              <label><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_CREATEUSER)%></label>
${my:input('CmsUserInfo','createuser',param.createuser,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="modifyuser_formp">
              <label><%=JSTLTagUtils.getCnname("CmsUserInfo",CmsUserInfo.ALIAS_MODIFYUSER)%></label>
${my:input('CmsUserInfo','modifyuser',param.modifyuser,0,-1 )}						
						
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
	
	
	function block(userid,status) {
		$.ajax({
             type: "GET",
             url:"${ctx}/kailian/CmsUserInfo/block.do?ajax=ajax&id=" + userid+"&status=" + status,
             data: {},
             dataType: "json",
             success: function(obj){
				 //alert(str);
				 //var obj = eval('(' + str + ')');   
				// alert(obj);
				if (obj['re'] == 1) {
					$('#queryForm').submit();
				}
				else {
					alert(obj['word']);	
				}
				
				
			 }
         });
	}
	
</script>
<!-- Download From www.exet.tk-->
</html>
