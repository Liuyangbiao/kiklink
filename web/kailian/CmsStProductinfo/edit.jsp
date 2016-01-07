<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsStProductinfo.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/CmsStProductinfo" />
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
        <h3>编辑<%=JSTLTagUtils.getCnname("CmsStProductinfo","table_name")%></h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">
          	<form id="form1" action="${ctx}/kailian/CmsStProductinfo/update.do" method="post">
		<a class="button" onclick="if (doeditors()) $('#form1').submit();" >提交</a>&nbsp;&nbsp;
		<a class="button" onclick="backtolist();">返回列表</a>&nbsp;&nbsp;
		<a class="button" onclick="history.back();">后退</a>
		
		<input type="hidden" id="createtimelong" name="createtimelong" value="${model.createtimelong}"  />
		
		<fieldset>
		
			<input type="hidden" id="id" name="id" value="${model.id}"/>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		<!-- ONGL access static field: @package.class@field or @vs@field -->
			
			<p id='productname_p' class='p123'>
				 <label id='productname_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_PRODUCTNAME)%>:
				 </label>
${my:input('CmsStProductinfo','productname',model.productname,0,0 )}			</p>	
			
		
			
			<p id='price_p' class='p123'>
				 <label id='price_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_PRICE)%>:
				 </label>
${my:input('CmsStProductinfo','price',model.price,10,0 )}
			</p>	
			
		
			
			<p id='perClassMinutes_p' class='p123'>
				 <label id='perClassMinutes_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_PER_CLASS_MINUTES)%>:
				 </label>
${my:input('CmsStProductinfo','perClassMinutes',model.perClassMinutes,0,0 )}			</p>	
			
		
			
			<p id='shopname_p' class='p123'>
				 <label id='shopname_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_SHOPNAME)%>:
				 </label>
${my:input('CmsStProductinfo','shopname',model.shopname,0,0 )}			</p>	
			
		
			
			<p id='subname_p' class='p123'>
				 <label id='subname_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_SUBNAME)%>:
				 </label>
${my:input('CmsStProductinfo','subname',model.subname,0,0 )}			</p>	
			
		
			
			<p id='productid_p' class='p123'>
				 <label id='productid_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_PRODUCTID)%>:
				 </label>
${my:input('CmsStProductinfo','productid',model.productid,10,0 )}
			</p>	
			
		
			
			<p id='shopid_p' class='p123'>
				 <label id='shopid_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_SHOPID)%>:
				 </label>
${my:input('CmsStProductinfo','shopid',model.shopid,10,0 )}
			</p>	
			
		
			
			<p id='productimg_p' class='p123'>
				 <label id='productimg_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_PRODUCTIMG)%>:
				 </label>
${my:input('CmsStProductinfo','productimg',model.productimg,0,0 )}			</p>	
			
		
			
			<p id='linktype_p' class='p123'>
				 <label id='linktype_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_LINKTYPE)%>:
				 </label>
${my:input('CmsStProductinfo','linktype',model.linktype,10,0 )}
			</p>	
			
		
			
			<p id='rank_p' class='p123'>
				 <label id='rank_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_RANK)%>:
				 </label>
${my:input('CmsStProductinfo','rank',model.rank,10,0 )}
			</p>	
			
		
			
			<p id='styleclass_p' class='p123'>
				 <label id='styleclass_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_STYLECLASS)%>:
				 </label>
${my:input('CmsStProductinfo','styleclass',model.styleclass,0,0 )}			</p>	
			
		
			
			<p id='ext1_p' class='p123'>
				 <label id='ext1_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_EXT1)%>:
				 </label>
${my:input('CmsStProductinfo','ext1',model.ext1,0,0 )}			</p>	
			
		
			
			<p id='ext2_p' class='p123'>
				 <label id='ext2_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_EXT2)%>:
				 </label>
${my:input('CmsStProductinfo','ext2',model.ext2,0,0 )}			</p>	
			
		
			
			<p id='ext3_p' class='p123'>
				 <label id='ext3_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_EXT3)%>:
				 </label>
${my:input('CmsStProductinfo','ext3',model.ext3,0,0 )}			</p>	
			
		
			
			<p id='ext4_p' class='p123'>
				 <label id='ext4_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_EXT4)%>:
				 </label>
${my:input('CmsStProductinfo','ext4',model.ext4,0,0 )}			</p>	
			
		
			
			<p id='ext5_p' class='p123'>
				 <label id='ext5_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_EXT5)%>:
				 </label>
${my:input('CmsStProductinfo','ext5',model.ext5,0,0 )}			</p>	
			
		
			
			<p id='extInt1_p' class='p123'>
				 <label id='extInt1_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_EXT_INT1)%>:
				 </label>
${my:input('CmsStProductinfo','extInt1',model.extInt1,10,0 )}
			</p>	
			
		
			
			<p id='extInt2_p' class='p123'>
				 <label id='extInt2_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_EXT_INT2)%>:
				 </label>
${my:input('CmsStProductinfo','extInt2',model.extInt2,10,0 )}
			</p>	
			
		
			
			<p id='extInt3_p' class='p123'>
				 <label id='extInt3_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_EXT_INT3)%>:
				 </label>
${my:input('CmsStProductinfo','extInt3',model.extInt3,10,0 )}
			</p>	
			
		
			
			<p id='extInt4_p' class='p123'>
				 <label id='extInt4_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_EXT_INT4)%>:
				 </label>
${my:input('CmsStProductinfo','extInt4',model.extInt4,10,0 )}
			</p>	
			
		
			
			<p id='extInt5_p' class='p123'>
				 <label id='extInt5_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_EXT_INT5)%>:
				 </label>
${my:input('CmsStProductinfo','extInt5',model.extInt5,10,0 )}
			</p>	
			
		
				<!-- 
			
			<p id='status_p' class='p123'>
				 <label id='status_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_STATUS)%>:
				 </label>
${my:input('CmsStProductinfo','status',model.status,10,0 )}
			</p>	
			
		
				--> 
			
			<p id='addition_p' class='p123'>
				 <label id='addition_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_ADDITION)%>:
				 </label>
${my:input('CmsStProductinfo','addition',model.addition,0,0 )}			</p>	
			
		
				<!-- 
			
			<p id='createtimelong_p' class='p123'>
				 <label id='createtimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:input('CmsStProductinfo','createtimelong',model.createtimelong,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='modifytimelong_p' class='p123'>
				 <label id='modifytimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:input('CmsStProductinfo','modifytimelong',model.modifytimelong,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='createuser_p' class='p123'>
				 <label id='createuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_CREATEUSER)%>:
				 </label>
${my:input('CmsStProductinfo','createuser',model.createuser,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='modifyuser_p' class='p123'>
				 <label id='modifyuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_MODIFYUSER)%>:
				 </label>
${my:input('CmsStProductinfo','modifyuser',model.modifyuser,10,0 )}
			</p>	
			
		
				--> 
			
			<p id='topicid_p' class='p123'>
				 <label id='topicid_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_TOPICID)%>:
				 </label>
${my:input('CmsStProductinfo','topicid',model.topicid,10,0 )}
			</p>	
			
		
			
			<p id='groupid_p' class='p123'>
				 <label id='groupid_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStProductinfo",CmsStProductinfo.ALIAS_GROUPID)%>:
				 </label>
${my:input('CmsStProductinfo','groupid',model.groupid,10,0 )}
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
