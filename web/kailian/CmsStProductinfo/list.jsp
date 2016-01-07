<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsStProductinfo.TABLE_ALIAS);
	Map map = new HashMap();
		map.put("ID", "1");
		map.put("PRODUCTNAME", "1");
		map.put("PRICE", "1");
		
		map.put("SHOPNAME", "1");
		/*
		map.put("SUBNAME", "1");
		map.put("PRODUCTID", "1");
		map.put("SHOPID", "1");
		map.put("PRODUCTIMG", "1");
		map.put("LINKTYPE", "1");
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
		map.put("STATUS", "1");
		
		map.put("ADDITION", "1");
		map.put("CREATETIMELONG", "1");
		map.put("MODIFYTIMELONG", "1");
		map.put("CREATEUSER", "1");
		map.put("MODIFYUSER", "1");
		/*
		map.put("TOPICID", "1");
		map.put("GROUPID", "1");
		*/
	request.setAttribute("showmap", map);
 %>
<c:set var="actionBasePath" value="/kailian/CmsStProductinfo" />
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
        <h3>小组“${group.groupname}”的<%=JSTLTagUtils.getCnname("CmsStProductinfo","table_name")%>列表
		&nbsp;&nbsp;
		
		<c:choose>
        	<c:when test="${param.fromiframe eq null or param.fromiframe eq ''}">
            <a class="button iframe" href="#" onclick="parent.addPanel('${ctx}/${actionBasePath}/create.do?groupid=${param.groupid}','新增产品');" title="新增">新增</a>
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
						<th id="id_000"><span onclick="newsort('<%=CmsStProductinfo.ALIAS_ID%>');"><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_ID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="PRODUCTNAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="productname_000"><span onclick="newsort('<%=CmsStProductinfo.ALIAS_PRODUCTNAME%>');"><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_PRODUCTNAME)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="PRICE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="price_000"><span onclick="newsort('<%=CmsStProductinfo.ALIAS_PRICE%>');"><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_PRICE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="PER_CLASS_MINUTES"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="perClassMinutes_000"><span onclick="newsort('<%=CmsStProductinfo.ALIAS_PER_CLASS_MINUTES%>');"><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_PER_CLASS_MINUTES)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="SHOPNAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="shopname_000"><span onclick="newsort('<%=CmsStProductinfo.ALIAS_SHOPNAME%>');"><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_SHOPNAME)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="SUBNAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="subname_000"><span onclick="newsort('<%=CmsStProductinfo.ALIAS_SUBNAME%>');"><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_SUBNAME)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="PRODUCTID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="productid_000"><span onclick="newsort('<%=CmsStProductinfo.ALIAS_PRODUCTID%>');"><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_PRODUCTID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="SHOPID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="shopid_000"><span onclick="newsort('<%=CmsStProductinfo.ALIAS_SHOPID%>');"><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_SHOPID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="PRODUCTIMG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="productimg_000"><span onclick="newsort('<%=CmsStProductinfo.ALIAS_PRODUCTIMG%>');"><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_PRODUCTIMG)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="LINKTYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="linktype_000"><span onclick="newsort('<%=CmsStProductinfo.ALIAS_LINKTYPE%>');"><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_LINKTYPE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="RANK"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="rank_000"><span onclick="newsort('<%=CmsStProductinfo.ALIAS_RANK%>');"><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_RANK)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="STYLECLASS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="styleclass_000"><span onclick="newsort('<%=CmsStProductinfo.ALIAS_STYLECLASS%>');"><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_STYLECLASS)%></span></th>
					</c:if>
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext1_000"><span onclick="newsort('<%=CmsStProductinfo.ALIAS_EXT1%>');"><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_EXT1)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext2_000"><span onclick="newsort('<%=CmsStProductinfo.ALIAS_EXT2%>');"><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_EXT2)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext3_000"><span onclick="newsort('<%=CmsStProductinfo.ALIAS_EXT3%>');"><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_EXT3)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext4_000"><span onclick="newsort('<%=CmsStProductinfo.ALIAS_EXT4%>');"><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_EXT4)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext5_000"><span onclick="newsort('<%=CmsStProductinfo.ALIAS_EXT5%>');"><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_EXT5)%></span></th>
					</c:if>
				-->	
			
				
			
                
                	<c:set var="tt" value="EXT_INT1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extInt1_000"><span onclick="newsort('<%=CmsStProductinfo.ALIAS_EXT_INT1%>');"><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_EXT_INT1)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="EXT_INT2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extInt2_000"><span onclick="newsort('<%=CmsStProductinfo.ALIAS_EXT_INT2%>');"><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_EXT_INT2)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="EXT_INT3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extInt3_000"><span onclick="newsort('<%=CmsStProductinfo.ALIAS_EXT_INT3%>');"><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_EXT_INT3)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="EXT_INT4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extInt4_000"><span onclick="newsort('<%=CmsStProductinfo.ALIAS_EXT_INT4%>');"><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_EXT_INT4)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="EXT_INT5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extInt5_000"><span onclick="newsort('<%=CmsStProductinfo.ALIAS_EXT_INT5%>');"><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_EXT_INT5)%></span></th>
					</c:if>
			
				<!-- 
				
			
                
                	<c:set var="tt" value="STATUS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="status_000"><span onclick="newsort('<%=CmsStProductinfo.ALIAS_STATUS%>');"><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_STATUS)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="ADDITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="addition_000"><span onclick="newsort('<%=CmsStProductinfo.ALIAS_ADDITION%>');"><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_ADDITION)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="CREATETIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="createtimelong_000"><span onclick="newsort('<%=CmsStProductinfo.ALIAS_CREATETIMELONG%>');"><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_CREATETIMELONG)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="MODIFYTIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="modifytimelong_000"><span onclick="newsort('<%=CmsStProductinfo.ALIAS_MODIFYTIMELONG%>');"><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_MODIFYTIMELONG)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="CREATEUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="createuser_000"><span onclick="newsort('<%=CmsStProductinfo.ALIAS_CREATEUSER%>');"><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_CREATEUSER)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="MODIFYUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="modifyuser_000"><span onclick="newsort('<%=CmsStProductinfo.ALIAS_MODIFYUSER%>');"><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_MODIFYUSER)%></span></th>
					</c:if>
				-->	
			
				
			
                
                	<c:set var="tt" value="TOPICID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="topicid_000"><span onclick="newsort('<%=CmsStProductinfo.ALIAS_TOPICID%>');"><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_TOPICID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="GROUPID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="groupid_000"><span onclick="newsort('<%=CmsStProductinfo.ALIAS_GROUPID%>');"><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_GROUPID)%></span></th>
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
				
                	<c:set var="tt" value="PRODUCTNAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="productname_${v.id}" class="td123 productnameTd">
