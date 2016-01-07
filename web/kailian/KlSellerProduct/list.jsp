<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", KlSellerProduct.TABLE_ALIAS);
	Map map = new HashMap();
		map.put("ID", "1");
		//map.put("SHOP_ID", "1");
		map.put("NAME", "1");
		map.put("PRICE", "1");
		/*
		map.put("CLASS_COUNT", "1");
		map.put("PER_CLASS_MINUTES", "1");
		map.put("CATEGORYID", "1");
		map.put("VALID_DAYS", "1");
		map.put("TEACH_TYPE", "1");
		map.put("RETURN_CLASS_COUNT", "1");
		map.put("PHOTO", "1");
		map.put("PROVINCEID", "1");
		map.put("PROVINCE", "1");
		map.put("CITYID", "1");
		map.put("CITY", "1");
		map.put("QUID", "1");
		map.put("QU", "1");
		map.put("QUANID", "1");
		map.put("QUAN", "1");
		map.put("GOTO_HOME", "1");
		map.put("PLACE_PRICE_INCLUED", "1");
		map.put("PLACE_ADDITION", "1");
		map.put("ALL_CONSULTING", "1");
		map.put("FREE_CONSULTING", "1");
		map.put("DESCRIPTION", "1");
		map.put("TAGS", "1");
		map.put("SAVED_COUNT", "1");
		map.put("BUYED_COUNT", "1");
		map.put("FLOWER_COUNT", "1");
		map.put("EGG_COUNT", "1");
		map.put("MIDDLE_COUNT", "1");
		map.put("TEMPLATE_ID", "1");
		map.put("TEMPLATE", "1");
	*/
		map.put("STATUS", "1");
	/*
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
		map.put("EXT_INT1", "1");
		map.put("EXT_INT2", "1");
		map.put("EXT_INT3", "1");
		map.put("EXT_INT4", "1");
		map.put("EXT_INT5", "1");
	*/
	request.setAttribute("showmap", map);
 %>
