<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsStRhpotherdetail.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/CmsStRhpotherdetail" />
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
        <h3>编辑<%=JSTLTagUtils.getCnname("CmsStRhpotherdetail","table_name")%></h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">
          	<form id="form1" action="${ctx}/kailian/CmsStRhpotherdetail/update.do" method="post">
		<a class="button" onclick="if (doeditors()) $('#form1').submit();" >提交</a>&nbsp;&nbsp;
		<a class="button" onclick="backtolist();">返回列表</a>&nbsp;&nbsp;
		<a class="button" onclick="history.back();">后退</a>
		
		<input type="hidden" id="createtimelong" name="createtimelong" value="${model.createtimelong}"  />
		
		<fieldset>
		
			<input type="hidden" id="id" name="id" value="${model.id}"/>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		<!-- ONGL access static field: @package.class@field or @vs@field -->
			
			<p id='pid_p' class='p123'>
				 <label id='pid_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRhpotherdetail",CmsStRhpotherdetail.ALIAS_PID)%>:
				 </label>
${my:input('CmsStRhpotherdetail','pid',model.pid,10,0 )}
			</p>	
			
		
			
			<p id='pname_p' class='p123'>
				 <label id='pname_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRhpotherdetail",CmsStRhpotherdetail.ALIAS_PNAME)%>:
				 </label>
${my:input('CmsStRhpotherdetail','pname',model.pname,0,0 )}			</p>	
			
		
			
			<p id='logoimg_p' class='p123'>
				 <label id='logoimg_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRhpotherdetail",CmsStRhpotherdetail.ALIAS_LOGOIMG)%>:
				 </label>
${my:input('CmsStRhpotherdetail','logoimg',model.logoimg,0,0 )}			</p>	
			
		
			
			<p id='url_p' class='p123'>
				 <label id='url_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRhpotherdetail",CmsStRhpotherdetail.ALIAS_URL)%>:
				 </label>
${my:input('CmsStRhpotherdetail','url',model.url,0,0 )}			</p>	
			
		
			
			<p id='coachname_p' class='p123'>
				 <label id='coachname_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRhpotherdetail",CmsStRhpotherdetail.ALIAS_COACHNAME)%>:
				 </label>
${my:input('CmsStRhpotherdetail','coachname',model.coachname,0,0 )}			</p>	
			
		
			
			<p id='description_p' class='p123'>
				 <label id='description_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRhpotherdetail",CmsStRhpotherdetail.ALIAS_DESCRIPTION)%>:
				 </label>
${my:input('CmsStRhpotherdetail','description',model.description,0,0 )}			</p>	
			
		
			
			<p id='ext1_p' class='p123'>
				 <label id='ext1_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRhpotherdetail",CmsStRhpotherdetail.ALIAS_EXT1)%>:
				 </label>
${my:input('CmsStRhpotherdetail','ext1',model.ext1,0,0 )}			</p>	
			
		
			
			<p id='ext2_p' class='p123'>
				 <label id='ext2_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRhpotherdetail",CmsStRhpotherdetail.ALIAS_EXT2)%>:
				 </label>
${my:input('CmsStRhpotherdetail','ext2',model.ext2,0,0 )}			</p>	
			
		
			
			<p id='ext3_p' class='p123'>
				 <label id='ext3_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRhpotherdetail",CmsStRhpotherdetail.ALIAS_EXT3)%>:
				 </label>
${my:input('CmsStRhpotherdetail','ext3',model.ext3,0,0 )}			</p>	
			
		
			
			<p id='ext4_p' class='p123'>
				 <label id='ext4_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRhpotherdetail",CmsStRhpotherdetail.ALIAS_EXT4)%>:
				 </label>
${my:input('CmsStRhpotherdetail','ext4',model.ext4,0,0 )}			</p>	
			
		
			
			<p id='ext5_p' class='p123'>
				 <label id='ext5_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRhpotherdetail",CmsStRhpotherdetail.ALIAS_EXT5)%>:
				 </label>
${my:input('CmsStRhpotherdetail','ext5',model.ext5,0,0 )}			</p>	
			
		
			
			<p id='extInt1_p' class='p123'>
				 <label id='extInt1_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRhpotherdetail",CmsStRhpotherdetail.ALIAS_EXT_INT1)%>:
				 </label>
${my:input('CmsStRhpotherdetail','extInt1',model.extInt1,10,0 )}
			</p>	
			
		
			
			<p id='extInt2_p' class='p123'>
				 <label id='extInt2_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRhpotherdetail",CmsStRhpotherdetail.ALIAS_EXT_INT2)%>:
				 </label>
${my:input('CmsStRhpotherdetail','extInt2',model.extInt2,10,0 )}
			</p>	
			
		
			
			<p id='extInt3_p' class='p123'>
				 <label id='extInt3_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRhpotherdetail",CmsStRhpotherdetail.ALIAS_EXT_INT3)%>:
				 </label>
${my:input('CmsStRhpotherdetail','extInt3',model.extInt3,10,0 )}
			</p>	
			
		
			
			<p id='extInt4_p' class='p123'>
				 <label id='extInt4_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRhpotherdetail",CmsStRhpotherdetail.ALIAS_EXT_INT4)%>:
				 </label>
${my:input('CmsStRhpotherdetail','extInt4',model.extInt4,10,0 )}
			</p>	
			
		
			
			<p id='extInt5_p' class='p123'>
				 <label id='extInt5_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRhpotherdetail",CmsStRhpotherdetail.ALIAS_EXT_INT5)%>:
				 </label>
${my:input('CmsStRhpotherdetail','extInt5',model.extInt5,10,0 )}
			</p>	
			
		
				<!-- 
			
			<p id='status_p' class='p123'>
				 <label id='status_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRhpotherdetail",CmsStRhpotherdetail.ALIAS_STATUS)%>:
				 </label>
${my:input('CmsStRhpotherdetail','status',model.status,10,0 )}
			</p>	
			
		
				--> 
			
			<p id='addition_p' class='p123'>
				 <label id='addition_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRhpotherdetail",CmsStRhpotherdetail.ALIAS_ADDITION)%>:
				 </label>
${my:input('CmsStRhpotherdetail','addition',model.addition,0,0 )}			</p>	
			
		
				<!-- 
			
			<p id='createtimelong_p' class='p123'>
				 <label id='createtimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRhpotherdetail",CmsStRhpotherdetail.ALIAS_CREATETIMELONG)%>:
				 </label>
${my:input('CmsStRhpotherdetail','createtimelong',model.createtimelong,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='modifytimelong_p' class='p123'>
				 <label id='modifytimelong_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRhpotherdetail",CmsStRhpotherdetail.ALIAS_MODIFYTIMELONG)%>:
				 </label>
${my:input('CmsStRhpotherdetail','modifytimelong',model.modifytimelong,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='createuser_p' class='p123'>
				 <label id='createuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRhpotherdetail",CmsStRhpotherdetail.ALIAS_CREATEUSER)%>:
				 </label>
${my:input('CmsStRhpotherdetail','createuser',model.createuser,10,0 )}
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='modifyuser_p' class='p123'>
				 <label id='modifyuser_mainlb'>
					<%=JSTLTagUtils.getCnname("CmsStRhpotherdetail",CmsStRhpotherdetail.ALIAS_MODIFYUSER)%>:
				 </label>
${my:input('CmsStRhpotherdetail','modifyuser',model.modifyuser,10,0 )}
			</p>	
			
		
				--> 
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
