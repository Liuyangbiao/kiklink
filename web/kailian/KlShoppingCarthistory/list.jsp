<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", KlShoppingCarthistory.TABLE_ALIAS);
	Map map = new HashMap();
		map.put("ID", "1");
		map.put("ORDERID", "1");
		map.put("SHOPID", "1");
		map.put("PRODUCTID", "1");
		map.put("SHOPCARTID", "1");
		map.put("PRODUCT_NAME", "1");
		map.put("SHOP_NAME", "1");
		map.put("USERID", "1");
		map.put("USERNAME", "1");
		map.put("CLASS_COUNT", "1");
		map.put("PER_PRICE", "1");
		map.put("PRICE", "1");
		map.put("COUNT", "1");
		map.put("COUPON_ID", "1");
		map.put("COUPON_PRICE", "1");
		map.put("PAYWAY", "1");
		map.put("PAYBANK", "1");
		map.put("PAYUSERNAME", "1");
		map.put("PAYACCOUNT", "1");
		map.put("MOBILE", "1");
		map.put("EMAIL", "1");
		map.put("SHOPMOBILE", "1");
		map.put("SHOPEMAIL", "1");
		map.put("PAYFLOWNUMBER", "1");
		map.put("YUYUEMA", "1");
		map.put("STATUS", "1");
		map.put("STATUSSTR", "1");
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
	request.setAttribute("showmap", map);
 %>
