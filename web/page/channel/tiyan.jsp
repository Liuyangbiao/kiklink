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
<title>体验者说${my:config('title后缀','--开练网')}</title>
<meta name="keywords" content="${my:config('关键词','开练网')}" /> 
<meta name="description" content="${my:config('metadata','开练网')}" /><link rel="shortcut icon" href="${ctx}/favicon.ico" /> 
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/coach.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery-1.7.1.min.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/js.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/fun.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/form.js"></script>
<script type="text/javascript" src="http://cbjs.baidu.com/js/m.js"></script>
<!--[if lte IE 6]>
<script src="${ctx}/script/png.js" type="text/javascript"></script>
    <script type="text/javascript">
        DD_belatedPNG.fix('div, ul, img, li, input , a');
    </script>
<![endif]--> 
<style type="text/css">
body{background:#f6f5f3;}
</style>
</head>

<body>
<div class="selectLayer">
  <ul></ul>
</div>
<%@ include file="/page/kailianheader.jsp" %>

<div class="h15"></div>
<div class="wal">
<!--wal-->

    
<div class="fr w782" style="width:1000px;">
    <div class="coachTitle">
           <h1>体验者说</h1>
           <div class="pageNow"><em>当前位置：</em><a href="${ctx}">首页</a>体验者说</div>
    </div>
    <!---->
    <div class="pageBox coachShow">
          <div class="link">
          </div>
          <div class="title">${model.title}</div>
          <div class="time">发布日期：${my:jvalue(model.content, 'riqi')}&nbsp;&nbsp;作者：${my:jvalue(model.content, 'yonghuming')}</div>
          <div class="content">
          　　${my:replaceall(my:jvalue(model.content, 'neirong'),'\\n','<br/>　　')}
          </div>
          <div class="btnDiv">
          </div>
    </div>
</div>    
<span class="clear_f"></span>
<!--walEnd-->
</div>
<div class="h20"></div>

<%@ include file="/page/kailiantail.jsp" %>
<script>
$(document).ready(function(){
	 $("#provinceid").find("option[value='${param.provinceid}']").attr("selected",true);
	});
</script>
</body>
</html>