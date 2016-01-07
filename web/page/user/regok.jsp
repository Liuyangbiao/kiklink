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
<title>注册成功${my:config('title后缀','--开练网')}</title>
<meta name="keywords" content="${my:config('关键词','开练网')}" /> 
<meta name="description" content="${my:config('metadata','开练网')}" /><link rel="shortcut icon" href="${ctx}/favicon.ico" /> 
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/login.css" rel="stylesheet" type="text/css" />
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
<div class="reg mainTest">
     <div class="step"><img src="${ctx}/image/nimg474.png" /></div>
     <div class="imgDiv"><img src="${ctx}/image/nimg55_2.gif"/></div>
     <div class="content content2">
         你已经成功注册会员，点击进入<b><a href="${ctx}/kailian/KlShoppingShoppingcartproduct/userindex.do" class="red">个人账户</a></b>
     </div>
</div>
<!--walEnd-->
</div>


<%@ include file="/page/kailiantail.jsp" %>

<c:choose>
<c:when test="${(map.word eq '登录成功' or map.word eq '注册成功' or map.word eq '邮箱验证成功') and sessionScope.sessionurl ne null and sessionScope.sessionurl ne ''}">
<script>
	window.location.href = "${sessionScope.sessionurl}";  
</script>
</c:when>
<c:when test="${(map.word eq '登录成功' or map.word eq '注册成功' or map.word eq '邮箱验证成功') and param.logurl ne null and param.logurl ne ''}">
<script>
	window.location.href = "${param.logurl}"; 
</script>
</c:when>

<c:when test="${(map.word eq '登录成功' or map.word eq '注册成功' or map.word eq '邮箱验证成功') }">
<script>
	window.location.href = "${ctx}/kailian/KlShoppingShoppingcartproduct/userindex.do";
</script>
</c:when>
</c:choose>

</body>
</html>