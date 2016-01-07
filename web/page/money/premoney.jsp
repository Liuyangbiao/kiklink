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
<title>提现申请${my:config('title后缀','--开练网')}</title>
<meta name="keywords" content="${my:config('关键词','开练网')}" /> 
<meta name="description" content="${my:config('metadata','开练网')}" /><link rel="shortcut icon" href="${ctx}/favicon.ico" /> 
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/businesses.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery-1.7.1.min.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/js.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/fun.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/form.js"></script>
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


<div class="h25"></div>
<div class="w993">
<!--wal-->
<%@ include file="/page/centerleft.jsp" %>

<div class="fr w791">
<form id="form1" action="${ctx}/kailian/KlShoppingGetmoney/requestmoney.do" method="post">
	<input id="money" name="money" type="hidden" value="${map.allincome-map.gotincome}" />
      <div class="memberTitle"><h1>资金管理 - 申请提现</h1></div>
      <div class="pageBox Withdrawals">
      <!--pageBox-->
       <div class="msg">
       申请提现${map.allincome-map.gotincome}元，汇入的银行账户是：${map.shop.bankopenname} ${map.shop.banknumber}　<br />
       系统将给你绑定的手机发送验证码，请注意查收！</div>
       <div class="inputDiv">
       <div class="input1"><input id="mobilevalidnum" name="mobilevalidnum" type="text" /></div>请输入验证码。<a href="" class="blue">没有收到，再发一次！</a>
       </div>
       <div class="tips"><a href="">修改注册手机号码。</a></div>
       <div class="btn"><a href="#" onclick="$('#form1').submit();">确定提现</a></div>
      <!--pageBoxEnd-->
      </div>
</form>
</div>
<span class="clear_f"></span>
<!--walEnd-->
</div>
<div class="h20"></div>

<div class="pageLayer serviceLayer">
<div class="bgT"></div>
<div class="bg">
      <h5>添加教练<a href="javascript:;" class="close"></a></h5>
      <div class="form">
          <ul>
            <li>
               <em>照片：</em>
               <select name=""><option value="">请选择</option></select>
            </li>
            <li>
               <em>添加照片：</em>
               <input name="" type="text" class="input1" />
               <input name="" type="button" class="btn2" value="浏览..." />
               <input name="" type="button" class="btn2" value="上传" />
            </li>
            <li class="li_02">
               <em>照片说明：</em>
               <textarea name="" cols="" rows=""></textarea>
               <input name="" type="button" class="btn2" value="添加多张图片" />
            </li>
          </ul>
      </div>
      <div class="btnDiv"><input name="" type="button" value="添 加" /></div>
</div>
<div class="bgB"></div>
</div>

<%@ include file="/page/kailiantail.jsp" %>

</body>
</html>