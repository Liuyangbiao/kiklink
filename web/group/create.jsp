<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="/admin/admincommon/head.jsp" %>
</head>
<body>

	<b>小组</b>
    <br/>
    <b style="color:red;">
    	${map['word']}
    </b>
    
    <b>新建小组</b>
	<br/>
    <form action="${ctx}/kailian/CmsGroup/newGroup.do" method="post">
  小组名称： ${my:input('CmsGroup','name',param.name,0,0 )}<br/>
   小组类型： ${my:input('CmsGroup','type',param.type,0,0 )}   <br/>
   说明： ${my:input('CmsGroup','content',param.content,0,0 )}<br/>
 
   <br/>
   <input type="submit" />

	</form>



</body>
<script type="text/javascript">
var host1 = "${ctx}";
$(document).ready(function(){
	
});

function yanzhengma() {
	//${ctx}/kailian/CmsUserInfo/mobileValidnum.do
	if ($('#mobile').val() == '') 
		alert('请先输入手机号');
	else {
		//alert("${ctx}/kailian/CmsUserInfo/mobileValidnum.do?mobile=" + $('#mobile').val());
		//window.open("${ctx}/kailian/CmsUserInfo/mobileValidnum.do?mobile=" + $('#mobile').val(), "_blank");	
		$.ajax({
             type: "GET",
             url:"${ctx}/kailian/CmsUserInfo/mobileValidnum.do?mobile=" + $('#mobile').val(),
             data: {},
             dataType: "json",
             success: function(obj){
				 //alert(str);
				 //var obj = eval('(' + str + ')');   
				 alert(obj['word']);
			 }
         });
	}
}
	
</script>
<!-- Download From www.exet.tk-->
</html>
