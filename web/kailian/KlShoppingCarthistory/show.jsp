<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", KlShoppingCarthistory.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/KlShoppingCarthistory" />
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
        <h3>查看<%=JSTLTagUtils.getCnname("KlShoppingCarthistory","table_name")%></h3>
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
					<%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_ORDERID)%>:
				 </label>
${my:showcont('KlShoppingCarthistory','orderid',v.orderid,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_SHOPID)%>:
				 </label>
${my:showcont('KlShoppingCarthistory','shopid',v.shopid,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_PRODUCTID)%>:
				 </label>
${my:showcont('KlShoppingCarthistory','productid',v.productid,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_SHOPCARTID)%>:
				 </label>
${my:showcont('KlShoppingCarthistory','shopcartid',v.shopcartid,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_PRODUCT_NAME)%>:
				 </label>
${my:showcont('KlShoppingCarthistory','productName',v.productName,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_SHOP_NAME)%>:
				 </label>
${my:showcont('KlShoppingCarthistory','shopName',v.shopName,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_USERID)%>:
				 </label>
${my:showcont('KlShoppingCarthistory','userid',v.userid,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_USERNAME)%>:
				 </label>
${my:showcont('KlShoppingCarthistory','username',v.username,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_CLASS_COUNT)%>:
				 </label>
${my:showcont('KlShoppingCarthistory','classCount',v.classCount,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_PER_PRICE)%>:
				 </label>
${my:showcont('KlShoppingCarthistory','perPrice',v.perPrice,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_PRICE)%>:
				 </label>
${my:showcont('KlShoppingCarthistory','price',v.price,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_COUNT)%>:
				 </label>
${my:showcont('KlShoppingCarthistory','count',v.count,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_COUPON_ID)%>:
				 </label>
${my:showcont('KlShoppingCarthistory','couponId',v.couponId,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_COUPON_PRICE)%>:
				 </label>
${my:showcont('KlShoppingCarthistory','couponPrice',v.couponPrice,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_PAYWAY)%>:
				 </label>
${my:showcont('KlShoppingCarthistory','payway',v.payway,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_PAYBANK)%>:
				 </label>
${my:showcont('KlShoppingCarthistory','paybank',v.paybank,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_PAYUSERNAME)%>:
				 </label>
${my:showcont('KlShoppingCarthistory','payusername',v.payusername,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_PAYACCOUNT)%>:
				 </label>
${my:showcont('KlShoppingCarthistory','payaccount',v.payaccount,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_MOBILE)%>:
				 </label>
${my:showcont('KlShoppingCarthistory','mobile',v.mobile,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_EMAIL)%>:
				 </label>
${my:showcont('KlShoppingCarthistory','email',v.email,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_SHOPMOBILE)%>:
				 </label>
${my:showcont('KlShoppingCarthistory','shopmobile',v.shopmobile,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_SHOPEMAIL)%>:
				 </label>
${my:showcont('KlShoppingCarthistory','shopemail',v.shopemail,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_PAYFLOWNUMBER)%>:
				 </label>
${my:showcont('KlShoppingCarthistory','payflownumber',v.payflownumber,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_YUYUEMA)%>:
				 </label>
${my:showcont('KlShoppingCarthistory','yuyuema',v.yuyuema,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_STATUS)%>:
				 </label>
${my:showcont('KlShoppingCarthistory','status',v.status,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_STATUSSTR)%>:
				 </label>
${my:showcont('KlShoppingCarthistory','statusstr',v.statusstr,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_ADDITION)%>:
				 </label>
${my:showcont('KlShoppingCarthistory','addition',v.addition,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:showcont('KlShoppingCarthistory','createtimelong',v.createtimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:showcont('KlShoppingCarthistory','modifytimelong',v.modifytimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_CREATEUSER)%>:
				 </label>
${my:showcont('KlShoppingCarthistory','createuser',v.createuser,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_MODIFYUSER)%>:
				 </label>
${my:showcont('KlShoppingCarthistory','modifyuser',v.modifyuser,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_EXT1)%>:
				 </label>
${my:showcont('KlShoppingCarthistory','ext1',v.ext1,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_EXT2)%>:
				 </label>
${my:showcont('KlShoppingCarthistory','ext2',v.ext2,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_EXT3)%>:
				 </label>
${my:showcont('KlShoppingCarthistory','ext3',v.ext3,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_EXT4)%>:
				 </label>
${my:showcont('KlShoppingCarthistory','ext4',v.ext4,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_EXT5)%>:
				 </label>
${my:showcont('KlShoppingCarthistory','ext5',v.ext5,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_EXT_INT1)%>:
				 </label>
${my:showcont('KlShoppingCarthistory','extInt1',v.extInt1,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_EXT_INT2)%>:
				 </label>
${my:showcont('KlShoppingCarthistory','extInt2',v.extInt2,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_EXT_INT3)%>:
				 </label>
${my:showcont('KlShoppingCarthistory','extInt3',v.extInt3,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_EXT_INT4)%>:
				 </label>
${my:showcont('KlShoppingCarthistory','extInt4',v.extInt4,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlShoppingCarthistory",KlShoppingCarthistory.ALIAS_EXT_INT5)%>:
				 </label>
${my:showcont('KlShoppingCarthistory','extInt5',v.extInt5,0 )}			</p>	
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
