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
        <h3>编辑<%=JSTLTagUtils.getCnname("KlSellerProduct","table_name")%></h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">
          	<form id="form1" action="${ctx}/kailian/KlSellerProduct/update.do" method="post">
		<a class="button" onclick="if (doeditors()) $('#form1').submit();" >提交</a>&nbsp;&nbsp;
		<a class="button" onclick="backtolist();">返回列表</a>&nbsp;&nbsp;
		<a class="button" onclick="history.back();">后退</a>
		
		<input type="hidden" id="createtimelong" name="createtimelong" value="${model.createtimelong}"  />
		
		<fieldset>
		
			<input type="hidden" id="id" name="id" value="${model.id}"/>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		<!-- ONGL access static field: @package.class@field or @vs@field -->
			
			<p id='shopId_p' class='p123'>
				 <label id='shopId_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_SHOP_ID)%>:
				 </label>
${my:input('KlSellerProduct','shopId',model.shopId,10,0 )}
			</p>	
			
		
			
			<p id='name_p' class='p123'>
				 <label id='name_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_NAME)%>:
				 </label>
${my:input('KlSellerProduct','name',model.name,0,0 )}			</p>	
			
		
			
			<p id='price_p' class='p123'>
				 <label id='price_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_PRICE)%>:
				 </label>
${my:input('KlSellerProduct','price',model.price,10,0 )}
			</p>	
			
		
			
			<p id='classCount_p' class='p123'>
				 <label id='classCount_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_CLASS_COUNT)%>:
				 </label>
${my:input('KlSellerProduct','classCount',model.classCount,10,0 )}
			</p>	
			
		
			
			<p id='perClassMinutes_p' class='p123'>
				 <label id='perClassMinutes_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_PER_CLASS_MINUTES)%>:
				 </label>
${my:input('KlSellerProduct','perClassMinutes',model.perClassMinutes,10,0 )}
			</p>	
			
		
			
			<p id='categoryid_p' class='p123'>
				 <label id='categoryid_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_CATEGORYID)%>:
				 </label>
${my:input('KlSellerProduct','categoryid',model.categoryid,10,0 )}
			</p>	
			
		
			
			<p id='validDays_p' class='p123'>
				 <label id='validDays_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_VALID_DAYS)%>:
				 </label>
${my:input('KlSellerProduct','validDays',model.validDays,10,0 )}
			</p>	
			
		
			
			<p id='teachType_p' class='p123'>
				 <label id='teachType_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_TEACH_TYPE)%>:
				 </label>
${my:input('KlSellerProduct','teachType',model.teachType,10,0 )}
			</p>	
			
		
			
			<p id='returnClassCount_p' class='p123'>
				 <label id='returnClassCount_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_RETURN_CLASS_COUNT)%>:
				 </label>
${my:input('KlSellerProduct','returnClassCount',model.returnClassCount,10,0 )}
			</p>	
			
		
			
			<p id='photo_p' class='p123'>
				 <label id='photo_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_PHOTO)%>:
				 </label>
${my:input('KlSellerProduct','photo',model.photo,0,0 )}			</p>	
			
		
			
			<p id='provinceid_p' class='p123'>
				 <label id='provinceid_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_PROVINCEID)%>:
				 </label>
${my:input('KlSellerProduct','provinceid',model.provinceid,10,0 )}
			</p>	
			
		
			
			<p id='province_p' class='p123'>
				 <label id='province_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_PROVINCE)%>:
				 </label>
${my:input('KlSellerProduct','province',model.province,0,0 )}			</p>	
			
		
			
			<p id='cityid_p' class='p123'>
				 <label id='cityid_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_CITYID)%>:
				 </label>
${my:input('KlSellerProduct','cityid',model.cityid,10,0 )}
			</p>	
			
		
			
			<p id='city_p' class='p123'>
				 <label id='city_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_CITY)%>:
				 </label>
