<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", KlShoppingShoppingcartproduct.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/KlShoppingShoppingcartproduct" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="/admin/admincommon/head.jsp" %>
</head>
<body>
<div id="body-wrapperx">
  <!-- LOGO与左侧菜单 -->
  <!-- End #sidebar -->
  <div id="main-contentx">
    <!-- 如果没有js -->
    <%@ include file="/admin/admincommon/nojs.jsp" %>
    <!-- 标题与大图标 -->
     <%@ include file="/admin/admincommon/headicons.jsp" %>
    <!-- End .clear -->

    
    <!-- 搜索 -->
        <div class="content-box column-right" style="width:100%">
      <div class="content-box-header">
        <!-- Add the class "closed" to the Content box header to have it closed by default -->
        <h3>查看<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct","table_name")%></h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">

		<a class="button" onclick="backtolist();">返回列表</a>&nbsp;&nbsp;
		<a class="button" onclick="history.back();">后退</a>
		
		<fieldset>
			<input type="hidden" id="id" name="id" value="${model.id}"/>
		
		<!-- ONGL access static field: @package.class@field or @vs@field -->
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_ORDERID)%>:
				 </label>
${my:showcont('KlShoppingShoppingcartproduct','orderid',v.orderid,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_SHOPID)%>:
				 </label>
${my:showcont('KlShoppingShoppingcartproduct','shopid',v.shopid,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_PRODUCTID)%>:
				 </label>
${my:showcont('KlShoppingShoppingcartproduct','productid',v.productid,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_PRODUCT_NAME)%>:
				 </label>
${my:showcont('KlShoppingShoppingcartproduct','productName',v.productName,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_SHOP_NAME)%>:
				 </label>
${my:showcont('KlShoppingShoppingcartproduct','shopName',v.shopName,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_CITY)%>:
				 </label>
${my:showcont('KlShoppingShoppingcartproduct','city',v.city,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_CLASS_TYPE)%>:
				 </label>
${my:showcont('KlShoppingShoppingcartproduct','classType',v.classType,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_CLASS_COUNT)%>:
				 </label>
${my:showcont('KlShoppingShoppingcartproduct','classCount',v.classCount,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_PER_PRICE)%>:
				 </label>
${my:showcont('KlShoppingShoppingcartproduct','perPrice',v.perPrice,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_PRICE)%>:
				 </label>
${my:showcont('KlShoppingShoppingcartproduct','price',v.price,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_COUNT)%>:
				 </label>
${my:showcont('KlShoppingShoppingcartproduct','count',v.count,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_COUPON_ID)%>:
				 </label>
${my:showcont('KlShoppingShoppingcartproduct','couponId',v.couponId,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_COUPON_PRICE)%>:
				 </label>
${my:showcont('KlShoppingShoppingcartproduct','couponPrice',v.couponPrice,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_PROGRESS)%>:
				 </label>
${my:showcont('KlShoppingShoppingcartproduct','progress',v.progress,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_STATUS)%>:
				 </label>
${my:showcont('KlShoppingShoppingcartproduct','status',v.status,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_ADDITION)%>:
				 </label>
${my:showcont('KlShoppingShoppingcartproduct','addition',v.addition,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:showcont('KlShoppingShoppingcartproduct','createtimelong',v.createtimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:showcont('KlShoppingShoppingcartproduct','modifytimelong',v.modifytimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_CREATEUSER)%>:
				 </label>
${my:showcont('KlShoppingShoppingcartproduct','createuser',v.createuser,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_MODIFYUSER)%>:
				 </label>
${my:showcont('KlShoppingShoppingcartproduct','modifyuser',v.modifyuser,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_EXT1)%>:
				 </label>
${my:showcont('KlShoppingShoppingcartproduct','ext1',v.ext1,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_EXT2)%>:
				 </label>
${my:showcont('KlShoppingShoppingcartproduct','ext2',v.ext2,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_EXT3)%>:
				 </label>
${my:showcont('KlShoppingShoppingcartproduct','ext3',v.ext3,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_EXT4)%>:
				 </label>
${my:showcont('KlShoppingShoppingcartproduct','ext4',v.ext4,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_EXT5)%>:
				 </label>
${my:showcont('KlShoppingShoppingcartproduct','ext5',v.ext5,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_EXT_INT1)%>:
				 </label>
${my:showcont('KlShoppingShoppingcartproduct','extInt1',v.extInt1,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_EXT_INT2)%>:
				 </label>
${my:showcont('KlShoppingShoppingcartproduct','extInt2',v.extInt2,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_EXT_INT3)%>:
				 </label>
${my:showcont('KlShoppingShoppingcartproduct','extInt3',v.extInt3,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_EXT_INT4)%>:
				 </label>
${my:showcont('KlShoppingShoppingcartproduct','extInt4',v.extInt4,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_EXT_INT5)%>:
				 </label>
${my:showcont('KlShoppingShoppingcartproduct','extInt5',v.extInt5,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_USERID)%>:
				 </label>
${my:showcont('KlShoppingShoppingcartproduct','userid',v.userid,0 )}			</p>	
		</fieldset>
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

<!-- Download From www.exet.tk-->
</html>
