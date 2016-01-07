<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", KlShoppingPiliangtime.TABLE_ALIAS);
	Map map = new HashMap();
		map.put("ID", "1");
		map.put("SHOPID", "1");
		map.put("USERID", "1");
		map.put("COACHID", "1");
		map.put("SHOPPEDCLASSID", "1");
		map.put("DATEFROM", "1");
		map.put("DATETO", "1");
		map.put("WEEKDAYS", "1");
		map.put("TIMEFROM", "1");
		map.put("TIMETO", "1");
		map.put("TIMEOK", "1");
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
		map.put("ADDITION", "1");
		map.put("CREATETIMELONG", "1");
		map.put("MODIFYTIMELONG", "1");
		map.put("CREATEUSER", "1");
		map.put("MODIFYUSER", "1");
	request.setAttribute("showmap", map);
 %>
<c:set var="actionBasePath" value="/kailian/KlShoppingPiliangtime" />
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
        <h3><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime","table_name")%>列表
		&nbsp;&nbsp;
		
		<c:choose>
        	<c:when test="${param.fromiframe eq null or param.fromiframe eq ''}">
            <a class="button iframe" href="${ctx}/${actionBasePath}/create.do" title="新增">新增</a>
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
						<th id="id_000"><span onclick="newsort('<%=KlShoppingPiliangtime.ALIAS_ID%>');"><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_ID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="SHOPID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="shopid_000"><span onclick="newsort('<%=KlShoppingPiliangtime.ALIAS_SHOPID%>');"><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_SHOPID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="USERID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="userid_000"><span onclick="newsort('<%=KlShoppingPiliangtime.ALIAS_USERID%>');"><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_USERID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="COACHID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="coachid_000"><span onclick="newsort('<%=KlShoppingPiliangtime.ALIAS_COACHID%>');"><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_COACHID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="SHOPPEDCLASSID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="shoppedclassid_000"><span onclick="newsort('<%=KlShoppingPiliangtime.ALIAS_SHOPPEDCLASSID%>');"><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_SHOPPEDCLASSID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="DATEFROM"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="datefrom_000"><span onclick="newsort('<%=KlShoppingPiliangtime.ALIAS_DATEFROM%>');"><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_DATEFROM)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="DATETO"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="dateto_000"><span onclick="newsort('<%=KlShoppingPiliangtime.ALIAS_DATETO%>');"><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_DATETO)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="WEEKDAYS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="weekdays_000"><span onclick="newsort('<%=KlShoppingPiliangtime.ALIAS_WEEKDAYS%>');"><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_WEEKDAYS)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="TIMEFROM"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="timefrom_000"><span onclick="newsort('<%=KlShoppingPiliangtime.ALIAS_TIMEFROM%>');"><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_TIMEFROM)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="TIMETO"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="timeto_000"><span onclick="newsort('<%=KlShoppingPiliangtime.ALIAS_TIMETO%>');"><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_TIMETO)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="TIMEOK"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="timeok_000"><span onclick="newsort('<%=KlShoppingPiliangtime.ALIAS_TIMEOK%>');"><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_TIMEOK)%></span></th>
					</c:if>
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext1_000"><span onclick="newsort('<%=KlShoppingPiliangtime.ALIAS_EXT1%>');"><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_EXT1)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext2_000"><span onclick="newsort('<%=KlShoppingPiliangtime.ALIAS_EXT2%>');"><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_EXT2)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext3_000"><span onclick="newsort('<%=KlShoppingPiliangtime.ALIAS_EXT3%>');"><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_EXT3)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext4_000"><span onclick="newsort('<%=KlShoppingPiliangtime.ALIAS_EXT4%>');"><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_EXT4)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext5_000"><span onclick="newsort('<%=KlShoppingPiliangtime.ALIAS_EXT5%>');"><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_EXT5)%></span></th>
					</c:if>
				-->	
			
				
			
                
                	<c:set var="tt" value="EXT_INT1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extInt1_000"><span onclick="newsort('<%=KlShoppingPiliangtime.ALIAS_EXT_INT1%>');"><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_EXT_INT1)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="EXT_INT2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extInt2_000"><span onclick="newsort('<%=KlShoppingPiliangtime.ALIAS_EXT_INT2%>');"><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_EXT_INT2)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="EXT_INT3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extInt3_000"><span onclick="newsort('<%=KlShoppingPiliangtime.ALIAS_EXT_INT3%>');"><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_EXT_INT3)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="EXT_INT4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extInt4_000"><span onclick="newsort('<%=KlShoppingPiliangtime.ALIAS_EXT_INT4%>');"><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_EXT_INT4)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="EXT_INT5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extInt5_000"><span onclick="newsort('<%=KlShoppingPiliangtime.ALIAS_EXT_INT5%>');"><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_EXT_INT5)%></span></th>
					</c:if>
			
				<!-- 
				
			
                
                	<c:set var="tt" value="STATUS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="status_000"><span onclick="newsort('<%=KlShoppingPiliangtime.ALIAS_STATUS%>');"><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_STATUS)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="ADDITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="addition_000"><span onclick="newsort('<%=KlShoppingPiliangtime.ALIAS_ADDITION%>');"><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_ADDITION)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="CREATETIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="createtimelong_000"><span onclick="newsort('<%=KlShoppingPiliangtime.ALIAS_CREATETIMELONG%>');"><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_CREATETIMELONG)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="MODIFYTIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="modifytimelong_000"><span onclick="newsort('<%=KlShoppingPiliangtime.ALIAS_MODIFYTIMELONG%>');"><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_MODIFYTIMELONG)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="CREATEUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="createuser_000"><span onclick="newsort('<%=KlShoppingPiliangtime.ALIAS_CREATEUSER%>');"><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_CREATEUSER)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="MODIFYUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="modifyuser_000"><span onclick="newsort('<%=KlShoppingPiliangtime.ALIAS_MODIFYUSER%>');"><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_MODIFYUSER)%></span></th>
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
				
                	<c:set var="tt" value="SHOPID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="shopid_${v.id}" class="td123 shopidTd">