${my:input('KlSellerProduct','city',model.city,0,0 )}			</p>	
			
		
			
			<p id='quid_p' class='p123'>
				 <label id='quid_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_QUID)%>:
				 </label>
${my:input('KlSellerProduct','quid',model.quid,10,0 )}
			</p>	
			
		
			
			<p id='qu_p' class='p123'>
				 <label id='qu_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_QU)%>:
				 </label>
${my:input('KlSellerProduct','qu',model.qu,0,0 )}			</p>	
			
		
			
			<p id='quanid_p' class='p123'>
				 <label id='quanid_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_QUANID)%>:
				 </label>
${my:input('KlSellerProduct','quanid',model.quanid,10,0 )}
			</p>	
			
		
			
			<p id='quan_p' class='p123'>
				 <label id='quan_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_QUAN)%>:
				 </label>
${my:input('KlSellerProduct','quan',model.quan,0,0 )}			</p>	
			
		
			
			<p id='gotoHome_p' class='p123'>
				 <label id='gotoHome_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_GOTO_HOME)%>:
				 </label>
${my:input('KlSellerProduct','gotoHome',model.gotoHome,10,0 )}
			</p>	
			
		
			
			<p id='placePriceInclued_p' class='p123'>
				 <label id='placePriceInclued_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_PLACE_PRICE_INCLUED)%>:
				 </label>
${my:input('KlSellerProduct','placePriceInclued',model.placePriceInclued,10,0 )}
			</p>	
			
		
			
			<p id='placeAddition_p' class='p123'>
				 <label id='placeAddition_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_PLACE_ADDITION)%>:
				 </label>
${my:input('KlSellerProduct','placeAddition',model.placeAddition,0,0 )}			</p>	
			
		
			
			<p id='allConsulting_p' class='p123'>
				 <label id='allConsulting_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_ALL_CONSULTING)%>:
				 </label>
${my:input('KlSellerProduct','allConsulting',model.allConsulting,10,0 )}
			</p>	
			
		
			
			<p id='freeConsulting_p' class='p123'>
				 <label id='freeConsulting_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_FREE_CONSULTING)%>:
				 </label>
${my:input('KlSellerProduct','freeConsulting',model.freeConsulting,10,0 )}
			</p>	
			
		
			
			<p id='description_p' class='p123'>
				 <label id='description_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_DESCRIPTION)%>:
				 </label>
${my:input('KlSellerProduct','description',model.description,0,0 )}			</p>	
			
		
			
			<p id='tags_p' class='p123'>
				 <label id='tags_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_TAGS)%>:
				 </label>
${my:input('KlSellerProduct','tags',model.tags,0,0 )}			</p>	
			
		
			
			<p id='savedCount_p' class='p123'>
				 <label id='savedCount_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_SAVED_COUNT)%>:
				 </label>
${my:input('KlSellerProduct','savedCount',model.savedCount,10,0 )}
			</p>	
			
		
			
			<p id='buyedCount_p' class='p123'>
				 <label id='buyedCount_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_BUYED_COUNT)%>:
				 </label>
${my:input('KlSellerProduct','buyedCount',model.buyedCount,10,0 )}
			</p>	
			
		
			
			<p id='flowerCount_p' class='p123'>
				 <label id='flowerCount_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_FLOWER_COUNT)%>:
				 </label>
${my:input('KlSellerProduct','flowerCount',model.flowerCount,10,0 )}
			</p>	
			
		
			
			<p id='eggCount_p' class='p123'>
				 <label id='eggCount_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_EGG_COUNT)%>:
				 </label>
${my:input('KlSellerProduct','eggCount',model.eggCount,10,0 )}
			</p>	
			
		
			
			<p id='middleCount_p' class='p123'>
				 <label id='middleCount_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_MIDDLE_COUNT)%>:
				 </label>
${my:input('KlSellerProduct','middleCount',model.middleCount,10,0 )}
			</p>	
			
		
			
			<p id='templateId_p' class='p123'>
				 <label id='templateId_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_TEMPLATE_ID)%>:
				 </label>
