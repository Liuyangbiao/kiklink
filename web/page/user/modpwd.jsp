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
<link href="${ctx}/style/member2.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/businesses.css" rel="stylesheet" type="text/css" />

<script language="javascript" type="text/javascript" src="${ctx}/script/jquery-1.7.1.min.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/js.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/fun.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/form.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery_scroll.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/date/My97DatePicker/WdatePicker.js"></script>
<!--[if lte IE 6]>
<script src="script/png.js" type="text/javascript"></script>
    <script type="text/javascript">
        DD_belatedPNG.fix('div, ul, img, li, input , a');
    </script>
<![endif]--> 
</head>

<body>
<div class="selectLayer">
  <ul></ul>
</div>
<%@ include file="/page/kailianheader.jsp" %>


<div class="w993 pageNow"><em>当前位置：</em><a href="">首页</a><span>修改密码</span></div>
<div class="w993">
<!--wal-->
<%@ include file="/page/centerleft.jsp" %>

<div class="fr w791">
      <div class="memberTitle">
          <h1>修改密码</h1>
      </div>
      <div class="pageBox pageForm">
      <form action="${ctx}/kailian/CmsUserInfo/modpwd.do" method="post">
          <ul>
            <li><em>手机号码</em>
            
                <div class="input1 input2"><input id="mobile" name="mobile" value="${user.mobile}" type="text"/></div>
                <input type="button" id="bbt" class="btn2" style="cursor:pointer;" value="获取手机验证码" onclick="sendmobvalid('${ctx}',$('#mobile').val(),'bbt');" />
            ${my:errordiv(map, 'mobile')}</li>
            <li><em>手机验证码</em>
                <div class="input1"><input id="mobilevalidnum" name="mobilevalidnum" type="text" class="input_hover" value="${param.mobilevalidnum}" title=""/></div>
            ${my:errordiv(map, 'mobilevalidnum')}</li>
            <!-- 
            <li><em>当前密码</em>
                <div class="input1"><input id="oldpassword" name="oldpassword" value="${param.oldpassword}" type="password"/></div>
            ${my:errordiv(map, 'oldpassword')}</li>
            -->
            <li><em>新密码</em>
                <div class="input1"><input id="passwd" name="passwd" value="${param.passwd}"  type="password"/></div>
            ${my:errordiv(map, 'passwd')}</li>
            <li><em>密码确认</em>
                <div class="input1"><input id="repasswd" name="repasswd" value="${param.repasswd}"  type="password"/></div>
            ${my:errordiv(map, 'repasswd')}</li>
            <li>
                <input type="submit" class="btn1" value="保存设置" />
                <font color="red">${map.word}</font>
            	<c:if test="${user.mobile eq null}"><font color="red">请先绑定手机</font></c:if>    
            </li>
          </ul>
         </form>
      </div>
</div>
<span class="clear_f"></span>
<!--walEnd-->
</div>
<div class="h20"></div>

<%@ include file="/page/kailiantail.jsp" %>
<script>
	$(document).ready(function(){

		var classname = "CmsUserInfo";
		var paras = "mobile,passwd,repasswd,oldpassword,mobilevalidnum";
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