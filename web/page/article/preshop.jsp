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
<title>开练网</title>
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/businesses.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery-1.7.1.min.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/js.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/fun.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/form.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/date/My97DatePicker/WdatePicker.js"></script>
<link rel="stylesheet" href="${ctx}/kindeditornew/themes/default/default.css" />
<script charset="utf-8" src="${ctx}/kindeditornew/kindeditor-min.js"></script>
<script charset="utf-8" src="${ctx}/kindeditornew/lang/zh_CN.js"></script>
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
      <div class="memberTitle"><h1>教程管理</h1></div>
      <div class="pageBox">
      <!--pageBox-->
      <div class="pageForm">
      <form action="${ctx}/kailian/CmsArticle/saveArticle.do" method="post">
      	<input id="id" name="id" type="hidden" value="${map.article.id}" />
           <ul>
              <li>
                 <em>分类</em>
                 <select id="channelId" name="channelId" style="width:510px;">
                 	<option value="101">健身</option>
                 	<option value="102">运动</option>
                 	<option value="103">极限/户外</option>
                 	<option value="104">康复</option>
                 </select>
              </li>
              <li>
                 <em>标题</em>
                 <div class="input1"><input id="titile" name="titile" type="text" class="" value="${map.article.titile}" /></div>
              </li>
              <li class="li_01" style="height:auto;">
                 <em>内容</em>
                  <script>
         		var editors = new Array();

         		var lth = editors.length;
         		editors[lth] = new Array();
         		editors[lth][0]='content';
         		KindEditor.ready(function(K) {
         			editors[lth][1] = K.create('textarea[name="content"]', 
         			{allowFileManager : true,uploadJson : '${ctx}/kindeditornew/jsp/upload_json2.jsp',fileManagerJson : '${ctx}/kindeditornew/jsp/file_manager_json.jsp',
         			
         			items : [
						'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',
						'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist',
						'insertunorderedlist', '|', 'emoticons', 'image', 'link']
         			});});
         	
         		function doeditors() {
	for (var i = 0; i < editors.length; i ++) {
		var name = editors[i][0];
		var edt = editors[i][1];

		$('#' + name).text(edt.html());
	}
	return true;
}
         	
         	</script>
                 <textarea id="content" name="content" style="height:500px;" cols="" rows="">${map.article.content}</textarea>
              </li>
              <li><input type="submit" class="btn1" value="发 布" /></li>
           </ul>
         </form>
      </div>
      <!--pageBoxEnd-->
      </div>
</div>
<span class="clear_f"></span>
<!--walEnd-->
</div>
<div class="h20"></div>

<div class="pageLayer lyLayer">
<div class="bgT"></div>
<div class="bg">
      <h5>用户的留言内容<a href="javascript:;" class="close"></a></h5>
      <div class="content">
　　用户留言内容文字信息，用户留言内容文字信息，用户留言内容文字信息，用户留言内容文字信息，用户留言内容文字信息，用户留言内容文字信息，用户留言内容文字信息，用户留言内容文字信息，用户留言内容文字信息，用户留言内容文字信息，用户留言内容文字信息。
      </div>
</div>
<div class="bgB"></div>
</div>

<div class="pageLayer pageLayer2 orderLayer5">
<div class="bgT"></div>

</div>
<div class="bgB"></div>
</div>

<%@ include file="/page/kailiantail.jsp" %>

</body>
</html>