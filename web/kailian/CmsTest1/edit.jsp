<%@page import="com.kailian.glo.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsTest1.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/CmsTest1" />
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
        <h3>编辑<%=CmsTest1.TABLE_ALIAS %></h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">
          	<form id="form1" action="${ctx}/kailian/CmsTest1/update.do" method="post">
		<a class="button" onclick="$('#form1').submit();" >提交</a>&nbsp;&nbsp;
		<a class="button" onclick="backtolist();">返回列表</a>&nbsp;&nbsp;
		<a class="button" onclick="history.back();">后退</a>
		
		<input type="hidden" id="createtimelong" name="createtimelong" value="${model.createtimelong}"  />
		
		<fieldset>
		
			<input type="hidden" id="id" name="id" value="${model.id}"/>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		<!-- ONGL access static field: @package.class@field or @vs@field -->
			
			<p id='name_p' class='p123'>
				 <label id='name_mainlb'>
					<%=CmsTest1.ALIAS_NAME%>:
				 </label>
				<input id="name" name="name" value="${model.name}"
				type="text"  class="text-input medium-input easyui-validatebox"   />
			</p>	
			
		
			
			<p id='loginname_p' class='p123'>
				 <label id='loginname_mainlb'>
					<%=CmsTest1.ALIAS_LOGINNAME%>:
				 </label>
				<input id="loginname" name="loginname" value="${model.loginname}"
				type="text"  class="text-input medium-input easyui-validatebox"   />
			</p>	
			
		
			
			<p id='passwd_p' class='p123'>
				 <label id='passwd_mainlb'>
					<%=CmsTest1.ALIAS_PASSWD%>:
				 </label>
				<input id="passwd" name="passwd" value="${model.passwd}"
				type="text"  class="text-input medium-input easyui-validatebox"   />
			</p>	
			
		
			
			<p id='email_p' class='p123'>
				 <label id='email_mainlb'>
					<%=CmsTest1.ALIAS_EMAIL%>:
				 </label>
				<input id="email" name="email" value="${model.email}"
				type="text"  class="text-input medium-input easyui-validatebox"   />
			</p>	
			
		
			
			<p id='phone_p' class='p123'>
				 <label id='phone_mainlb'>
					<%=CmsTest1.ALIAS_PHONE%>:
				 </label>
				<input id="phone" name="phone" value="${model.phone}"
				type="text"  class="text-input medium-input easyui-validatebox"   />
			</p>	
			
		
			
			<p id='img1_p' class='p123'>
				 <label id='img1_mainlb'>
					<%=CmsTest1.ALIAS_IMG1%>:
				 </label>
				<input id="img1" name="img1" value="${model.img1}"
				type="text"  class="text-input medium-input easyui-validatebox"   />
			</p>	
			
		
			
			<p id='img2_p' class='p123'>
				 <label id='img2_mainlb'>
					<%=CmsTest1.ALIAS_IMG2%>:
				 </label>
				<input id="img2" name="img2" value="${model.img2}"
				type="text"  class="text-input medium-input easyui-validatebox"   />
			</p>	
			
		
			
			<p id='level_p' class='p123'>
				 <label id='level_mainlb'>
					<%=CmsTest1.ALIAS_LEVEL%>:
				 </label>
					<input id="level" name="level" value="${model.level}"
				type="text"  class="text-input medium-input easyui-numberbox"  />
				
			</p>	
			
		
				<!-- 
			
			<p id='status_p' class='p123'>
				 <label id='status_mainlb'>
					<%=CmsTest1.ALIAS_STATUS%>:
				 </label>
					<input id="status" name="status" value="${model.status}"
				type="text"  class="text-input medium-input easyui-numberbox"  />
				
			</p>	
			
		
				--> 
			
			<p id='addition_p' class='p123'>
				 <label id='addition_mainlb'>
					<%=CmsTest1.ALIAS_ADDITION%>:
				 </label>
				<input id="addition" name="addition" value="${model.addition}"
				type="text"  class="text-input medium-input easyui-validatebox"   />
			</p>	
			
		
				<!-- 
			
			<p id='createtimelong_p' class='p123'>
				 <label id='createtimelong_mainlb'>
					<%=CmsTest1.ALIAS_CREATETIMELONG%>:
				 </label>
					<input id="createtimelong" name="createtimelong" value="${model.createtimelong}"
				type="text"  class="text-input medium-input easyui-numberbox"  />
				
			</p>	
			
		
				--> 
				<!-- 
			
			<p id='modifytimelong_p' class='p123'>
				 <label id='modifytimelong_mainlb'>
					<%=CmsTest1.ALIAS_MODIFYTIMELONG%>:
				 </label>
					<input id="modifytimelong" name="modifytimelong" value="${model.modifytimelong}"
				type="text"  class="text-input medium-input easyui-numberbox"  />
				
			</p>	
			
		
				--> 
			
			<p id='createuser_p' class='p123'>
				 <label id='createuser_mainlb'>
					<%=CmsTest1.ALIAS_CREATEUSER%>:
				 </label>
					<input id="createuser" name="createuser" value="${model.createuser}"
				type="text"  class="text-input medium-input easyui-numberbox"  />
				
			</p>	
			
		
				<!-- 
			
			<p id='modifyuser_p' class='p123'>
				 <label id='modifyuser_mainlb'>
					<%=CmsTest1.ALIAS_MODIFYUSER%>:
				 </label>
					<input id="modifyuser" name="modifyuser" value="${model.modifyuser}"
				type="text"  class="text-input medium-input easyui-numberbox"  />
				
			</p>	
			
		
				--> 
			
			<p id='ext1_p' class='p123'>
				 <label id='ext1_mainlb'>
					<%=CmsTest1.ALIAS_EXT1%>:
				 </label>
				<input id="ext1" name="ext1" value="${model.ext1}"
				type="text"  class="text-input medium-input easyui-validatebox"   />
			</p>	
			
		
			
			<p id='ext2_p' class='p123'>
				 <label id='ext2_mainlb'>
					<%=CmsTest1.ALIAS_EXT2%>:
				 </label>
				<input id="ext2" name="ext2" value="${model.ext2}"
				type="text"  class="text-input medium-input easyui-validatebox"   />
			</p>	
			
		
			
			<p id='ext3_p' class='p123'>
				 <label id='ext3_mainlb'>
					<%=CmsTest1.ALIAS_EXT3%>:
				 </label>
				<input id="ext3" name="ext3" value="${model.ext3}"
				type="text"  class="text-input medium-input easyui-validatebox"   />
			</p>	
			
		
			
			<p id='ext4_p' class='p123'>
				 <label id='ext4_mainlb'>
					<%=CmsTest1.ALIAS_EXT4%>:
				 </label>
				<input id="ext4" name="ext4" value="${model.ext4}"
				type="text"  class="text-input medium-input easyui-validatebox"   />
			</p>	
			
		
			
			<p id='ext5_p' class='p123'>
				 <label id='ext5_mainlb'>
					<%=CmsTest1.ALIAS_EXT5%>:
				 </label>
				<input id="ext5" name="ext5" value="${model.ext5}"
				type="text"  class="text-input medium-input easyui-validatebox"   />
			</p>	
			
		
			
			<p id='extint1_p' class='p123'>
				 <label id='extint1_mainlb'>
					<%=CmsTest1.ALIAS_EXTINT1%>:
				 </label>
					<input id="extint1" name="extint1" value="${model.extint1}"
				type="text"  class="text-input medium-input easyui-numberbox"  />
				
			</p>	
			
		
			
			<p id='extint2_p' class='p123'>
				 <label id='extint2_mainlb'>
					<%=CmsTest1.ALIAS_EXTINT2%>:
				 </label>
					<input id="extint2" name="extint2" value="${model.extint2}"
				type="text"  class="text-input medium-input easyui-numberbox"  />
				
			</p>	
			
		
			
			<p id='extint3_p' class='p123'>
				 <label id='extint3_mainlb'>
					<%=CmsTest1.ALIAS_EXTINT3%>:
				 </label>
					<input id="extint3" name="extint3" value="${model.extint3}"
				type="text"  class="text-input medium-input easyui-numberbox"  />
				
			</p>	
			
		
			
			<p id='extint4_p' class='p123'>
				 <label id='extint4_mainlb'>
					<%=CmsTest1.ALIAS_EXTINT4%>:
				 </label>
					<input id="extint4" name="extint4" value="${model.extint4}"
				type="text"  class="text-input medium-input easyui-numberbox"  />
				
			</p>	
			
		
			
			<p id='extint5_p' class='p123'>
				 <label id='extint5_mainlb'>
					<%=CmsTest1.ALIAS_EXTINT5%>:
				 </label>
					<input id="extint5" name="extint5" value="${model.extint5}"
				type="text"  class="text-input medium-input easyui-numberbox"  />
				
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
	doright();
});


	function submitSearch(pageno) {
		document.getElementById('pageNumber').value = pageno;
		$('#queryForm').submit();
	}
</script>
<!-- Download From www.exet.tk-->
</html>
