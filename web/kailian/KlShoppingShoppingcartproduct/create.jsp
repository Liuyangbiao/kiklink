<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", KlShoppingShoppingcartproduct.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/KlShoppingShoppingcartproduct" />
<c:set var="ttid" value="ID"></c:set>
<c:set var="ttcreator" value="CREATOR"></c:set>
<c:set var="ttcreatetime" value="CREATE_TIME"></c:set>
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

    
    <!-- 搜索 -->
        <div class="content-box column-right" style="width:100%">
      <div class="content-box-header">
        <!-- Add the class "closed" to the Content box header to have it closed by default -->
        <h3>创建<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct","table_name")%></h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">
          	<form id="form1" action="${ctx}/kailian/KlShoppingShoppingcartproduct/save.do" method="post">
		<a class="button" onclick="if(doeditors()) $('#form1').submit();" >提交</a>&nbsp;&nbsp;
		<a class="button" onclick="backtolist();">返回列表</a>&nbsp;&nbsp;
		<a class="button" onclick="history.back();">后退</a>
		
		<fieldset>
			<input type="hidden" id="id" name="id" value="${model.id}"/>
		
		<!-- ONGL access static field: @package.class@field or @vs@field -->
		
			<c:set var="tt" value="ID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			</c:if>
		
			<c:set var="tt" value="ORDERID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='orderid_p' class='p123'>
				 <label id='orderid_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_ORDERID)%>:
				 </label>
