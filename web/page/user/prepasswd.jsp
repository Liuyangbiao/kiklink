<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=7">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>修改密码${my:config('title后缀','--开练网')}</title>
<meta name="keywords" content="${my:config('关键词','开练网')}" /> 
<meta name="description" content="${my:config('metadata','开练网')}" /><link rel="shortcut icon" href="${ctx}/favicon.ico" /> 
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/login.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/businesses.css" rel="stylesheet" type="text/css" />

<script language="javascript" type="text/javascript" src="${ctx}/script/jquery-1.7.1.min.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/js.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/fun.js"></script>
<!--[if lte IE 6]>
<script src="script/png.js" type="text/javascript"></script>
    <script type="text/javascript">
        DD_belatedPNG.fix('div, ul, img, li, input , a');
    </script>
<![endif]--> 
</head>

<body>
<%@ include file="/page/kailianheader.jsp" %>

<div class="w980 loginDiv">
<!--wal-->
<div class="login backPassword">
      <h1>找回密码</h1>
      <div class="title">请输入注册时的邮箱账户：</div>
      <div class="form" style="padding-top:0px;">
      	    <form action="${ctx}/kailian/CmsUserInfo/lookforPassword.do" method="post">
      	
             <li>
                <em>邮箱：</em>
                <input id="email" name="email" value="${param.email}" type="text" class="input1" />
                ${my:errordiv(map, 'email')}
             </li>
             <li>
                <em>验证码：</em>
                <input id="validnum" name="validnum" value="${param.validnum}" type="text" class="input1 input2" />
                 <div class="lzm"><img id="validnumimg" src="${ctx}/valid" onclick="$('#validnumimg').attr('src','${ctx}/valid');" /></div><a href="#" onclick="$('#validnumimg').attr('src','${ctx}/valid');">换一张</a>
           		${my:errordiv(map, 'validnum')}
             </li>
             <li><input type="submit" class="btn1" value="找回密码" />
             <input type="button" onclick="window.location.href='${ctx}/kailian/CmsUserInfo/premodpwd.do'" class="btn1" value="手机找回密码" />
             </li>
             <li>
            	<c:if test="${map.re le 0 }">
              		<font color="red">${map.word}</font>
              	</c:if>
            </li>
            </form>
      </div>
</div>
<!--walEnd-->
</div>

<%@ include file="/page/kailiantail.jsp" %>

<script type="text/javascript">
$(document).ready(function(){
		var classname = "CmsUserInfo";
		var paras = "email,validnum";
		var pps = paras.split(",");
	
		for (var i = 0; i < pps.length; i ++ ) {
			$('#' + pps[i]).blur(function() {
				checkparam(classname, $(this).attr('id'));
			});
		}

});

</script>


</body>
</html>