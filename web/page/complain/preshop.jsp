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
<title>投诉${my:config('title后缀','--开练网')}</title>
<meta name="keywords" content="${my:config('关键词','开练网')}" /> 
<meta name="description" content="${my:config('metadata','开练网')}" /><link rel="shortcut icon" href="${ctx}/favicon.ico" /> 
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/businesses.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="${ctx}/kindeditornew/themes/default/default.css" />
<script src="${ctx}/kindeditornew/kindeditor.js"></script>
<script src="${ctx}/kindeditornew/lang/zh_CN.js"></script>
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
<form method="post" action="${ctx}/kailian/KlShoppingComplaints/savecom.do">
	<input id="toUserId" name="toUserId" value="${param.toUserId}" type="hidden" />
	<input id="fromUserType" name="fromUserType" value="10" type="hidden" />
	
      <div class="memberTitle"><h1>投诉-发布</h1></div>
      <div class="pageBox pageForm">
      <!--pageBox-->
      <ul>
         <li><em>投诉学员</em>
             <div class="input1 input2"><input id="toUsername" name="toUsername" value="${param.toUsername}" type="text"/></div>
             <div class="fl"><a href="javascript:;" class="trainLayer2A" onclick="gotopage(1);"><img src="${ctx}/image/img20.gif"/></a></div>
         </li>
         <li><em>照片</em>
             <div class="input1 input2"><input id="photo" name="photo" type="text"/></div>
             <input type="button" class="btn2" id="photo_button" value="浏览…" />
         </li>
         <li><em>投诉原因</em>
             <div class="input1"><input id="content" name="content" type="text"/></div>
         </li>
         <li><input type="submit" class="btn1" value="我要投诉" /></li>
      </ul>
      <!--pageBoxEnd-->
      </div>
   </form>
</div>
<span class="clear_f"></span>
<!--walEnd-->
</div>
<div class="h20"></div>

<%@ include file="/page/searchuser.jsp" %>

<%@ include file="/page/kailiantail.jsp" %>
<script>



KindEditor.ready(function(K) {
				var editor = K.editor({
					allowFileManager : true
				});
				
				
				K('#photo_button').click(function() {
					editor.loadPlugin('image', function() {
						editor.plugin.imageDialog({
							showRemote : false,
							imageUrl : K('#photo').val(),
							clickFn : function(url, title, width, height, border, align) {
								K('#photo').val(url);
								editor.hideDialog();
							}
						});
					});
				});
				
				
			});
			
</script>
</body>
</html>

