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
<title>用户登录${my:config('title后缀','--开练网')}</title>
<meta name="keywords" content="${my:config('关键词','开练网')}" /> 
<meta name="description" content="${my:config('metadata','开练网')}" /><link rel="shortcut icon" href="${ctx}/favicon.ico" /> 
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/login.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/businesses.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery-1.7.1.min.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/js.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/fun.js"></script>
<script type="text/javascript"
src="http://qzonestyle.gtimg.cn/qzone/openapi/qc_loader.js" data-appid="101137418" data-redirecturi="http://www.kiklink.com:8080/cms/kailian/CmsUserInfo/prelogin.do" charset="utf-8"></script>
<script src=" http://tjs.sjs.sinajs.cn/open/api/js/wb.js?appkey=2637237141" type="text/javascript" charset="utf-8"></script>
<!--[if lte IE 6]>
<script src="${ctx}/script/png.js" type="text/javascript"></script>
    <script type="text/javascript">
        DD_belatedPNG.fix('div, ul, img, li, input , a');
    </script>
<![endif]--> 
</head>

<body>

<%@ include file="/page/kailianheader.jsp" %>

<div class="w980 loginDiv">
<!--wal-->
<div class="login">
      <h1>登录<span>LOGIN</span></h1>
      <div class="form">
     	<form action="${ctx}/kailian/CmsUserInfo/login.do" method="post">
            <ul>
               <li><em>邮箱/手机号：</em>
               <input id="moboremail" name="moboremail" type="text" class="input1" onblur="if(getCookie('rememberusername') == 'checked' ) setCookie('theusername',$('#moboremail').val(), 99999999);" />
               ${my:errordiv(map, 'moboremail')}
               
               </li>
               <li>
               	<em>密码：</em><input id="passwd" name="passwd" type="password" class="input1" onblur="if(getCookie('rememberusername') == 'checked') setCookie('thepasswd',$('#passwd').val(), 99999999);" />
               	 ${my:errordiv(map, 'passwd')}
               </li>
               <li>
                 <em>验证码：</em>
                 <input id="validnum" name="validnum" type="text" class="input1 input2" />
                 <div class="lzm"><img id="validnumimg" src="${ctx}/valid" onclick="$('#validnumimg').attr('src','${ctx}/valid');" /></div>
                 <a href="#" onclick="$('#validnumimg').attr('src','${ctx}/valid');">换一张</a>
               	 ${my:errordiv(map, 'validnum')}
               </li>
               <li class="li_01"><input id="remember" name="" type="checkbox" value="1" onclick="remeberit();" />记住我（下次自动登录）</li>
               <li class="liBtn">
                 <input type="submit" class="btn1" value="登 录"/>
                 <a href="${ctx}/kailian/CmsUserInfo/preLookPassword.do">忘记密码？</a>
               </li>
               <li>
               	<c:if test="${map.re le 0}">
              		<font color="red">${map.word}</font>
              	</c:if>
               </li>
            </ul>
            
           </form>
      </div>
      <div class="tipsDiv">
            <div class="msg1">尚未注册成为开练网会员　<a href="preregist.do">立即注册</a></div>
            <div class="msg2">
            <!-- 
            使用合作网站账号登录开练网：
            <span id="qqLoginBtn"></span>|<span id="wb_connect_btn"></span>
             -->
            </div>
      </div>
</div>
<!--walEnd-->
</div>
<script>
<c:choose>
	<c:when test="${third eq 'weibo'}">
		WB2.logout(function(){	//退出后的回调函数
					//alert('logout');
				});
	</c:when>
	<c:when test="${third eq 'qq'}">
		QC.Login.signOut();
	</c:when>
</c:choose>
</script>


<%@ include file="/page/kailiantail.jsp" %>

<script>
	$(document).ready(function(){
		var rem = getCookie("rememberusername");
		//alert(rem);
		$('#remember').attr("checked", rem);
		if (rem == 'checked') {
			$('#moboremail').val(getCookie('theusername'));
			$('#passwd').val(getCookie('thepasswd'));
			//alert(getCookie('thepasswd'));
			//setCookie('theusername',$('#moboremail').val(), 99999999);
			//setCookie('thepasswd',$('#passwd').val(), 99999999);
		}
		else {
			$('#remember').removeAttr("checked");
		}
		
		var classname = "CmsUserInfo";
		var paras = "moboremail,passwd,validnum";
		var pps = paras.split(",");
	
		for (var i = 0; i < pps.length; i ++ ) {
			$('#' + pps[i]).blur(function() {
				checkparam(classname, $(this).attr('id'));
			});
		}
	});

	function remeberit() {
		//alert($('#remember').attr("checked"));
		if ($('#remember').attr("checked") == 'checked') {
			setCookie('rememberusername','checked',99999999);
			setCookie('theusername',$('#moboremail').val(), 99999999);
			setCookie('thepasswd',$('#passwd').val(), 99999999);
		}
		else {
			setCookie('rememberusername','',99999999);
		}
	}
</script>

</body>
</html>