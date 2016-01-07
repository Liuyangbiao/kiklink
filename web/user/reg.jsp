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

	<b>用户注册</b>
    <br/>
    <b style="color:red;">
    	${map['word']}
    </b>
    
    <b>手机用户注册</b>
	<br/>
    <form action="${ctx}/kailian/CmsUserInfo/regist.do" method="post">
    <input type="hidden" name="thirdType" id="thirdType" value="mobile" />
   手机号码： ${my:input('CmsUserInfo','mobile',param.mobile,0,0 )}<br/>
   验证码： ${my:input('CmsUserInfo','mobilevalidnum',param.mobilevalidnum,0,0 )}   <a href="#" onclick="yanzhengma();">发送验证码</a> <br/>
   密码： ${my:input('CmsUserInfo','passwd',param.passwd,0,0 )}<br/>
   确认密码： ${my:input('CmsUserInfo','repasswd',param.repasswd,0,0 )}<br/>
   <br/>
   <input type="submit" />

	</form>
    
    <br/><br/><br/>
    
    <b>邮箱用户注册</b>
	<br/>
    <form action="${ctx}/kailian/CmsUserInfo/regist.do" method="post">
    <input type="hidden" name="thirdType" id="thirdType" value="email" />
   邮箱： ${my:input('CmsUserInfo','email',param.email,0,0 )}<br/>
   密码： ${my:input('CmsUserInfo','passwd',param.passwd,0,0 )}<br/>
   确认密码： ${my:input('CmsUserInfo','repasswd',param.repasswd,0,0 )}<br/>
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