${my:input('KlShoppingShoppingcartproduct','orderid',model.orderid,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="SHOPID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='shopid_p' class='p123'>
				 <label id='shopid_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_SHOPID)%>:
				 </label>
${my:input('KlShoppingShoppingcartproduct','shopid',model.shopid,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="PRODUCTID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='productid_p' class='p123'>
				 <label id='productid_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_PRODUCTID)%>:
				 </label>
${my:input('KlShoppingShoppingcartproduct','productid',model.productid,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="PRODUCT_NAME"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='productName_p' class='p123'>
				 <label id='productName_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_PRODUCT_NAME)%>:
				 </label>
${my:input('KlShoppingShoppingcartproduct','productName',model.productName,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="SHOP_NAME"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='shopName_p' class='p123'>
				 <label id='shopName_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_SHOP_NAME)%>:
				 </label>
${my:input('KlShoppingShoppingcartproduct','shopName',model.shopName,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="CITY"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='city_p' class='p123'>
				 <label id='city_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_CITY)%>:
				 </label>
${my:input('KlShoppingShoppingcartproduct','city',model.city,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="CLASS_TYPE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='classType_p' class='p123'>
				 <label id='classType_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_CLASS_TYPE)%>:
				 </label>
${my:input('KlShoppingShoppingcartproduct','classType',model.classType,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="CLASS_COUNT"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='classCount_p' class='p123'>
				 <label id='classCount_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_CLASS_COUNT)%>:
				 </label>
${my:input('KlShoppingShoppingcartproduct','classCount',model.classCount,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="PER_PRICE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='perPrice_p' class='p123'>
				 <label id='perPrice_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_PER_PRICE)%>:
				 </label>
${my:input('KlShoppingShoppingcartproduct','perPrice',model.perPrice,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="PRICE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='price_p' class='p123'>
				 <label id='price_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_PRICE)%>:
				 </label>
${my:input('KlShoppingShoppingcartproduct','price',model.price,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="COUNT"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='count_p' class='p123'>
				 <label id='count_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_COUNT)%>:
				 </label>
${my:input('KlShoppingShoppingcartproduct','count',model.count,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="COUPON_ID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='couponId_p' class='p123'>
				 <label id='couponId_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_COUPON_ID)%>:
				 </label>
${my:input('KlShoppingShoppingcartproduct','couponId',model.couponId,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="COUPON_PRICE"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='couponPrice_p' class='p123'>
				 <label id='couponPrice_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_COUPON_PRICE)%>:
				 </label>
${my:input('KlShoppingShoppingcartproduct','couponPrice',model.couponPrice,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="PROGRESS"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='progress_p' class='p123'>
				 <label id='progress_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_PROGRESS)%>:
				 </label>
${my:input('KlShoppingShoppingcartproduct','progress',model.progress,10,0 )}
			</p>	
			</c:if>
				<!-- 
		
			<c:set var="tt" value="STATUS"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='status_p' class='p123'>
				 <label id='status_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_STATUS)%>:
				 </label>
${my:input('KlShoppingShoppingcartproduct','status',model.status,10,0 )}
			</p>	
			</c:if>
				-->
		
			<c:set var="tt" value="ADDITION"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='addition_p' class='p123'>
				 <label id='addition_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_ADDITION)%>:
				 </label>
${my:input('KlShoppingShoppingcartproduct','addition',model.addition,0,0 )}			</p>	
			</c:if>
				<!-- 
		
			<c:set var="tt" value="CREATETIMELONG"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='createtimelong_p' class='p123'>
				 <label id='createtimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:input('KlShoppingShoppingcartproduct','createtimelong',model.createtimelong,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="MODIFYTIMELONG"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='modifytimelong_p' class='p123'>
				 <label id='modifytimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:input('KlShoppingShoppingcartproduct','modifytimelong',model.modifytimelong,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="CREATEUSER"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='createuser_p' class='p123'>
				 <label id='createuser_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_CREATEUSER)%>:
				 </label>
${my:input('KlShoppingShoppingcartproduct','createuser',model.createuser,10,0 )}
			</p>	
			</c:if>
				-->
				<!-- 
		
			<c:set var="tt" value="MODIFYUSER"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='modifyuser_p' class='p123'>
				 <label id='modifyuser_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_MODIFYUSER)%>:
				 </label>
${my:input('KlShoppingShoppingcartproduct','modifyuser',model.modifyuser,10,0 )}
			</p>	
			</c:if>
				-->
		
			<c:set var="tt" value="EXT1"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='ext1_p' class='p123'>
				 <label id='ext1_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_EXT1)%>:
				 </label>
${my:input('KlShoppingShoppingcartproduct','ext1',model.ext1,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="EXT2"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='ext2_p' class='p123'>
				 <label id='ext2_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_EXT2)%>:
				 </label>
${my:input('KlShoppingShoppingcartproduct','ext2',model.ext2,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="EXT3"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='ext3_p' class='p123'>
				 <label id='ext3_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_EXT3)%>:
				 </label>
${my:input('KlShoppingShoppingcartproduct','ext3',model.ext3,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="EXT4"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='ext4_p' class='p123'>
				 <label id='ext4_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_EXT4)%>:
				 </label>
${my:input('KlShoppingShoppingcartproduct','ext4',model.ext4,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="EXT5"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='ext5_p' class='p123'>
				 <label id='ext5_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_EXT5)%>:
				 </label>
${my:input('KlShoppingShoppingcartproduct','ext5',model.ext5,0,0 )}			</p>	
			</c:if>
		
			<c:set var="tt" value="EXT_INT1"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='extInt1_p' class='p123'>
				 <label id='extInt1_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_EXT_INT1)%>:
				 </label>
${my:input('KlShoppingShoppingcartproduct','extInt1',model.extInt1,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="EXT_INT2"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='extInt2_p' class='p123'>
				 <label id='extInt2_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_EXT_INT2)%>:
				 </label>
${my:input('KlShoppingShoppingcartproduct','extInt2',model.extInt2,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="EXT_INT3"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='extInt3_p' class='p123'>
				 <label id='extInt3_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_EXT_INT3)%>:
				 </label>
${my:input('KlShoppingShoppingcartproduct','extInt3',model.extInt3,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="EXT_INT4"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='extInt4_p' class='p123'>
				 <label id='extInt4_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_EXT_INT4)%>:
				 </label>
${my:input('KlShoppingShoppingcartproduct','extInt4',model.extInt4,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="EXT_INT5"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='extInt5_p' class='p123'>
				 <label id='extInt5_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_EXT_INT5)%>:
				 </label>
${my:input('KlShoppingShoppingcartproduct','extInt5',model.extInt5,10,0 )}
			</p>	
			</c:if>
		
			<c:set var="tt" value="USERID"></c:set>
            <c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and tt ne ttcreatetime}">
			
			<p id='userid_p' class='p123'>
				 <label id='userid_mainlb'>
					<%=JSTLTagUtils.getCnname("KlShoppingShoppingcartproduct",KlShoppingShoppingcartproduct.ALIAS_USERID)%>:
				 </label>
${my:input('KlShoppingShoppingcartproduct','userid',model.userid,10,0 )}
			</p>	
			</c:if>
		</fieldset>
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
	$('.iframe').fancybox({'width':widthPercent,'height':heightPercent});
	doright();
});


	function submitSearch(pageno) {
		document.getElementById('pageNumber').value = pageno;
		$('#queryForm').submit();
	}
</script>
<!-- Download From www.exet.tk-->
</html>
