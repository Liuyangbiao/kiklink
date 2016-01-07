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
<title>开练卡${my:config('title后缀','--开练网')}</title>
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/member.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery-1.7.1.min.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/js.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/fun.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/form.js"></script>
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
      <div class="memberTitle"><h1>帐户余额：${map.user.moneyleft }元</h1></div>
      <div class="pageBox">
      <!--pageBox-->
      <div class="cardForm">
        <b>激活开练卡：</b>
        <form action="${ctx }/kailian/KlShoppingCard/activate.do" method="post" id="formCard">
	        <input name="cno" type="text" class="input1 input_hover" value="开练卡卡号:" title="开练卡卡号:" />
	        <input name="cpwd" type="text" class="input1 input2 input_hover" value="密码:" title="密码:" />
	        <input name="" type="button" onclick="return check();" class="btn1" />
        </form>
      </div>
      <div class="Orders">
      <table width="100%" cellpadding="0" cellspacing="0" border="0">
            <tr>
              <th width="189">卡号</th>
              <th width="72">金额</th>
              <th width="108">生效时间</th>
              <th width="105">失效时间</th>
              <th width="100">密码</th>
              <th class="th_01">状态</th>
              <th width="80">操作</th>
            </tr>
            <c:forEach var="info" items="${map.cards.result }" varStatus="vs">
            	<tr>
	              <td width="189">${info.cardNo }</td>
	              <td width="132">${info.cardprice }</td>
	              <td width="108">${my:transDate(info.createtimelong) }</td>
	              <td width="105">${my:transDate(info.overdue) }</td>
	              <td width="100" id="${info.cardPwd }" onclick="show(this);" title="点击显示密码" att="true">******</td>
	              <td class="th_01"><c:if test="${info.status eq 1 }">未激活</c:if><c:if test="${info.status eq -1 }">已激活</c:if></td>
	              <td width="80"><c:if test="${info.status eq 1 }"><a href="${ctx }/kailian/KlShoppingCard/activate.do?id=${info.id}">激活</a></c:if><c:if test="${info.status eq -1 }">激活</c:if></td>
	            </tr>
            </c:forEach>
      </table>
      </div>
      <!--pageBoxEnd-->
       ${my:drawpage(map.cards, pageContext.request,  null)}
      </div>
</div>
<span class="clear_f"></span>
<!--walEnd-->
</div>
<div class="h20"></div>

<%@ include file="/page/kailiantail.jsp" %>
<script>
function show(obj){
	$_this = $(obj);
	if($_this.attr("att") == "true"){
		$_this.html($_this.attr("id"));
		$_this.attr("title", "点击关闭密码");
		$_this.attr("att", "false");
	} else {
		$_this.html("******");
		$_this.attr("title", "点击显示密码");
		$_this.attr("att", "true");
	}
}
function check(){
	if($("input[name=cno]").val() == "开练卡卡号:"){
		alert("请输入账号");
		return false;
	}
	if($("input[name=cpwd]").val() == "密码:"){
		alert("请输入密码");
		return false;
	}
	if($("input[name=cno]").val() != "开练卡卡号:" && $("input[name=cpwd]").val() != "密码:")
		$("#formCard").submit();
	else
		alert("请输入卡号及密码!");
}
</script>
</body>
</html>