<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", KlSellerProduct.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/KlSellerProduct" />
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
        <h3>查看<%=JSTLTagUtils.getCnname("KlSellerProduct","table_name")%></h3>
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
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_SHOP_ID)%>:
				 </label>
${my:showcont('KlSellerProduct','shopId',v.shopId,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_NAME)%>:
				 </label>
${my:showcont('KlSellerProduct','name',v.name,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_PRICE)%>:
				 </label>
${my:showcont('KlSellerProduct','price',v.price,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_CLASS_COUNT)%>:
				 </label>
${my:showcont('KlSellerProduct','classCount',v.classCount,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_PER_CLASS_MINUTES)%>:
				 </label>
${my:showcont('KlSellerProduct','perClassMinutes',v.perClassMinutes,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_CATEGORYID)%>:
				 </label>
${my:showcont('KlSellerProduct','categoryid',v.categoryid,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_VALID_DAYS)%>:
				 </label>
${my:showcont('KlSellerProduct','validDays',v.validDays,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_TEACH_TYPE)%>:
				 </label>
${my:showcont('KlSellerProduct','teachType',v.teachType,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_RETURN_CLASS_COUNT)%>:
				 </label>
${my:showcont('KlSellerProduct','returnClassCount',v.returnClassCount,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_PHOTO)%>:
				 </label>
${my:showcont('KlSellerProduct','photo',v.photo,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_PROVINCEID)%>:
				 </label>
${my:showcont('KlSellerProduct','provinceid',v.provinceid,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_PROVINCE)%>:
				 </label>
${my:showcont('KlSellerProduct','province',v.province,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_CITYID)%>:
				 </label>
${my:showcont('KlSellerProduct','cityid',v.cityid,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_CITY)%>:
				 </label>
${my:showcont('KlSellerProduct','city',v.city,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_QUID)%>:
				 </label>
${my:showcont('KlSellerProduct','quid',v.quid,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_QU)%>:
				 </label>
${my:showcont('KlSellerProduct','qu',v.qu,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_QUANID)%>:
				 </label>
${my:showcont('KlSellerProduct','quanid',v.quanid,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_QUAN)%>:
				 </label>
${my:showcont('KlSellerProduct','quan',v.quan,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_GOTO_HOME)%>:
				 </label>
${my:showcont('KlSellerProduct','gotoHome',v.gotoHome,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_PLACE_PRICE_INCLUED)%>:
				 </label>
${my:showcont('KlSellerProduct','placePriceInclued',v.placePriceInclued,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_PLACE_ADDITION)%>:
				 </label>
${my:showcont('KlSellerProduct','placeAddition',v.placeAddition,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_ALL_CONSULTING)%>:
				 </label>
${my:showcont('KlSellerProduct','allConsulting',v.allConsulting,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_FREE_CONSULTING)%>:
				 </label>
${my:showcont('KlSellerProduct','freeConsulting',v.freeConsulting,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_DESCRIPTION)%>:
				 </label>
${my:showcont('KlSellerProduct','description',v.description,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_TAGS)%>:
				 </label>
${my:showcont('KlSellerProduct','tags',v.tags,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_SAVED_COUNT)%>:
				 </label>
${my:showcont('KlSellerProduct','savedCount',v.savedCount,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_BUYED_COUNT)%>:
				 </label>
${my:showcont('KlSellerProduct','buyedCount',v.buyedCount,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_FLOWER_COUNT)%>:
				 </label>
${my:showcont('KlSellerProduct','flowerCount',v.flowerCount,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_EGG_COUNT)%>:
				 </label>
${my:showcont('KlSellerProduct','eggCount',v.eggCount,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_MIDDLE_COUNT)%>:
				 </label>
${my:showcont('KlSellerProduct','middleCount',v.middleCount,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_TEMPLATE_ID)%>:
				 </label>
${my:showcont('KlSellerProduct','templateId',v.templateId,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_TEMPLATE)%>:
				 </label>
${my:showcont('KlSellerProduct','template',v.template,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_STATUS)%>:
				 </label>
${my:showcont('KlSellerProduct','status',v.status,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_ADDITION)%>:
				 </label>
${my:showcont('KlSellerProduct','addition',v.addition,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:showcont('KlSellerProduct','createtimelong',v.createtimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:showcont('KlSellerProduct','modifytimelong',v.modifytimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_CREATEUSER)%>:
				 </label>
${my:showcont('KlSellerProduct','createuser',v.createuser,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_MODIFYUSER)%>:
				 </label>
${my:showcont('KlSellerProduct','modifyuser',v.modifyuser,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_EXT1)%>:
				 </label>
${my:showcont('KlSellerProduct','ext1',v.ext1,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_EXT2)%>:
				 </label>
${my:showcont('KlSellerProduct','ext2',v.ext2,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_EXT3)%>:
				 </label>
${my:showcont('KlSellerProduct','ext3',v.ext3,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_EXT4)%>:
				 </label>
${my:showcont('KlSellerProduct','ext4',v.ext4,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_EXT5)%>:
				 </label>
${my:showcont('KlSellerProduct','ext5',v.ext5,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_EXT_INT1)%>:
				 </label>
${my:showcont('KlSellerProduct','extInt1',v.extInt1,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_EXT_INT2)%>:
				 </label>
${my:showcont('KlSellerProduct','extInt2',v.extInt2,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_EXT_INT3)%>:
				 </label>
${my:showcont('KlSellerProduct','extInt3',v.extInt3,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_EXT_INT4)%>:
				 </label>
${my:showcont('KlSellerProduct','extInt4',v.extInt4,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_EXT_INT5)%>:
				 </label>
${my:showcont('KlSellerProduct','extInt5',v.extInt5,0 )}			</p>	
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
