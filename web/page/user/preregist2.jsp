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
<title>用户注册${my:config('title后缀','--开练网')}</title>
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
<div class="reg">
     <div class="step"><img src="${ctx}/image/nimg433.png" /></div>
     <div class="title">
            <ul>
              <li onclick="window.location.href='${ctx}/kailian/CmsUserInfo/preregist.do';"><input id="mobradio" type="radio" name="11"  />手机注册</li>
            <!-- 
              <li><input id="mailradio" type="radio" name="11" checked="checked"  />邮件注册</li>
               -->
            </ul>
     </div>
     <div class="form" style="display:none;">
   
         
     </div>
     <div class="form" >
     
     	<form id="form1" action="${ctx}/kailian/CmsUserInfo/regist.do" method="post">
     		<input type="hidden" name="thirdType" id="thirdType" value="email" />
           <ul>
             <li><em>电子邮箱：</em>
                 <input id="email" name="email" value="${param.email}" type="" class="input1" placeholder="手机号和邮箱都可以登录" />
                 <div class="tips"></div>
                 ${my:errordiv(map, 'email')}
             </li>
             <li><em>用户名：</em>
                  <input id="username" name="username" value="${param.username}" type="username" class="input1" />
                   ${my:errordiv(map, 'username')}
              </li>
             <li><em>密码：</em>
                 <input id="passwd" name="passwd" value="${param.passwd}" type="password" class="input1" />
                 ${my:errordiv(map, 'passwd')}
             </li>
             <li><em>密码确认：</em>
                 <input id="repasswd" name="repasswd" value="${param.repasswd}" type="password" class="input1" />
                 <div class="tips"></div>
                 ${my:errordiv(map, 'repasswd')}
             </li>
             <li class="li_01">
                  <input type="radio" class="radio" />成为我们的神秘访客
                  <div class="tips2">作为神秘客户：享受赠送课程/返账户现金；监督教练服务质量。</div>
                  
              </li>
               <li class="li_01">
                  <input type="checkbox" id="agree" checked='checked' />同意<a href="${ctx}/page/help.jsp?name=agree" target="_blank">《开练网用户注册协议》</a>
              </li>
             <li>
               <input type="button" onclick="if ($('#agree').attr('checked') != 'checked') alert('请先阅读并同意注册协议'); else $('#form1').submit();" class="btn1" value="注 册" />
               <input type="reset" class="btn1 btn2" value="重 置" />
            </li>
            <li>
            	<c:if test="${map.re le 0 and param.thirdType eq 'email' or map.re le 0 and map.thirdType eq 'email'}">
              		<font color="red">${map.word}</font>
              	</c:if>
            </li>
           </ul>
          </form>
          <div style="border:0px solid red;text-align:center;"> 
          <!-- 
         	<table style="margin:0px auto;">
         		<tr>
         			<td>使用合作网站账号登录开练网：session:${sessionScope.sessionurl}</td>
         			<td><span id="qqLoginBtn" style="margin-top:10px;"></span></td>
         			<td valign="top"><wb:login-button type="4,4" onlogin="wblogin" onlogout="wblogout" ></wb:login-button></td>
         		</tr>
         	</table>
         	 -->
		</div>
     </div>
</div>
<!--walEnd-->
</div>
<script type="text/javascript">
$(document).ready(function(){
		var classname = "CmsUserInfo";
		var paras = "email,passwd,repasswd";
		var pps = paras.split(",");
	
		for (var i = 0; i < pps.length; i ++ ) {
			$('#' + pps[i]).blur(function() {
				checkparam(classname, $(this).attr('id'));
			});
		}

});


$('.reg').find('.title').find('li').each(function(i){
	$(this).click(function(){
		$('.reg').find('.title').find('input').attr('checked','');
		$(this).find('input').attr('checked','checked');
		$('.reg').find('.form').hide();
		$('.reg').find('.form').eq(i).show();
		})
	})
$('.reg').find('.li_01').each(function(i){
	$(this).find('input').click(function(){
		$('.reg').find('.li_01').eq(i).find('.tips2').show();
		})
	})	
	
	<c:if test="${map.re le 0 and param.thirdType eq 'email' or map.thirdType eq 'email'}">
		$("#mailradio").click();
	</c:if>
	
	
</script>
<%@ include file="/page/kailiantail.jsp" %>
</body>
</html>