<%@page import="com.yebucuo.server.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	String infos = MonitorServiceImpll.information();
 %>
<c:set var="actionBasePath" value="/kailian/CmsBiaodanConfig" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
        <h3>服务器信息</h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">
<!--
		<a class="button" onClick="backtolist();">返回列表</a>&nbsp;&nbsp;
		<a class="button" onClick="history.back();">后退</a>
-->
		<fieldset>
		<p> <label>${map.word}</label></p>
			<form id="form1" action="${ctx}/kailian/CmsUserInfo/smses.do" method="_post">
			<p> <label>短信内容</label></p>
			<p>
				<textarea name="content" style="height:100px;"></textarea>
			</p>
			<p> <label>手机号列表</label></p>
			<p>
				<textarea name="mobiles" style="height:100px;"></textarea>
			</p>
			
			<a class="button" href="#" onclick="$('#form1').submit();">发送</a>
			
			</form>
		
			
            </p>
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
<script>
function backdb() {
	$.ajax({
type:'post',//可选get
url:'${ctx}/kailian/CmsBackupDb/save.do?ajax=ajax',//这里是接收数据的PHP程序
success:function(msg){
	alert("备份成功！");
},
error:function(){
	alert("出现未知错误");
}
});
}
</script>

<!-- Download From www.exet.tk-->
</html>