${my:showcont('CmsStProductinfo','productname',v.productname,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="PRICE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="price_${v.id}" class="td123 priceTd">
${my:showcont('CmsStProductinfo','price',v.price,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="PER_CLASS_MINUTES"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="perClassMinutes_${v.id}" class="td123 perClassMinutesTd">
${my:showcont('CmsStProductinfo','perClassMinutes',v.perClassMinutes,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="SHOPNAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="shopname_${v.id}" class="td123 shopnameTd">
${my:showcont('CmsStProductinfo','shopname',v.shopname,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="SUBNAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="subname_${v.id}" class="td123 subnameTd">
${my:showcont('CmsStProductinfo','subname',v.subname,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="PRODUCTID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="productid_${v.id}" class="td123 productidTd">
${my:showcont('CmsStProductinfo','productid',v.productid,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="SHOPID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="shopid_${v.id}" class="td123 shopidTd">
${my:showcont('CmsStProductinfo','shopid',v.shopid,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="PRODUCTIMG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="productimg_${v.id}" class="td123 productimgTd">
${my:showcont('CmsStProductinfo','productimg',v.productimg,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="LINKTYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="linktype_${v.id}" class="td123 linktypeTd">
${my:showcont('CmsStProductinfo','linktype',v.linktype,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="RANK"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="rank_${v.id}" class="td123 rankTd">
${my:showcont('CmsStProductinfo','rank',v.rank,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="STYLECLASS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="styleclass_${v.id}" class="td123 styleclassTd">
${my:showcont('CmsStProductinfo','styleclass',v.styleclass,0 )}							</td>
					</c:if>
				
				<!-- 
                	<c:set var="tt" value="EXT1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext1_${v.id}" class="td123 ext1Td">
${my:showcont('CmsStProductinfo','ext1',v.ext1,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext2_${v.id}" class="td123 ext2Td">
${my:showcont('CmsStProductinfo','ext2',v.ext2,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext3_${v.id}" class="td123 ext3Td">
${my:showcont('CmsStProductinfo','ext3',v.ext3,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext4_${v.id}" class="td123 ext4Td">
${my:showcont('CmsStProductinfo','ext4',v.ext4,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext5_${v.id}" class="td123 ext5Td">
${my:showcont('CmsStProductinfo','ext5',v.ext5,0 )}							</td>
					</c:if>
				
				--> 
                	<c:set var="tt" value="EXT_INT1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extInt1_${v.id}" class="td123 extInt1Td">
${my:showcont('CmsStProductinfo','extInt1',v.extInt1,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="EXT_INT2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extInt2_${v.id}" class="td123 extInt2Td">
${my:showcont('CmsStProductinfo','extInt2',v.extInt2,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="EXT_INT3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extInt3_${v.id}" class="td123 extInt3Td">
${my:showcont('CmsStProductinfo','extInt3',v.extInt3,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="EXT_INT4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extInt4_${v.id}" class="td123 extInt4Td">
${my:showcont('CmsStProductinfo','extInt4',v.extInt4,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="EXT_INT5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extInt5_${v.id}" class="td123 extInt5Td">
${my:showcont('CmsStProductinfo','extInt5',v.extInt5,0 )}							</td>
					</c:if>
				
				<!-- 
                	<c:set var="tt" value="STATUS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="status_${v.id}" class="td123 statusTd">
${my:showcont('CmsStProductinfo','status',v.status,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="ADDITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="addition_${v.id}" class="td123 additionTd">
${my:showcont('CmsStProductinfo','addition',v.addition,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="CREATETIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createtimelong_${v.id}" class="td123 createtimelongTd">
${my:showcont('CmsStProductinfo','createtimelong',v.createtimelong,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="MODIFYTIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="modifytimelong_${v.id}" class="td123 modifytimelongTd">
${my:showcont('CmsStProductinfo','modifytimelong',v.modifytimelong,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="CREATEUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createuser_${v.id}" class="td123 createuserTd">
${my:showcont('CmsStProductinfo','createuser',v.createuser,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="MODIFYUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="modifyuser_${v.id}" class="td123 modifyuserTd">
${my:showcont('CmsStProductinfo','modifyuser',v.modifyuser,0 )}							</td>
					</c:if>
				
				--> 
                	<c:set var="tt" value="TOPICID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="topicid_${v.id}" class="td123 topicidTd">
${my:showcont('CmsStProductinfo','topicid',v.topicid,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="GROUPID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="groupid_${v.id}" class="td123 groupidTd">
${my:showcont('CmsStProductinfo','groupid',v.groupid,0 )}							</td>
					</c:if>
				
                
                <td id="operate_${v.id}" class="operate111">
                  <!-- Icons-->
             	<c:choose>
        	<c:when test="${param.fromiframe eq null or param.fromiframe eq ''}">
        		<!--
            	<a class="xinzeng111" href="${ctx}/${actionBasePath}/create.do" title="新增"><img src="${ctx}/admin/resources/images/icons/pencil.png" alt="新增" /></a>
                 -->
                  <a href="#" onclick="if(confirm('您确定要删除这条数据吗？')) window.location.href='${ctx}/${actionBasePath}/delete.do?items=${v.id}&groupid=${v.groupid}';" title="删除"><img src="${ctx}/admin/resources/images/icons/cross.png" alt="删除" /></a>
                  <a class="iframe" href="#" onclick="parent.addPanel('${ctx}/${actionBasePath}/edit.do?id=${v.id}','修改产品');" title="修改"><img src="${ctx}/admin/resources/images/icons/hammer_screwdriver.png" alt="修改" /></a> 
${my:input('CmsStProductinfo','list_iframe',v.id,-1,0 )}${my:input('CmsStProductinfo','list_blank',v.id,-1,0 )}
           
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
              <label><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_ID)%></label>
${my:input('CmsStProductinfo','id',param.id,0,-1 )}						
						
              </p>
			
			 <p id="productname_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_PRODUCTNAME)%></label>
${my:input('CmsStProductinfo','productname',param.productname,0,-1 )}						
						
              </p>
			
			 <p id="price_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_PRICE)%></label>
${my:input('CmsStProductinfo','price',param.price,0,-1 )}						
						
              </p>
			
			 <p id="perClassMinutes_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_PER_CLASS_MINUTES)%></label>
${my:input('CmsStProductinfo','perClassMinutes',param.perClassMinutes,0,-1 )}						
						
              </p>
			
			 <p id="shopname_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_SHOPNAME)%></label>
${my:input('CmsStProductinfo','shopname',param.shopname,0,-1 )}						
						
              </p>
			
			 <p id="subname_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_SUBNAME)%></label>
${my:input('CmsStProductinfo','subname',param.subname,0,-1 )}						
						
              </p>
			
			 <p id="productid_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_PRODUCTID)%></label>
${my:input('CmsStProductinfo','productid',param.productid,0,-1 )}						
						
              </p>
			
			 <p id="shopid_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_SHOPID)%></label>
${my:input('CmsStProductinfo','shopid',param.shopid,0,-1 )}						
						
              </p>
			
			 <p id="productimg_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_PRODUCTIMG)%></label>
${my:input('CmsStProductinfo','productimg',param.productimg,0,-1 )}						
						
              </p>
			
			 <p id="linktype_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_LINKTYPE)%></label>
${my:input('CmsStProductinfo','linktype',param.linktype,0,-1 )}						
						
              </p>
			
			 <p id="rank_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_RANK)%></label>
${my:input('CmsStProductinfo','rank',param.rank,0,-1 )}						
						
              </p>
			
			 <p id="styleclass_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_STYLECLASS)%></label>
${my:input('CmsStProductinfo','styleclass',param.styleclass,0,-1 )}						
						
              </p>
			
				<!-- 
			 <p id="ext1_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_EXT1)%></label>
${my:input('CmsStProductinfo','ext1',param.ext1,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="ext2_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_EXT2)%></label>
${my:input('CmsStProductinfo','ext2',param.ext2,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="ext3_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_EXT3)%></label>
${my:input('CmsStProductinfo','ext3',param.ext3,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="ext4_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_EXT4)%></label>
${my:input('CmsStProductinfo','ext4',param.ext4,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="ext5_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_EXT5)%></label>
${my:input('CmsStProductinfo','ext5',param.ext5,0,-1 )}						
						
              </p>
				-->
			
			 <p id="extInt1_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_EXT_INT1)%></label>
${my:input('CmsStProductinfo','extInt1',param.extInt1,0,-1 )}						
						
              </p>
			
			 <p id="extInt2_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_EXT_INT2)%></label>
${my:input('CmsStProductinfo','extInt2',param.extInt2,0,-1 )}						
						
              </p>
			
			 <p id="extInt3_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_EXT_INT3)%></label>
${my:input('CmsStProductinfo','extInt3',param.extInt3,0,-1 )}						
						
              </p>
			
			 <p id="extInt4_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_EXT_INT4)%></label>
${my:input('CmsStProductinfo','extInt4',param.extInt4,0,-1 )}						
						
              </p>
			
			 <p id="extInt5_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_EXT_INT5)%></label>
${my:input('CmsStProductinfo','extInt5',param.extInt5,0,-1 )}						
						
              </p>
			
				<!-- 
			 <p id="status_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_STATUS)%></label>
${my:input('CmsStProductinfo','status',param.status,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="addition_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_ADDITION)%></label>
${my:input('CmsStProductinfo','addition',param.addition,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="createtimelong_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_CREATETIMELONG)%></label>
${my:input('CmsStProductinfo','createtimelong',param.createtimelong,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="modifytimelong_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_MODIFYTIMELONG)%></label>
${my:input('CmsStProductinfo','modifytimelong',param.modifytimelong,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="createuser_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_CREATEUSER)%></label>
${my:input('CmsStProductinfo','createuser',param.createuser,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="modifyuser_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_MODIFYUSER)%></label>
${my:input('CmsStProductinfo','modifyuser',param.modifyuser,0,-1 )}						
						
              </p>
				-->
			
			 <p id="topicid_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_TOPICID)%></label>
${my:input('CmsStProductinfo','topicid',param.topicid,0,-1 )}						
						
              </p>
			
			 <p id="groupid_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_GROUPID)%></label>
${my:input('CmsStProductinfo','groupid',param.groupid,0,-1 )}						
						
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
		
		window.location.href = "${ctx}/${actionBasePath}/delete.do?items=" + items+"&groupid=${param.groupid}";
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