${my:input('KlSellerProduct','templateId',model.templateId,10,0 )}
			</p>	
			
		
			
			<p id='template_p' class='p123'>
				 <label id='template_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_TEMPLATE)%>:
				 </label>
${my:input('KlSellerProduct','template',model.template,0,0 )}			</p>	
			
		
				<!-- 
			
			<p id='status_p' class='p123'>
				 <label id='status_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_STATUS)%>:
				 </label>
${my:input('KlSellerProduct','status',model.status,10,0 )}
			</p>	
			
		
				--> 
			
			<p id='addition_p' class='p123'>
				 <label id='addition_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_ADDITION)%>:
				 </label>
${my:input('KlSellerProduct','addition',model.addition,0,0 )}			</p>	
			
		
				<!-- 
			
			<p id='createtimelong_p' class='p123'>
				 <label id='createtimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:input('KlSellerProduct','createtimelong',model.createtimelong,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='modifytimelong_p' class='p123'>
				 <label id='modifytimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:input('KlSellerProduct','modifytimelong',model.modifytimelong,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='createuser_p' class='p123'>
				 <label id='createuser_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_CREATEUSER)%>:
				 </label>
${my:input('KlSellerProduct','createuser',model.createuser,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='modifyuser_p' class='p123'>
				 <label id='modifyuser_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_MODIFYUSER)%>:
				 </label>
${my:input('KlSellerProduct','modifyuser',model.modifyuser,10,0 )}
			</p>	
			
		
				--> 
			
			<p id='ext1_p' class='p123'>
				 <label id='ext1_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_EXT1)%>:
				 </label>
${my:input('KlSellerProduct','ext1',model.ext1,0,0 )}			</p>	
			
		
			
			<p id='ext2_p' class='p123'>
				 <label id='ext2_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_EXT2)%>:
				 </label>
${my:input('KlSellerProduct','ext2',model.ext2,0,0 )}			</p>	
			
		
			
			<p id='ext3_p' class='p123'>
				 <label id='ext3_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_EXT3)%>:
				 </label>
${my:input('KlSellerProduct','ext3',model.ext3,0,0 )}			</p>	
			
		
			
			<p id='ext4_p' class='p123'>
				 <label id='ext4_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_EXT4)%>:
				 </label>
${my:input('KlSellerProduct','ext4',model.ext4,0,0 )}			</p>	
			
		
			
			<p id='ext5_p' class='p123'>
				 <label id='ext5_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_EXT5)%>:
				 </label>
${my:input('KlSellerProduct','ext5',model.ext5,0,0 )}			</p>	
			
		
			
			<p id='extInt1_p' class='p123'>
				 <label id='extInt1_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_EXT_INT1)%>:
				 </label>
${my:input('KlSellerProduct','extInt1',model.extInt1,10,0 )}
			</p>	
			
		
			
			<p id='extInt2_p' class='p123'>
				 <label id='extInt2_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_EXT_INT2)%>:
				 </label>
${my:input('KlSellerProduct','extInt2',model.extInt2,10,0 )}
			</p>	
			
		
			
			<p id='extInt3_p' class='p123'>
				 <label id='extInt3_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_EXT_INT3)%>:
				 </label>
${my:input('KlSellerProduct','extInt3',model.extInt3,10,0 )}
			</p>	
			
		
			
			<p id='extInt4_p' class='p123'>
				 <label id='extInt4_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_EXT_INT4)%>:
				 </label>
${my:input('KlSellerProduct','extInt4',model.extInt4,10,0 )}
			</p>	
			
		
			
			<p id='extInt5_p' class='p123'>
				 <label id='extInt5_mainlb'>
					<%=JSTLTagUtils.getCnname("KlSellerProduct",KlSellerProduct.ALIAS_EXT_INT5)%>:
				 </label>
${my:input('KlSellerProduct','extInt5',model.extInt5,10,0 )}
			</p>	
			
		
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