${my:showcont('KlShoppingPiliangtime','shopid',v.shopid,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="USERID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="userid_${v.id}" class="td123 useridTd">
${my:showcont('KlShoppingPiliangtime','userid',v.userid,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="COACHID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="coachid_${v.id}" class="td123 coachidTd">
${my:showcont('KlShoppingPiliangtime','coachid',v.coachid,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="SHOPPEDCLASSID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="shoppedclassid_${v.id}" class="td123 shoppedclassidTd">
${my:showcont('KlShoppingPiliangtime','shoppedclassid',v.shoppedclassid,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="DATEFROM"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="datefrom_${v.id}" class="td123 datefromTd">
${my:showcont('KlShoppingPiliangtime','datefrom',v.datefrom,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="DATETO"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="dateto_${v.id}" class="td123 datetoTd">
${my:showcont('KlShoppingPiliangtime','dateto',v.dateto,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="WEEKDAYS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="weekdays_${v.id}" class="td123 weekdaysTd">
${my:showcont('KlShoppingPiliangtime','weekdays',v.weekdays,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="TIMEFROM"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="timefrom_${v.id}" class="td123 timefromTd">
${my:showcont('KlShoppingPiliangtime','timefrom',v.timefrom,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="TIMETO"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="timeto_${v.id}" class="td123 timetoTd">
${my:showcont('KlShoppingPiliangtime','timeto',v.timeto,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="TIMEOK"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="timeok_${v.id}" class="td123 timeokTd">
${my:showcont('KlShoppingPiliangtime','timeok',v.timeok,0 )}							</td>
					</c:if>
				
				<!-- 
                	<c:set var="tt" value="EXT1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext1_${v.id}" class="td123 ext1Td">
${my:showcont('KlShoppingPiliangtime','ext1',v.ext1,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext2_${v.id}" class="td123 ext2Td">
${my:showcont('KlShoppingPiliangtime','ext2',v.ext2,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext3_${v.id}" class="td123 ext3Td">
${my:showcont('KlShoppingPiliangtime','ext3',v.ext3,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext4_${v.id}" class="td123 ext4Td">
${my:showcont('KlShoppingPiliangtime','ext4',v.ext4,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext5_${v.id}" class="td123 ext5Td">
${my:showcont('KlShoppingPiliangtime','ext5',v.ext5,0 )}							</td>
					</c:if>
				
				--> 
                	<c:set var="tt" value="EXT_INT1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extInt1_${v.id}" class="td123 extInt1Td">
${my:showcont('KlShoppingPiliangtime','extInt1',v.extInt1,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="EXT_INT2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extInt2_${v.id}" class="td123 extInt2Td">
${my:showcont('KlShoppingPiliangtime','extInt2',v.extInt2,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="EXT_INT3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extInt3_${v.id}" class="td123 extInt3Td">
${my:showcont('KlShoppingPiliangtime','extInt3',v.extInt3,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="EXT_INT4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extInt4_${v.id}" class="td123 extInt4Td">
${my:showcont('KlShoppingPiliangtime','extInt4',v.extInt4,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="EXT_INT5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extInt5_${v.id}" class="td123 extInt5Td">
${my:showcont('KlShoppingPiliangtime','extInt5',v.extInt5,0 )}							</td>
					</c:if>
				
				<!-- 
                	<c:set var="tt" value="STATUS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="status_${v.id}" class="td123 statusTd">
${my:showcont('KlShoppingPiliangtime','status',v.status,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="ADDITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="addition_${v.id}" class="td123 additionTd">
${my:showcont('KlShoppingPiliangtime','addition',v.addition,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="CREATETIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createtimelong_${v.id}" class="td123 createtimelongTd">
${my:showcont('KlShoppingPiliangtime','createtimelong',v.createtimelong,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="MODIFYTIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="modifytimelong_${v.id}" class="td123 modifytimelongTd">
${my:showcont('KlShoppingPiliangtime','modifytimelong',v.modifytimelong,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="CREATEUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createuser_${v.id}" class="td123 createuserTd">
${my:showcont('KlShoppingPiliangtime','createuser',v.createuser,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="MODIFYUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="modifyuser_${v.id}" class="td123 modifyuserTd">
${my:showcont('KlShoppingPiliangtime','modifyuser',v.modifyuser,0 )}							</td>
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
${my:input('KlShoppingPiliangtime','list_iframe',v.id,-1,0 )}${my:input('KlShoppingPiliangtime','list_blank',v.id,-1,0 )}
           
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
              <label><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_ID)%></label>
${my:input('KlShoppingPiliangtime','id',param.id,0,-1 )}						
						
              </p>
			
			 <p id="shopid_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_SHOPID)%></label>
${my:input('KlShoppingPiliangtime','shopid',param.shopid,0,-1 )}						
						
              </p>
			
			 <p id="userid_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_USERID)%></label>
${my:input('KlShoppingPiliangtime','userid',param.userid,0,-1 )}						
						
              </p>
			
			 <p id="coachid_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_COACHID)%></label>
${my:input('KlShoppingPiliangtime','coachid',param.coachid,0,-1 )}						
						
              </p>
			
			 <p id="shoppedclassid_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_SHOPPEDCLASSID)%></label>
${my:input('KlShoppingPiliangtime','shoppedclassid',param.shoppedclassid,0,-1 )}						
						
              </p>
			
			 <p id="datefrom_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_DATEFROM)%></label>
${my:input('KlShoppingPiliangtime','datefrom',param.datefrom,0,-1 )}						
						
              </p>
			
			 <p id="dateto_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_DATETO)%></label>
${my:input('KlShoppingPiliangtime','dateto',param.dateto,0,-1 )}						
						
              </p>
			
			 <p id="weekdays_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_WEEKDAYS)%></label>
${my:input('KlShoppingPiliangtime','weekdays',param.weekdays,0,-1 )}						
						
              </p>
			
			 <p id="timefrom_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_TIMEFROM)%></label>
${my:input('KlShoppingPiliangtime','timefrom',param.timefrom,0,-1 )}						
						
              </p>
			
			 <p id="timeto_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_TIMETO)%></label>
${my:input('KlShoppingPiliangtime','timeto',param.timeto,0,-1 )}						
						
              </p>
			
			 <p id="timeok_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_TIMEOK)%></label>
${my:input('KlShoppingPiliangtime','timeok',param.timeok,0,-1 )}						
						
              </p>
			
				<!-- 
			 <p id="ext1_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_EXT1)%></label>
${my:input('KlShoppingPiliangtime','ext1',param.ext1,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="ext2_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_EXT2)%></label>
${my:input('KlShoppingPiliangtime','ext2',param.ext2,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="ext3_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_EXT3)%></label>
${my:input('KlShoppingPiliangtime','ext3',param.ext3,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="ext4_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_EXT4)%></label>
${my:input('KlShoppingPiliangtime','ext4',param.ext4,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="ext5_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_EXT5)%></label>
${my:input('KlShoppingPiliangtime','ext5',param.ext5,0,-1 )}						
						
              </p>
				-->
			
			 <p id="extInt1_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_EXT_INT1)%></label>
${my:input('KlShoppingPiliangtime','extInt1',param.extInt1,0,-1 )}						
						
              </p>
			
			 <p id="extInt2_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_EXT_INT2)%></label>
${my:input('KlShoppingPiliangtime','extInt2',param.extInt2,0,-1 )}						
						
              </p>
			
			 <p id="extInt3_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_EXT_INT3)%></label>
${my:input('KlShoppingPiliangtime','extInt3',param.extInt3,0,-1 )}						
						
              </p>
			
			 <p id="extInt4_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_EXT_INT4)%></label>
${my:input('KlShoppingPiliangtime','extInt4',param.extInt4,0,-1 )}						
						
              </p>
			
			 <p id="extInt5_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_EXT_INT5)%></label>
${my:input('KlShoppingPiliangtime','extInt5',param.extInt5,0,-1 )}						
						
              </p>
			
				<!-- 
			 <p id="status_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_STATUS)%></label>
${my:input('KlShoppingPiliangtime','status',param.status,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="addition_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_ADDITION)%></label>
${my:input('KlShoppingPiliangtime','addition',param.addition,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="createtimelong_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_CREATETIMELONG)%></label>
${my:input('KlShoppingPiliangtime','createtimelong',param.createtimelong,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="modifytimelong_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_MODIFYTIMELONG)%></label>
${my:input('KlShoppingPiliangtime','modifytimelong',param.modifytimelong,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="createuser_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_CREATEUSER)%></label>
${my:input('KlShoppingPiliangtime','createuser',param.createuser,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="modifyuser_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingPiliangtime",KlShoppingPiliangtime.ALIAS_MODIFYUSER)%></label>
${my:input('KlShoppingPiliangtime','modifyuser',param.modifyuser,0,-1 )}						
						
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