<c:set var="actionBasePath" value="/kailian/KlSellerProduct" />
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
        <h3><%=JSTLTagUtils.getCnname("KlSellerProduct","table_name")%>列表
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
						<th id="id_000"><span onclick="newsort('<%=KlSellerProduct.ALIAS_ID%>');"><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_ID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="SHOP_ID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="shopId_000"><span onclick="newsort('<%=KlSellerProduct.ALIAS_SHOP_ID%>');"><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_SHOP_ID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="NAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="name_000"><span onclick="newsort('<%=KlSellerProduct.ALIAS_NAME%>');"><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_NAME)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="PRICE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="price_000"><span onclick="newsort('<%=KlSellerProduct.ALIAS_PRICE%>');"><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_PRICE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="CLASS_COUNT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="classCount_000"><span onclick="newsort('<%=KlSellerProduct.ALIAS_CLASS_COUNT%>');"><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_CLASS_COUNT)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="PER_CLASS_MINUTES"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="perClassMinutes_000"><span onclick="newsort('<%=KlSellerProduct.ALIAS_PER_CLASS_MINUTES%>');"><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_PER_CLASS_MINUTES)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="CATEGORYID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="categoryid_000"><span onclick="newsort('<%=KlSellerProduct.ALIAS_CATEGORYID%>');"><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_CATEGORYID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="VALID_DAYS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="validDays_000"><span onclick="newsort('<%=KlSellerProduct.ALIAS_VALID_DAYS%>');"><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_VALID_DAYS)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="TEACH_TYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="teachType_000"><span onclick="newsort('<%=KlSellerProduct.ALIAS_TEACH_TYPE%>');"><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_TEACH_TYPE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="RETURN_CLASS_COUNT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="returnClassCount_000"><span onclick="newsort('<%=KlSellerProduct.ALIAS_RETURN_CLASS_COUNT%>');"><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_RETURN_CLASS_COUNT)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="PHOTO"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="photo_000"><span onclick="newsort('<%=KlSellerProduct.ALIAS_PHOTO%>');"><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_PHOTO)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="PROVINCEID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="provinceid_000"><span onclick="newsort('<%=KlSellerProduct.ALIAS_PROVINCEID%>');"><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_PROVINCEID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="PROVINCE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="province_000"><span onclick="newsort('<%=KlSellerProduct.ALIAS_PROVINCE%>');"><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_PROVINCE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="CITYID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="cityid_000"><span onclick="newsort('<%=KlSellerProduct.ALIAS_CITYID%>');"><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_CITYID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="CITY"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="city_000"><span onclick="newsort('<%=KlSellerProduct.ALIAS_CITY%>');"><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_CITY)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="QUID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="quid_000"><span onclick="newsort('<%=KlSellerProduct.ALIAS_QUID%>');"><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_QUID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="QU"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="qu_000"><span onclick="newsort('<%=KlSellerProduct.ALIAS_QU%>');"><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_QU)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="QUANID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="quanid_000"><span onclick="newsort('<%=KlSellerProduct.ALIAS_QUANID%>');"><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_QUANID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="QUAN"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="quan_000"><span onclick="newsort('<%=KlSellerProduct.ALIAS_QUAN%>');"><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_QUAN)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="GOTO_HOME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="gotoHome_000"><span onclick="newsort('<%=KlSellerProduct.ALIAS_GOTO_HOME%>');"><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_GOTO_HOME)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="PLACE_PRICE_INCLUED"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="placePriceInclued_000"><span onclick="newsort('<%=KlSellerProduct.ALIAS_PLACE_PRICE_INCLUED%>');"><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_PLACE_PRICE_INCLUED)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="PLACE_ADDITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="placeAddition_000"><span onclick="newsort('<%=KlSellerProduct.ALIAS_PLACE_ADDITION%>');"><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_PLACE_ADDITION)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="ALL_CONSULTING"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="allConsulting_000"><span onclick="newsort('<%=KlSellerProduct.ALIAS_ALL_CONSULTING%>');"><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_ALL_CONSULTING)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="FREE_CONSULTING"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="freeConsulting_000"><span onclick="newsort('<%=KlSellerProduct.ALIAS_FREE_CONSULTING%>');"><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_FREE_CONSULTING)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="DESCRIPTION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="description_000"><span onclick="newsort('<%=KlSellerProduct.ALIAS_DESCRIPTION%>');"><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_DESCRIPTION)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="TAGS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="tags_000"><span onclick="newsort('<%=KlSellerProduct.ALIAS_TAGS%>');"><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_TAGS)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="SAVED_COUNT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="savedCount_000"><span onclick="newsort('<%=KlSellerProduct.ALIAS_SAVED_COUNT%>');"><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_SAVED_COUNT)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="BUYED_COUNT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="buyedCount_000"><span onclick="newsort('<%=KlSellerProduct.ALIAS_BUYED_COUNT%>');"><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_BUYED_COUNT)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="FLOWER_COUNT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="flowerCount_000"><span onclick="newsort('<%=KlSellerProduct.ALIAS_FLOWER_COUNT%>');"><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_FLOWER_COUNT)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="EGG_COUNT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="eggCount_000"><span onclick="newsort('<%=KlSellerProduct.ALIAS_EGG_COUNT%>');"><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_EGG_COUNT)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="MIDDLE_COUNT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="middleCount_000"><span onclick="newsort('<%=KlSellerProduct.ALIAS_MIDDLE_COUNT%>');"><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_MIDDLE_COUNT)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="TEMPLATE_ID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="templateId_000"><span onclick="newsort('<%=KlSellerProduct.ALIAS_TEMPLATE_ID%>');"><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_TEMPLATE_ID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="TEMPLATE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="template_000"><span onclick="newsort('<%=KlSellerProduct.ALIAS_TEMPLATE%>');"><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_TEMPLATE)%></span></th>
					</c:if>
			
			
				
			
                
                	<c:set var="tt" value="STATUS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="status_000"><span onclick="newsort('<%=KlSellerProduct.ALIAS_STATUS%>');"><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_STATUS)%></span></th>
					</c:if>
				<th id="extInt4_000"><span onclick="newsort('extInt4');">首页权重</span></th>
				<th id="ext6_000"><span onclick="newsort('ext6');">频道权重</span></th>
				<th id="ext7_000"><span onclick="newsort('ext7');">搜索权重</span></th>
				<!-- 
				
			
                
                	<c:set var="tt" value="ADDITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="addition_000"><span onclick="newsort('<%=KlSellerProduct.ALIAS_ADDITION%>');"><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_ADDITION)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="CREATETIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="createtimelong_000"><span onclick="newsort('<%=KlSellerProduct.ALIAS_CREATETIMELONG%>');"><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_CREATETIMELONG)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="MODIFYTIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="modifytimelong_000"><span onclick="newsort('<%=KlSellerProduct.ALIAS_MODIFYTIMELONG%>');"><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_MODIFYTIMELONG)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="CREATEUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="createuser_000"><span onclick="newsort('<%=KlSellerProduct.ALIAS_CREATEUSER%>');"><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_CREATEUSER)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="MODIFYUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="modifyuser_000"><span onclick="newsort('<%=KlSellerProduct.ALIAS_MODIFYUSER%>');"><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_MODIFYUSER)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext1_000"><span onclick="newsort('<%=KlSellerProduct.ALIAS_EXT1%>');"><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_EXT1)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext2_000"><span onclick="newsort('<%=KlSellerProduct.ALIAS_EXT2%>');"><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_EXT2)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext3_000"><span onclick="newsort('<%=KlSellerProduct.ALIAS_EXT3%>');"><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_EXT3)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext4_000"><span onclick="newsort('<%=KlSellerProduct.ALIAS_EXT4%>');"><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_EXT4)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext5_000"><span onclick="newsort('<%=KlSellerProduct.ALIAS_EXT5%>');"><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_EXT5)%></span></th>
					</c:if>
				-->	
			
				
			
                
                	<c:set var="tt" value="EXT_INT1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extInt1_000"><span onclick="newsort('<%=KlSellerProduct.ALIAS_EXT_INT1%>');"><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_EXT_INT1)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="EXT_INT2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extInt2_000"><span onclick="newsort('<%=KlSellerProduct.ALIAS_EXT_INT2%>');"><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_EXT_INT2)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="EXT_INT3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extInt3_000"><span onclick="newsort('<%=KlSellerProduct.ALIAS_EXT_INT3%>');"><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_EXT_INT3)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="EXT_INT4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extInt4_000"><span onclick="newsort('<%=KlSellerProduct.ALIAS_EXT_INT4%>');"><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_EXT_INT4)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="EXT_INT5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extInt5_000"><span onclick="newsort('<%=KlSellerProduct.ALIAS_EXT_INT5%>');"><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_EXT_INT5)%></span></th>
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
				
                	<c:set var="tt" value="SHOP_ID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="shopId_${v.id}" class="td123 shopIdTd">
