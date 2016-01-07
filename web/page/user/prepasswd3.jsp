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

<div class="w980 loginDiv">
<!--wal-->
<div class="login password">
      <h1>密码重置</h1>
      <div class="form">
          <form action="${ctx}/kailian/CmsUserInfo/lookforPassword2.do" method="post">
          <input type="hidden" name="id" id="id" value="${param.id}" />
     		<input type="hidden" name="lookforpassword" id="lookforpassword" value="${param.lookforpassword}" />
	
            <ul>
               <li>
                  <em>新密码：</em>
                  <input id="passwd" name="passwd" value="${param.passwd}" type="password" class="input1" />
                   ${my:errordiv(map, 'passwd')}
               </li>
               <li>
                  <em>密码确认：</em>
                  <input id="repasswd" name="repasswd" value="${param.repasswd}" type="password" class="input1" />
                   ${my:errordiv(map, 'repasswd')}
               </li>
               <li class="liBtn"><input type="submit" class="btn1" value="确认修改" /></li>
            </ul>
            
            </form>
      </div>
</div>
<!--walEnd-->
</div>



<%@ include file="/page/kailiantail.jsp" %>
<script>
$(document).ready(function(){

		
		var classname = "CmsUserInfo";
		var paras = "passwd,repasswd";
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