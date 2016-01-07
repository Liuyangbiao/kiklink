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

	<b>用户登录</b>
    <br/>
    <b style="color:red;">
    	${map['word']}
    </b>
    
    <b>用户登录</b>
	<br/>
    <form action="${ctx}/kailian/CmsUserInfo/login.do" method="post">
    <input type="hidden" name="thirdType" id="thirdType" value="mobile" />
   手机号码或邮箱： ${my:input('CmsUserInfo','moboremail',param.moboremail,0,0 )}<br/>
   密码： ${my:input('CmsUserInfo','passwd',param.passwd,0,0 )}<br/>
   <br/>
   <input type="submit" />

	</form>
    
    
    <br/><br/>

    
    <b>找回密码</b>
	<br/>
    <form action="${ctx}/kailian/CmsUserInfo/lookforPassword.do" method="post">
    <input type="hidden" name="thirdType" id="thirdType" value="mobile" />
	邮箱： ${my:input('CmsUserInfo','email',param.email,0,0 )}<br/>
   验证码： ${my:input('CmsUserInfo','validnum',param.validnum,0,0 )}<img src="${ctx}/valid" /><br/>
   <br/>
   <input type="submit" />

	</form>
    
    
    
    
    <br/><br/>

    
    <b>找回密码--重新输入密码</b>
	<br/>
    <form action="${ctx}/kailian/CmsUserInfo/lookforPassword2.do" method="post">
    <input type="hidden" name="id" id="id" value="${param.id}" />
     <input type="hidden" name="lookforpassword" id="lookforpassword" value="${param.lookforpassword}" />
	
   密码： ${my:input('CmsUserInfo','passwd',param.passwd,0,0 )}<br/>
   重复密码： ${my:input('CmsUserInfo','repasswd',param.repasswd,0,0 )}<br/>
   <br/>
   <input type="submit" />

	</form>
    
    
    
    
       <br/><br/>

    
    <b>修改密码</b>
	<br/>
    <form action="${ctx}/kailian/CmsUserInfo/changePassword.do" method="post">

	手机验证码： ${my:input('CmsUserInfo','mobilevalidnum',param.mobilevalidnum,0,0 )}<br/>
    手机： ${my:input('CmsUserInfo','mobile',param.mobile,0,0 )}<br/>
   旧密码： ${my:input('CmsUserInfo','oldpasswd',param.oldpasswd,0,0 )}<br/>
   新密码： ${my:input('CmsUserInfo','passwd',param.passwd,0,0 )}<br/>
   重复密码： ${my:input('CmsUserInfo','repasswd',param.repasswd,0,0 )}<br/>
   <br/>
   <input type="submit" />

	</form>
    
    
    
    
          <br/><br/> <br/><br/> <br/><br/>

    
    <b>修改个人资料</b>
    <%
		Map map = new HashMap();
		session.getAttribute("user");
		map.put("user", session.getAttribute("user"));
		request.setAttribute("map", map);
	%>
	<br/>
    <form action="${ctx}/kailian/CmsUserInfo/updateProfile.do" method="post">

	 <input type="hidden" name="id" id="id" value="${map['user'].id}" />
    手机： ${my:input('CmsUserInfo','mobile',map['user'].mobile,0,0 )}<br/>
    手机验证码： ${my:input('CmsUserInfo','mobilevalidnum',param.mobilevalidnum,0,0 )}<br/>
   邮箱： ${my:input('CmsUserInfo','email',map['user'].email,0,0 )}<br/>
   
   真实姓名： ${my:input('CmsUserInfo','realName',map['user'].realName,0,0 )}<br/>
   昵称： ${my:input('CmsUserInfo','username',map['user'].username,0,0 )}<br/>
   座机电话： ${my:input('CmsUserInfo','phone',map['user'].phone,0,0 )}<br/>
   地址： ${my:input('CmsUserInfo','address',map['user'].address,0,0 )}<br/>
   邮编： ${my:input('CmsUserInfo','postCode',map['user'].postCode,0,0 )}<br/>
出生日期：
<select id="birthYear" name="birthYear">
	<%
		for (int i = 2014; i > 1900; i --) {
			String str = "<option value='" + i + "'>" + i + "</option>";
			out.print(str);	
		}
	%>
</select>年

<select id="birthMonth" name="birthMonth">
	<%
		for (int i = 1; i <= 12; i ++) {
			String str = "<option value='" + i + "'>" + i + "</option>";
			out.print(str);	
		}
	%>
</select>月
<select id="birthDate" name="birthDate">
	<%
		for (int i = 1; i <= 3; i ++) {
			String str = "<option value='" + i + "'>" + i + "</option>";
			out.print(str);	
		}
	%>
</select>日
   
   
   <br/>
   <input type="submit" />

	</form>


</body>
<script type="text/javascript">
var host1 = "${ctx}";
$(document).ready(function(){
	
});

	
</script>
<!-- Download From www.exet.tk-->
</html>