${my:showcont('KlSellerProduct','shopId',v.shopId,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="NAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="name_${v.id}" class="td123 nameTd">
${my:showcont('KlSellerProduct','name',v.name,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="PRICE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="price_${v.id}" class="td123 priceTd">
${my:showcont('KlSellerProduct','price',v.price,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="CLASS_COUNT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="classCount_${v.id}" class="td123 classCountTd">
${my:showcont('KlSellerProduct','classCount',v.classCount,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="PER_CLASS_MINUTES"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="perClassMinutes_${v.id}" class="td123 perClassMinutesTd">
${my:showcont('KlSellerProduct','perClassMinutes',v.perClassMinutes,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="CATEGORYID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="categoryid_${v.id}" class="td123 categoryidTd">
${my:showcont('KlSellerProduct','categoryid',v.categoryid,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="VALID_DAYS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="validDays_${v.id}" class="td123 validDaysTd">
${my:showcont('KlSellerProduct','validDays',v.validDays,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="TEACH_TYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="teachType_${v.id}" class="td123 teachTypeTd">
${my:showcont('KlSellerProduct','teachType',v.teachType,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="RETURN_CLASS_COUNT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="returnClassCount_${v.id}" class="td123 returnClassCountTd">
${my:showcont('KlSellerProduct','returnClassCount',v.returnClassCount,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="PHOTO"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="photo_${v.id}" class="td123 photoTd">
${my:showcont('KlSellerProduct','photo',v.photo,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="PROVINCEID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="provinceid_${v.id}" class="td123 provinceidTd">
${my:showcont('KlSellerProduct','provinceid',v.provinceid,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="PROVINCE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="province_${v.id}" class="td123 provinceTd">
${my:showcont('KlSellerProduct','province',v.province,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="CITYID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="cityid_${v.id}" class="td123 cityidTd">
${my:showcont('KlSellerProduct','cityid',v.cityid,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="CITY"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="city_${v.id}" class="td123 cityTd">
${my:showcont('KlSellerProduct','city',v.city,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="QUID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="quid_${v.id}" class="td123 quidTd">
${my:showcont('KlSellerProduct','quid',v.quid,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="QU"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="qu_${v.id}" class="td123 quTd">
${my:showcont('KlSellerProduct','qu',v.qu,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="QUANID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="quanid_${v.id}" class="td123 quanidTd">
${my:showcont('KlSellerProduct','quanid',v.quanid,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="QUAN"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="quan_${v.id}" class="td123 quanTd">
${my:showcont('KlSellerProduct','quan',v.quan,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="GOTO_HOME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="gotoHome_${v.id}" class="td123 gotoHomeTd">
${my:showcont('KlSellerProduct','gotoHome',v.gotoHome,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="PLACE_PRICE_INCLUED"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="placePriceInclued_${v.id}" class="td123 placePriceIncluedTd">
${my:showcont('KlSellerProduct','placePriceInclued',v.placePriceInclued,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="PLACE_ADDITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="placeAddition_${v.id}" class="td123 placeAdditionTd">
${my:showcont('KlSellerProduct','placeAddition',v.placeAddition,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="ALL_CONSULTING"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="allConsulting_${v.id}" class="td123 allConsultingTd">
${my:showcont('KlSellerProduct','allConsulting',v.allConsulting,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="FREE_CONSULTING"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="freeConsulting_${v.id}" class="td123 freeConsultingTd">
${my:showcont('KlSellerProduct','freeConsulting',v.freeConsulting,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="DESCRIPTION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="description_${v.id}" class="td123 descriptionTd">
${my:showcont('KlSellerProduct','description',v.description,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="TAGS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="tags_${v.id}" class="td123 tagsTd">
${my:showcont('KlSellerProduct','tags',v.tags,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="SAVED_COUNT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="savedCount_${v.id}" class="td123 savedCountTd">
${my:showcont('KlSellerProduct','savedCount',v.savedCount,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="BUYED_COUNT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="buyedCount_${v.id}" class="td123 buyedCountTd">
${my:showcont('KlSellerProduct','buyedCount',v.buyedCount,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="FLOWER_COUNT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="flowerCount_${v.id}" class="td123 flowerCountTd">
${my:showcont('KlSellerProduct','flowerCount',v.flowerCount,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="EGG_COUNT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="eggCount_${v.id}" class="td123 eggCountTd">
${my:showcont('KlSellerProduct','eggCount',v.eggCount,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="MIDDLE_COUNT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="middleCount_${v.id}" class="td123 middleCountTd">
${my:showcont('KlSellerProduct','middleCount',v.middleCount,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="TEMPLATE_ID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="templateId_${v.id}" class="td123 templateIdTd">
${my:showcont('KlSellerProduct','templateId',v.templateId,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="TEMPLATE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="template_${v.id}" class="td123 templateTd">
${my:showcont('KlSellerProduct','template',v.template,0 )}							</td>
					</c:if>
				
				
                	<c:set var="tt" value="STATUS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="status_${v.id}" class="td123 statusTd">
${my:showcont('KlSellerProduct','status',v.status,0 )}							</td>
					</c:if>
				<td id="extInt4_${v.id}" class="td123 extInt4Td">
				<c:choose><c:when test="${v.extInt4 eq null}">0</c:when><c:otherwise>${v.extInt4}</c:otherwise></c:choose>
				<a onclick="paixu(${v.id});">设置</a>
				<a onclick="quxiaopaixu(${v.id});">取消</a>
				</td>
				
				
				<td id="ext6_${v.id}" class="td123 ext6Td">
				<c:choose><c:when test="${v.ext6 eq null}">0</c:when><c:otherwise>${v.ext6}</c:otherwise></c:choose>
				<a onclick="pindao(${v.id});">设置</a>
				<a onclick="quxiaopindao(${v.id});">取消</a>
				</td>
				
				<td id="ext7_${v.id}" class="td123 ext7Td">
				<c:choose><c:when test="${v.ext7 eq null}">0</c:when><c:otherwise>${v.ext7}</c:otherwise></c:choose>
				<a onclick="sousuo(${v.id});">设置</a>
				<a onclick="quxiaosousuo(${v.id});">取消</a>
				</td>
				
				<!-- 
                	<c:set var="tt" value="ADDITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="addition_${v.id}" class="td123 additionTd">
${my:showcont('KlSellerProduct','addition',v.addition,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="CREATETIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createtimelong_${v.id}" class="td123 createtimelongTd">
${my:showcont('KlSellerProduct','createtimelong',v.createtimelong,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="MODIFYTIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="modifytimelong_${v.id}" class="td123 modifytimelongTd">
${my:showcont('KlSellerProduct','modifytimelong',v.modifytimelong,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="CREATEUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createuser_${v.id}" class="td123 createuserTd">
${my:showcont('KlSellerProduct','createuser',v.createuser,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="MODIFYUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="modifyuser_${v.id}" class="td123 modifyuserTd">
${my:showcont('KlSellerProduct','modifyuser',v.modifyuser,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext1_${v.id}" class="td123 ext1Td">
${my:showcont('KlSellerProduct','ext1',v.ext1,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext2_${v.id}" class="td123 ext2Td">
${my:showcont('KlSellerProduct','ext2',v.ext2,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext3_${v.id}" class="td123 ext3Td">
${my:showcont('KlSellerProduct','ext3',v.ext3,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext4_${v.id}" class="td123 ext4Td">
${my:showcont('KlSellerProduct','ext4',v.ext4,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext5_${v.id}" class="td123 ext5Td">
${my:showcont('KlSellerProduct','ext5',v.ext5,0 )}							</td>
					</c:if>
				
				--> 
                	<c:set var="tt" value="EXT_INT1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extInt1_${v.id}" class="td123 extInt1Td">
${my:showcont('KlSellerProduct','extInt1',v.extInt1,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="EXT_INT2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extInt2_${v.id}" class="td123 extInt2Td">
${my:showcont('KlSellerProduct','extInt2',v.extInt2,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="EXT_INT3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extInt3_${v.id}" class="td123 extInt3Td">
${my:showcont('KlSellerProduct','extInt3',v.extInt3,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="EXT_INT4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extInt4_${v.id}" class="td123 extInt4Td">
${my:showcont('KlSellerProduct','extInt4',v.extInt4,0 )}							
			
</td>
					</c:if>
					

					
				
                	<c:set var="tt" value="EXT_INT5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extInt5_${v.id}" class="td123 extInt5Td">
${my:showcont('KlSellerProduct','extInt5',v.extInt5,0 )}							</td>
					</c:if>
				
                
                <td id="operate_${v.id}" class="operate111">
                  <!-- Icons-->
             	<c:choose>
        	<c:when test="${param.fromiframe eq null or param.fromiframe eq ''}">
        		<!--
            	<a class="xinzeng111" href="${ctx}/${actionBasePath}/create.do" title="新增"><img src="${ctx}/admin/resources/images/icons/pencil.png" alt="新增" /></a>
                 -->
                  <a href="#" onclick="if(confirm('您确定要删除这条数据吗？')) window.location.href='${ctx}/${actionBasePath}/delete.do?items=${v.id}';" title="删除"><img src="${ctx}/admin/resources/images/icons/cross.png" alt="删除" /></a>
                 
                 <c:choose>
                 	<c:when test="${v.status eq 0}">
                 		<a href="#" onclick="subajax('${ctx}/kailian/KlSellerProduct/updateStatus.do?id=${v.id}&status=1&ajax=ajax');">通过</a>
                 		&nbsp;&nbsp;
                 		<a href='#' onclick="subajax('${ctx}/kailian/KlSellerShop/updateStatus.do?id=${v.id}&status=-3&ajax=ajax');">拒绝</a>
                 	</c:when>
                 	<c:when test="${v.status eq 1}">
                 		<a href='#' onclick="subajax('${ctx}/kailian/KlSellerProduct/updateStatus.do?id=${v.id}&status=-3&ajax=ajax');">下线</a>
                 	</c:when>
                 </c:choose>
                 <a href="${ctx}/kailian/KlSellerProduct/index.do?id=${v.id}" target="_blank">查看</a>
                 <a href="${ctx}/kailian/KlSellerProduct/excel.do?id=${v.id}" target="_blank">导出数据</a>
                 <!-- 
                  <a class="iframe" href="${ctx}/${actionBasePath}/edit.do?id=${v.id}" title="修改"><img src="${ctx}/admin/resources/images/icons/hammer_screwdriver.png" alt="修改" /></a> 
${my:input('KlSellerProduct','list_iframe',v.id,-1,0 )}${my:input('KlSellerProduct','list_blank',v.id,-1,0 )}
            -->

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
			<input type="hidden" id="shopId" name="shopId" value="${param.shopId}" />
			
			<fieldset>
			
			 <p id="id_formp">
              <label><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_ID)%></label>
${my:input('KlSellerProduct','id',param.id,0,-1 )}						
						
              </p>
              
              <!-- 
			
			 <p id="shopId_formp">
              <label><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_SHOP_ID)%></label>
${my:input('KlSellerProduct','shopId',param.shopId,0,-1 )}						
						
              </p>
			 -->
			 <p id="name_formp">
              <label><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_NAME)%></label>
${my:input('KlSellerProduct','name',param.name,0,-1 )}						
						
              </p>
			<!-- 
			 <p id="price_formp">
              <label><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_PRICE)%></label>
${my:input('KlSellerProduct','price',param.price,0,-1 )}						
						
              </p>
			
			 <p id="classCount_formp">
              <label><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_CLASS_COUNT)%></label>
${my:input('KlSellerProduct','classCount',param.classCount,0,-1 )}						
						
              </p>
			
			 <p id="perClassMinutes_formp">
              <label><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_PER_CLASS_MINUTES)%></label>
${my:input('KlSellerProduct','perClassMinutes',param.perClassMinutes,0,-1 )}						
						
              </p>
			
			 <p id="categoryid_formp">
              <label><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_CATEGORYID)%></label>
${my:input('KlSellerProduct','categoryid',param.categoryid,0,-1 )}						
						
              </p>
			
			 <p id="validDays_formp">
              <label><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_VALID_DAYS)%></label>
${my:input('KlSellerProduct','validDays',param.validDays,0,-1 )}						
						
              </p>
			
			 <p id="teachType_formp">
              <label><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_TEACH_TYPE)%></label>
${my:input('KlSellerProduct','teachType',param.teachType,0,-1 )}						
						
              </p>
			
			 <p id="returnClassCount_formp">
              <label><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_RETURN_CLASS_COUNT)%></label>
${my:input('KlSellerProduct','returnClassCount',param.returnClassCount,0,-1 )}						
						
              </p>
			
			 <p id="photo_formp">
              <label><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_PHOTO)%></label>
${my:input('KlSellerProduct','photo',param.photo,0,-1 )}						
						
              </p>
			
			 <p id="provinceid_formp">
              <label><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_PROVINCEID)%></label>
${my:input('KlSellerProduct','provinceid',param.provinceid,0,-1 )}						
						
              </p>
			
			 <p id="province_formp">
              <label><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_PROVINCE)%></label>
${my:input('KlSellerProduct','province',param.province,0,-1 )}						
						
              </p>
			
			 <p id="cityid_formp">
              <label><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_CITYID)%></label>
${my:input('KlSellerProduct','cityid',param.cityid,0,-1 )}						
						
              </p>
			
			 <p id="city_formp">
              <label><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_CITY)%></label>
${my:input('KlSellerProduct','city',param.city,0,-1 )}						
						
              </p>
			
			 <p id="quid_formp">
              <label><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_QUID)%></label>
${my:input('KlSellerProduct','quid',param.quid,0,-1 )}						
						
              </p>
			
			 <p id="qu_formp">
              <label><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_QU)%></label>
${my:input('KlSellerProduct','qu',param.qu,0,-1 )}						
						
              </p>
			
			 <p id="quanid_formp">
              <label><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_QUANID)%></label>
${my:input('KlSellerProduct','quanid',param.quanid,0,-1 )}						
						
              </p>
			
			 <p id="quan_formp">
              <label><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_QUAN)%></label>
${my:input('KlSellerProduct','quan',param.quan,0,-1 )}						
						
              </p>
			
			 <p id="gotoHome_formp">
              <label><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_GOTO_HOME)%></label>
${my:input('KlSellerProduct','gotoHome',param.gotoHome,0,-1 )}						
						
              </p>
			
			 <p id="placePriceInclued_formp">
              <label><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_PLACE_PRICE_INCLUED)%></label>
${my:input('KlSellerProduct','placePriceInclued',param.placePriceInclued,0,-1 )}						
						
              </p>
			
			 <p id="placeAddition_formp">
              <label><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_PLACE_ADDITION)%></label>
${my:input('KlSellerProduct','placeAddition',param.placeAddition,0,-1 )}						
						
              </p>
			
			 <p id="allConsulting_formp">
              <label><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_ALL_CONSULTING)%></label>
${my:input('KlSellerProduct','allConsulting',param.allConsulting,0,-1 )}						
						
              </p>
			
			 <p id="freeConsulting_formp">
              <label><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_FREE_CONSULTING)%></label>
${my:input('KlSellerProduct','freeConsulting',param.freeConsulting,0,-1 )}						
						
              </p>
			
			 <p id="description_formp">
              <label><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_DESCRIPTION)%></label>
${my:input('KlSellerProduct','description',param.description,0,-1 )}						
						
              </p>
			
			 <p id="tags_formp">
              <label><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_TAGS)%></label>
${my:input('KlSellerProduct','tags',param.tags,0,-1 )}						
						
              </p>
			
			 <p id="savedCount_formp">
              <label><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_SAVED_COUNT)%></label>
${my:input('KlSellerProduct','savedCount',param.savedCount,0,-1 )}						
						
              </p>
			
			 <p id="buyedCount_formp">
              <label><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_BUYED_COUNT)%></label>
${my:input('KlSellerProduct','buyedCount',param.buyedCount,0,-1 )}						
						
              </p>
			
			 <p id="flowerCount_formp">
              <label><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_FLOWER_COUNT)%></label>
${my:input('KlSellerProduct','flowerCount',param.flowerCount,0,-1 )}						
						
              </p>
			
			 <p id="eggCount_formp">
              <label><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_EGG_COUNT)%></label>
${my:input('KlSellerProduct','eggCount',param.eggCount,0,-1 )}						
						
              </p>
			
			 <p id="middleCount_formp">
              <label><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_MIDDLE_COUNT)%></label>
${my:input('KlSellerProduct','middleCount',param.middleCount,0,-1 )}						
						
              </p>
			
			 <p id="templateId_formp">
              <label><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_TEMPLATE_ID)%></label>
${my:input('KlSellerProduct','templateId',param.templateId,0,-1 )}						
						
              </p>
			
			 <p id="template_formp">
              <label><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_TEMPLATE)%></label>
${my:input('KlSellerProduct','template',param.template,0,-1 )}						
						
              </p>
			 -->
				
			 <p id="status_formp">
              <label><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_STATUS)%></label>
${my:input('KlSellerProduct','status',param.status,0,-1 )}						
						
              </p>
				
			
				<!-- 
			 <p id="addition_formp">
              <label><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_ADDITION)%></label>
${my:input('KlSellerProduct','addition',param.addition,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="createtimelong_formp">
              <label><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_CREATETIMELONG)%></label>
${my:input('KlSellerProduct','createtimelong',param.createtimelong,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="modifytimelong_formp">
              <label><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_MODIFYTIMELONG)%></label>
${my:input('KlSellerProduct','modifytimelong',param.modifytimelong,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="createuser_formp">
              <label><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_CREATEUSER)%></label>
${my:input('KlSellerProduct','createuser',param.createuser,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="modifyuser_formp">
              <label><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_MODIFYUSER)%></label>
${my:input('KlSellerProduct','modifyuser',param.modifyuser,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="ext1_formp">
              <label><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_EXT1)%></label>
${my:input('KlSellerProduct','ext1',param.ext1,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="ext2_formp">
              <label><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_EXT2)%></label>
${my:input('KlSellerProduct','ext2',param.ext2,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="ext3_formp">
              <label><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_EXT3)%></label>
${my:input('KlSellerProduct','ext3',param.ext3,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="ext4_formp">
              <label><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_EXT4)%></label>
${my:input('KlSellerProduct','ext4',param.ext4,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="ext5_formp">
              <label><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_EXT5)%></label>
${my:input('KlSellerProduct','ext5',param.ext5,0,-1 )}						
						
              </p>
				
			
			 <p id="extInt1_formp">
              <label><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_EXT_INT1)%></label>
${my:input('KlSellerProduct','extInt1',param.extInt1,0,-1 )}						
						
              </p>
			
			 <p id="extInt2_formp">
              <label><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_EXT_INT2)%></label>
${my:input('KlSellerProduct','extInt2',param.extInt2,0,-1 )}						
						
              </p>
			
			 <p id="extInt3_formp">
              <label><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_EXT_INT3)%></label>
${my:input('KlSellerProduct','extInt3',param.extInt3,0,-1 )}						
						
              </p>
			
			 <p id="extInt4_formp">
              <label><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_EXT_INT4)%></label>
${my:input('KlSellerProduct','extInt4',param.extInt4,0,-1 )}						
						
              </p>
			
			 <p id="extInt5_formp">
              <label><%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_EXT_INT5)%></label>
${my:input('KlSellerProduct','extInt5',param.extInt5,0,-1 )}						
						
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
	var iiids = [];
	<c:forEach var="v" varStatus="vs" items="${pg.result}">
		iiids[iiids.length] = ${v.id};
	</c:forEach>
		var items = "";
		for (var i = 1; i <= 10; i ++) {
			if($("#checkbox_" + iiids[i]).attr("checked")=="checked") {
				if (items == "")
					items += "" + iiids[i];
				else 
					items += "," + iiids[i];
				
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
	
	
	function paixu(pid) {
		var paixu=prompt("请输入首页推荐排序数字，数字越大越靠前：");
          		if (paixu == null || paixu== "")
          		{
          			alert("请输入首页推荐排序数字");
          			return;
          		}
          
          subajax("${ctx}/kailian/KlSellerProduct/updateStatus.do?id=" + pid  + "&ajax=ajax&indexweight=" + paixu);
       }
       
      function quxiaopaixu(pid) {
		var paixu = 0;
          subajax("${ctx}/kailian/KlSellerProduct/updateStatus.do?id=" + pid  + "&ajax=ajax&indexweight=" + paixu);
       }
       
       
       function pindao(pid) {
		var paixu=prompt("请输入频道排序数字，数字越大越靠前：");
          		if (paixu == null || paixu== "")
          		{
          			alert("请输入首页推荐排序数字");
          			return;
          		}
          
          subajax("${ctx}/kailian/KlSellerProduct/updateStatus.do?id=" + pid  + "&ajax=ajax&channelweight=" + paixu);
       }
       
      function quxiaopindao(pid) {
		var paixu = 0;
          subajax("${ctx}/kailian/KlSellerProduct/updateStatus.do?id=" + pid  + "&ajax=ajax&channelweight=" + paixu);
       }
       
       
       function sousuo(pid) {
		var paixu=prompt("请输入搜索排序数字，数字越大越靠前：");
          		if (paixu == null || paixu== "")
          		{
          			alert("请输入首页推荐排序数字");
          			return;
          		}
          
          subajax("${ctx}/kailian/KlSellerProduct/updateStatus.do?id=" + pid  + "&ajax=ajax&searchweight=" + paixu);
       }
       
      function sousuopaixu(pid) {
		var paixu = 0;
          subajax("${ctx}/kailian/KlSellerProduct/updateStatus.do?id=" + pid  + "&ajax=ajax&searchweight=" + paixu);
       }
	
	
</script>
<!-- Download From www.exet.tk-->
</html>