<c:set var="actionBasePath" value="/kailian/KlShoppingCarthistory" />
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
        <h3><%=JSTLTagUtils.getCnname("KlShoppingCarthistory","table_name")%>列表
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
						<th id="id_000"><span onclick="newsort('<%=KlShoppingCarthistory.ALIAS_ID%>');"><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_ID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="ORDERID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="orderid_000"><span onclick="newsort('<%=KlShoppingCarthistory.ALIAS_ORDERID%>');"><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_ORDERID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="SHOPID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="shopid_000"><span onclick="newsort('<%=KlShoppingCarthistory.ALIAS_SHOPID%>');"><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_SHOPID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="PRODUCTID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="productid_000"><span onclick="newsort('<%=KlShoppingCarthistory.ALIAS_PRODUCTID%>');"><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_PRODUCTID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="SHOPCARTID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="shopcartid_000"><span onclick="newsort('<%=KlShoppingCarthistory.ALIAS_SHOPCARTID%>');"><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_SHOPCARTID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="PRODUCT_NAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="productName_000"><span onclick="newsort('<%=KlShoppingCarthistory.ALIAS_PRODUCT_NAME%>');"><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_PRODUCT_NAME)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="SHOP_NAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="shopName_000"><span onclick="newsort('<%=KlShoppingCarthistory.ALIAS_SHOP_NAME%>');"><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_SHOP_NAME)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="USERID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="userid_000"><span onclick="newsort('<%=KlShoppingCarthistory.ALIAS_USERID%>');"><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_USERID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="USERNAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="username_000"><span onclick="newsort('<%=KlShoppingCarthistory.ALIAS_USERNAME%>');"><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_USERNAME)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="CLASS_COUNT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="classCount_000"><span onclick="newsort('<%=KlShoppingCarthistory.ALIAS_CLASS_COUNT%>');"><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_CLASS_COUNT)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="PER_PRICE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="perPrice_000"><span onclick="newsort('<%=KlShoppingCarthistory.ALIAS_PER_PRICE%>');"><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_PER_PRICE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="PRICE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="price_000"><span onclick="newsort('<%=KlShoppingCarthistory.ALIAS_PRICE%>');"><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_PRICE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="COUNT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="count_000"><span onclick="newsort('<%=KlShoppingCarthistory.ALIAS_COUNT%>');"><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_COUNT)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="COUPON_ID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="couponId_000"><span onclick="newsort('<%=KlShoppingCarthistory.ALIAS_COUPON_ID%>');"><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_COUPON_ID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="COUPON_PRICE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="couponPrice_000"><span onclick="newsort('<%=KlShoppingCarthistory.ALIAS_COUPON_PRICE%>');"><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_COUPON_PRICE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="PAYWAY"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="payway_000"><span onclick="newsort('<%=KlShoppingCarthistory.ALIAS_PAYWAY%>');"><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_PAYWAY)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="PAYBANK"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="paybank_000"><span onclick="newsort('<%=KlShoppingCarthistory.ALIAS_PAYBANK%>');"><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_PAYBANK)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="PAYUSERNAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="payusername_000"><span onclick="newsort('<%=KlShoppingCarthistory.ALIAS_PAYUSERNAME%>');"><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_PAYUSERNAME)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="PAYACCOUNT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="payaccount_000"><span onclick="newsort('<%=KlShoppingCarthistory.ALIAS_PAYACCOUNT%>');"><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_PAYACCOUNT)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="MOBILE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="mobile_000"><span onclick="newsort('<%=KlShoppingCarthistory.ALIAS_MOBILE%>');"><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_MOBILE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="EMAIL"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="email_000"><span onclick="newsort('<%=KlShoppingCarthistory.ALIAS_EMAIL%>');"><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_EMAIL)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="SHOPMOBILE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="shopmobile_000"><span onclick="newsort('<%=KlShoppingCarthistory.ALIAS_SHOPMOBILE%>');"><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_SHOPMOBILE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="SHOPEMAIL"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="shopemail_000"><span onclick="newsort('<%=KlShoppingCarthistory.ALIAS_SHOPEMAIL%>');"><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_SHOPEMAIL)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="PAYFLOWNUMBER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="payflownumber_000"><span onclick="newsort('<%=KlShoppingCarthistory.ALIAS_PAYFLOWNUMBER%>');"><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_PAYFLOWNUMBER)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="YUYUEMA"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="yuyuema_000"><span onclick="newsort('<%=KlShoppingCarthistory.ALIAS_YUYUEMA%>');"><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_YUYUEMA)%></span></th>
					</c:if>
			
				<!-- 
				
			
                
                	<c:set var="tt" value="STATUS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="status_000"><span onclick="newsort('<%=KlShoppingCarthistory.ALIAS_STATUS%>');"><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_STATUS)%></span></th>
					</c:if>
				-->	
			
				
			
                
                	<c:set var="tt" value="STATUSSTR"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="statusstr_000"><span onclick="newsort('<%=KlShoppingCarthistory.ALIAS_STATUSSTR%>');"><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_STATUSSTR)%></span></th>
					</c:if>
			
				<!-- 
				
			
                
                	<c:set var="tt" value="ADDITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="addition_000"><span onclick="newsort('<%=KlShoppingCarthistory.ALIAS_ADDITION%>');"><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_ADDITION)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="CREATETIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="createtimelong_000"><span onclick="newsort('<%=KlShoppingCarthistory.ALIAS_CREATETIMELONG%>');"><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_CREATETIMELONG)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="MODIFYTIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="modifytimelong_000"><span onclick="newsort('<%=KlShoppingCarthistory.ALIAS_MODIFYTIMELONG%>');"><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_MODIFYTIMELONG)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="CREATEUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="createuser_000"><span onclick="newsort('<%=KlShoppingCarthistory.ALIAS_CREATEUSER%>');"><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_CREATEUSER)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="MODIFYUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="modifyuser_000"><span onclick="newsort('<%=KlShoppingCarthistory.ALIAS_MODIFYUSER%>');"><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_MODIFYUSER)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext1_000"><span onclick="newsort('<%=KlShoppingCarthistory.ALIAS_EXT1%>');"><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_EXT1)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext2_000"><span onclick="newsort('<%=KlShoppingCarthistory.ALIAS_EXT2%>');"><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_EXT2)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext3_000"><span onclick="newsort('<%=KlShoppingCarthistory.ALIAS_EXT3%>');"><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_EXT3)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext4_000"><span onclick="newsort('<%=KlShoppingCarthistory.ALIAS_EXT4%>');"><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_EXT4)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="EXT5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ext5_000"><span onclick="newsort('<%=KlShoppingCarthistory.ALIAS_EXT5%>');"><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_EXT5)%></span></th>
					</c:if>
				-->	
			
				
			
                
                	<c:set var="tt" value="EXT_INT1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extInt1_000"><span onclick="newsort('<%=KlShoppingCarthistory.ALIAS_EXT_INT1%>');"><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_EXT_INT1)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="EXT_INT2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extInt2_000"><span onclick="newsort('<%=KlShoppingCarthistory.ALIAS_EXT_INT2%>');"><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_EXT_INT2)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="EXT_INT3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extInt3_000"><span onclick="newsort('<%=KlShoppingCarthistory.ALIAS_EXT_INT3%>');"><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_EXT_INT3)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="EXT_INT4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extInt4_000"><span onclick="newsort('<%=KlShoppingCarthistory.ALIAS_EXT_INT4%>');"><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_EXT_INT4)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="EXT_INT5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="extInt5_000"><span onclick="newsort('<%=KlShoppingCarthistory.ALIAS_EXT_INT5%>');"><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_EXT_INT5)%></span></th>
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
				
                	<c:set var="tt" value="ORDERID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="orderid_${v.id}" class="td123 orderidTd">
