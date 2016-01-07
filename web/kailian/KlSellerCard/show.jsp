<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", KlSellerCard.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/KlSellerCard" />
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
        <h3>查看<%=JSTLTagUtils.getCnname("KlSellerCard","table_name")%></h3>
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
					<%=JSTLTagUtils.getCnname("KlSellerCard",KlSellerCard.ALIAS_CARD_NAME)%>:
				 </label>
${my:showcont('KlSellerCard','cardName',v.cardName,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerCard",KlSellerCard.ALIAS_PRICE)%>:
				 </label>
${my:showcont('KlSellerCard','price',v.price,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerCard",KlSellerCard.ALIAS_VALID_DAYS)%>:
				 </label>
${my:showcont('KlSellerCard','validDays',v.validDays,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerCard",KlSellerCard.ALIAS_TYPE)%>:
				 </label>
${my:showcont('KlSellerCard','type',v.type,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerCard",KlSellerCard.ALIAS_DISCOUNT)%>:
				 </label>
${my:showcont('KlSellerCard','discount',v.discount,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerCard",KlSellerCard.ALIAS_EXT1)%>:
				 </label>
${my:showcont('KlSellerCard','ext1',v.ext1,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerCard",KlSellerCard.ALIAS_EXT2)%>:
				 </label>
${my:showcont('KlSellerCard','ext2',v.ext2,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerCard",KlSellerCard.ALIAS_EXT3)%>:
				 </label>
${my:showcont('KlSellerCard','ext3',v.ext3,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerCard",KlSellerCard.ALIAS_EXT4)%>:
				 </label>
${my:showcont('KlSellerCard','ext4',v.ext4,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerCard",KlSellerCard.ALIAS_EXT5)%>:
				 </label>
${my:showcont('KlSellerCard','ext5',v.ext5,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerCard",KlSellerCard.ALIAS_EXT_INT1)%>:
				 </label>
${my:showcont('KlSellerCard','extInt1',v.extInt1,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerCard",KlSellerCard.ALIAS_EXT_INT2)%>:
				 </label>
${my:showcont('KlSellerCard','extInt2',v.extInt2,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerCard",KlSellerCard.ALIAS_EXT_INT3)%>:
				 </label>
${my:showcont('KlSellerCard','extInt3',v.extInt3,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerCard",KlSellerCard.ALIAS_EXT_INT4)%>:
				 </label>
${my:showcont('KlSellerCard','extInt4',v.extInt4,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerCard",KlSellerCard.ALIAS_EXT_INT5)%>:
				 </label>
${my:showcont('KlSellerCard','extInt5',v.extInt5,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerCard",KlSellerCard.ALIAS_STATUS)%>:
				 </label>
${my:showcont('KlSellerCard','status',v.status,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerCard",KlSellerCard.ALIAS_ADDITION)%>:
				 </label>
${my:showcont('KlSellerCard','addition',v.addition,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerCard",KlSellerCard.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:showcont('KlSellerCard','createtimelong',v.createtimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerCard",KlSellerCard.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:showcont('KlSellerCard','modifytimelong',v.modifytimelong,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerCard",KlSellerCard.ALIAS_CREATEUSER)%>:
				 </label>
${my:showcont('KlSellerCard','createuser',v.createuser,0 )}			</p>	
			
			<p>
				 <label>
					<%=JSTLTagUtils.getCnname("KlSellerCard",KlSellerCard.ALIAS_MODIFYUSER)%>:
				 </label>
${my:showcont('KlSellerCard','modifyuser',v.modifyuser,0 )}			</p>	
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