${my:showcont('KlShoppingCarthistory','orderid',v.orderid,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="SHOPID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="shopid_${v.id}" class="td123 shopidTd">
${my:showcont('KlShoppingCarthistory','shopid',v.shopid,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="PRODUCTID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="productid_${v.id}" class="td123 productidTd">
${my:showcont('KlShoppingCarthistory','productid',v.productid,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="SHOPCARTID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="shopcartid_${v.id}" class="td123 shopcartidTd">
${my:showcont('KlShoppingCarthistory','shopcartid',v.shopcartid,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="PRODUCT_NAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="productName_${v.id}" class="td123 productNameTd">
${my:showcont('KlShoppingCarthistory','productName',v.productName,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="SHOP_NAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="shopName_${v.id}" class="td123 shopNameTd">
${my:showcont('KlShoppingCarthistory','shopName',v.shopName,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="USERID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="userid_${v.id}" class="td123 useridTd">
${my:showcont('KlShoppingCarthistory','userid',v.userid,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="USERNAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="username_${v.id}" class="td123 usernameTd">
${my:showcont('KlShoppingCarthistory','username',v.username,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="CLASS_COUNT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="classCount_${v.id}" class="td123 classCountTd">
${my:showcont('KlShoppingCarthistory','classCount',v.classCount,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="PER_PRICE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="perPrice_${v.id}" class="td123 perPriceTd">
${my:showcont('KlShoppingCarthistory','perPrice',v.perPrice,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="PRICE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="price_${v.id}" class="td123 priceTd">
${my:showcont('KlShoppingCarthistory','price',v.price,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="COUNT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="count_${v.id}" class="td123 countTd">
${my:showcont('KlShoppingCarthistory','count',v.count,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="COUPON_ID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="couponId_${v.id}" class="td123 couponIdTd">
${my:showcont('KlShoppingCarthistory','couponId',v.couponId,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="COUPON_PRICE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="couponPrice_${v.id}" class="td123 couponPriceTd">
${my:showcont('KlShoppingCarthistory','couponPrice',v.couponPrice,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="PAYWAY"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="payway_${v.id}" class="td123 paywayTd">
${my:showcont('KlShoppingCarthistory','payway',v.payway,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="PAYBANK"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="paybank_${v.id}" class="td123 paybankTd">
${my:showcont('KlShoppingCarthistory','paybank',v.paybank,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="PAYUSERNAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="payusername_${v.id}" class="td123 payusernameTd">
${my:showcont('KlShoppingCarthistory','payusername',v.payusername,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="PAYACCOUNT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="payaccount_${v.id}" class="td123 payaccountTd">
${my:showcont('KlShoppingCarthistory','payaccount',v.payaccount,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="MOBILE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="mobile_${v.id}" class="td123 mobileTd">
${my:showcont('KlShoppingCarthistory','mobile',v.mobile,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="EMAIL"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="email_${v.id}" class="td123 emailTd">
${my:showcont('KlShoppingCarthistory','email',v.email,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="SHOPMOBILE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="shopmobile_${v.id}" class="td123 shopmobileTd">
${my:showcont('KlShoppingCarthistory','shopmobile',v.shopmobile,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="SHOPEMAIL"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="shopemail_${v.id}" class="td123 shopemailTd">
${my:showcont('KlShoppingCarthistory','shopemail',v.shopemail,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="PAYFLOWNUMBER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="payflownumber_${v.id}" class="td123 payflownumberTd">
${my:showcont('KlShoppingCarthistory','payflownumber',v.payflownumber,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="YUYUEMA"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="yuyuema_${v.id}" class="td123 yuyuemaTd">
${my:showcont('KlShoppingCarthistory','yuyuema',v.yuyuema,0 )}							</td>
					</c:if>
				
				<!-- 
                	<c:set var="tt" value="STATUS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="status_${v.id}" class="td123 statusTd">
${my:showcont('KlShoppingCarthistory','status',v.status,0 )}							</td>
					</c:if>
				
				--> 
                	<c:set var="tt" value="STATUSSTR"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="statusstr_${v.id}" class="td123 statusstrTd">
${my:showcont('KlShoppingCarthistory','statusstr',v.statusstr,0 )}							</td>
					</c:if>
				
				<!-- 
                	<c:set var="tt" value="ADDITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="addition_${v.id}" class="td123 additionTd">
${my:showcont('KlShoppingCarthistory','addition',v.addition,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="CREATETIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createtimelong_${v.id}" class="td123 createtimelongTd">
${my:showcont('KlShoppingCarthistory','createtimelong',v.createtimelong,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="MODIFYTIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="modifytimelong_${v.id}" class="td123 modifytimelongTd">
${my:showcont('KlShoppingCarthistory','modifytimelong',v.modifytimelong,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="CREATEUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createuser_${v.id}" class="td123 createuserTd">
${my:showcont('KlShoppingCarthistory','createuser',v.createuser,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="MODIFYUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="modifyuser_${v.id}" class="td123 modifyuserTd">
${my:showcont('KlShoppingCarthistory','modifyuser',v.modifyuser,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext1_${v.id}" class="td123 ext1Td">
${my:showcont('KlShoppingCarthistory','ext1',v.ext1,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext2_${v.id}" class="td123 ext2Td">
${my:showcont('KlShoppingCarthistory','ext2',v.ext2,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext3_${v.id}" class="td123 ext3Td">
${my:showcont('KlShoppingCarthistory','ext3',v.ext3,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext4_${v.id}" class="td123 ext4Td">
${my:showcont('KlShoppingCarthistory','ext4',v.ext4,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="EXT5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ext5_${v.id}" class="td123 ext5Td">
${my:showcont('KlShoppingCarthistory','ext5',v.ext5,0 )}							</td>
					</c:if>
				
				--> 
                	<c:set var="tt" value="EXT_INT1"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extInt1_${v.id}" class="td123 extInt1Td">
${my:showcont('KlShoppingCarthistory','extInt1',v.extInt1,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="EXT_INT2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extInt2_${v.id}" class="td123 extInt2Td">
${my:showcont('KlShoppingCarthistory','extInt2',v.extInt2,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="EXT_INT3"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extInt3_${v.id}" class="td123 extInt3Td">
${my:showcont('KlShoppingCarthistory','extInt3',v.extInt3,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="EXT_INT4"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extInt4_${v.id}" class="td123 extInt4Td">
${my:showcont('KlShoppingCarthistory','extInt4',v.extInt4,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="EXT_INT5"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="extInt5_${v.id}" class="td123 extInt5Td">
${my:showcont('KlShoppingCarthistory','extInt5',v.extInt5,0 )}							</td>
					</c:if>
				
                
                <td id="operate_${v.id}" class="operate111">
                  <!-- Icons-->
             	<c:choose>
        	<c:when test="${param.fromiframe eq null or param.fromiframe eq ''}">
        		<!--
            	<a class="xinzeng111" href="${ctx}/${actionBasePath}/create.do" title="新增"><img src="${ctx}/admin/resources/images/icons/pencil.png" alt="新增" /></a>
                 -->
                  <a href="#" onclick="if(confirm('您确定要删除这条数据吗？')) window.location.href='${ctx}/${actionBasePath}/delete.do?items=${v.id}';" title="删除"><img src="${ctx}/admin/resources/images/icons/cross.png" alt="删除" /></a>
                  <a class="iframe" href="${ctx}/${actionBasePath}/edit.do?id=${v.id}" title="修改"><img src="${ctx}/admin/resources/images/icons/hammer_screwdriver.png" alt="修改" /></a> 
${my:input('KlShoppingCarthistory','list_iframe',v.id,-1,0 )}${my:input('KlShoppingCarthistory','list_blank',v.id,-1,0 )}
           
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
              <label><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_ID)%></label>
${my:input('KlShoppingCarthistory','id',param.id,0,-1 )}						
						
              </p>
			
			 <p id="orderid_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_ORDERID)%></label>
${my:input('KlShoppingCarthistory','orderid',param.orderid,0,-1 )}						
						
              </p>
			
			 <p id="shopid_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_SHOPID)%></label>
${my:input('KlShoppingCarthistory','shopid',param.shopid,0,-1 )}						
						
              </p>
			
			 <p id="productid_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_PRODUCTID)%></label>
${my:input('KlShoppingCarthistory','productid',param.productid,0,-1 )}						
						
              </p>
			
			 <p id="shopcartid_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_SHOPCARTID)%></label>
${my:input('KlShoppingCarthistory','shopcartid',param.shopcartid,0,-1 )}						
						
              </p>
			
			 <p id="productName_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_PRODUCT_NAME)%></label>
${my:input('KlShoppingCarthistory','productName',param.productName,0,-1 )}						
						
              </p>
			
			 <p id="shopName_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_SHOP_NAME)%></label>
${my:input('KlShoppingCarthistory','shopName',param.shopName,0,-1 )}						
						
              </p>
			
			 <p id="userid_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_USERID)%></label>
${my:input('KlShoppingCarthistory','userid',param.userid,0,-1 )}						
						
              </p>
			
			 <p id="username_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_USERNAME)%></label>
${my:input('KlShoppingCarthistory','username',param.username,0,-1 )}						
						
              </p>
			
			 <p id="classCount_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_CLASS_COUNT)%></label>
${my:input('KlShoppingCarthistory','classCount',param.classCount,0,-1 )}						
						
              </p>
			
			 <p id="perPrice_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_PER_PRICE)%></label>
${my:input('KlShoppingCarthistory','perPrice',param.perPrice,0,-1 )}						
						
              </p>
			
			 <p id="price_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_PRICE)%></label>
${my:input('KlShoppingCarthistory','price',param.price,0,-1 )}						
						
              </p>
			
			 <p id="count_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_COUNT)%></label>
${my:input('KlShoppingCarthistory','count',param.count,0,-1 )}						
						
              </p>
			
			 <p id="couponId_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_COUPON_ID)%></label>
${my:input('KlShoppingCarthistory','couponId',param.couponId,0,-1 )}						
						
              </p>
			
			 <p id="couponPrice_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_COUPON_PRICE)%></label>
${my:input('KlShoppingCarthistory','couponPrice',param.couponPrice,0,-1 )}						
						
              </p>
			
			 <p id="payway_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_PAYWAY)%></label>
${my:input('KlShoppingCarthistory','payway',param.payway,0,-1 )}						
						
              </p>
			
			 <p id="paybank_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_PAYBANK)%></label>
${my:input('KlShoppingCarthistory','paybank',param.paybank,0,-1 )}						
						
              </p>
			
			 <p id="payusername_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_PAYUSERNAME)%></label>
${my:input('KlShoppingCarthistory','payusername',param.payusername,0,-1 )}						
						
              </p>
			
			 <p id="payaccount_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_PAYACCOUNT)%></label>
${my:input('KlShoppingCarthistory','payaccount',param.payaccount,0,-1 )}						
						
              </p>
			
			 <p id="mobile_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_MOBILE)%></label>
${my:input('KlShoppingCarthistory','mobile',param.mobile,0,-1 )}						
						
              </p>
			
			 <p id="email_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_EMAIL)%></label>
${my:input('KlShoppingCarthistory','email',param.email,0,-1 )}						
						
              </p>
			
			 <p id="shopmobile_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_SHOPMOBILE)%></label>
${my:input('KlShoppingCarthistory','shopmobile',param.shopmobile,0,-1 )}						
						
              </p>
			
			 <p id="shopemail_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_SHOPEMAIL)%></label>
${my:input('KlShoppingCarthistory','shopemail',param.shopemail,0,-1 )}						
						
              </p>
			
			 <p id="payflownumber_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_PAYFLOWNUMBER)%></label>
${my:input('KlShoppingCarthistory','payflownumber',param.payflownumber,0,-1 )}						
						
              </p>
			
			 <p id="yuyuema_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_YUYUEMA)%></label>
${my:input('KlShoppingCarthistory','yuyuema',param.yuyuema,0,-1 )}						
						
              </p>
			
				<!-- 
			 <p id="status_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_STATUS)%></label>
${my:input('KlShoppingCarthistory','status',param.status,0,-1 )}						
						
              </p>
				-->
			
			 <p id="statusstr_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_STATUSSTR)%></label>
${my:input('KlShoppingCarthistory','statusstr',param.statusstr,0,-1 )}						
						
              </p>
			
				<!-- 
			 <p id="addition_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_ADDITION)%></label>
${my:input('KlShoppingCarthistory','addition',param.addition,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="createtimelong_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_CREATETIMELONG)%></label>
${my:input('KlShoppingCarthistory','createtimelong',param.createtimelong,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="modifytimelong_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_MODIFYTIMELONG)%></label>
${my:input('KlShoppingCarthistory','modifytimelong',param.modifytimelong,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="createuser_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_CREATEUSER)%></label>
${my:input('KlShoppingCarthistory','createuser',param.createuser,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="modifyuser_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_MODIFYUSER)%></label>
${my:input('KlShoppingCarthistory','modifyuser',param.modifyuser,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="ext1_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_EXT1)%></label>
${my:input('KlShoppingCarthistory','ext1',param.ext1,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="ext2_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_EXT2)%></label>
${my:input('KlShoppingCarthistory','ext2',param.ext2,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="ext3_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_EXT3)%></label>
${my:input('KlShoppingCarthistory','ext3',param.ext3,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="ext4_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_EXT4)%></label>
${my:input('KlShoppingCarthistory','ext4',param.ext4,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="ext5_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_EXT5)%></label>
${my:input('KlShoppingCarthistory','ext5',param.ext5,0,-1 )}						
						
              </p>
				-->
			
			 <p id="extInt1_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_EXT_INT1)%></label>
${my:input('KlShoppingCarthistory','extInt1',param.extInt1,0,-1 )}						
						
              </p>
			
			 <p id="extInt2_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_EXT_INT2)%></label>
${my:input('KlShoppingCarthistory','extInt2',param.extInt2,0,-1 )}						
						
              </p>
			
			 <p id="extInt3_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_EXT_INT3)%></label>
${my:input('KlShoppingCarthistory','extInt3',param.extInt3,0,-1 )}						
						
              </p>
			
			 <p id="extInt4_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_EXT_INT4)%></label>
${my:input('KlShoppingCarthistory','extInt4',param.extInt4,0,-1 )}						
						
              </p>
			
			 <p id="extInt5_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_EXT_INT5)%></label>
${my:input('KlShoppingCarthistory','extInt5',param.extInt5,0,-1 )}						
						
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
