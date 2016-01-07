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
<title>评论列表${my:config('title后缀','--开练网')}</title>
<meta name="keywords" content="${my:config('关键词','开练网')}" /> 
<meta name="description" content="${my:config('metadata','开练网')}" /><link rel="shortcut icon" href="${ctx}/favicon.ico" /> 
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/page1.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery-1.7.1.min.js"></script>
<link type="text/css" rel="stylesheet" href="${ctx}/scripts/jquery-easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${ctx}/scripts/jquery-easyui/themes/icon.css">
<script type="text/javascript" src="${ctx }/scripts/jquery-easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${ctx }/scripts/locale/easyui-lang-zh_CN.js"></script>

<script language="javascript" type="text/javascript" src="${ctx}/script/jquery.tips.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/js.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/fun.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/form.js"></script>


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
<div class="DetailPart4_05" style="background:#fff;">
         <div class="list">
              <ul>
              	<c:forEach var="c" items="${map.comments.result}">
                <li>
                	
                    <div class="imgDiv"><a href=""><img src="${ctx}/<c:choose><c:when test="${c.userphoto ne null}">${c.userphoto}</c:when><c:otherwise>/image/logo.png</c:otherwise></c:choose>" style="max-width:51px;max-height:51px;" alt="" /></a><div>${c.username}</div></div>
                    <div class="content">
                    ${c.comment}<br/>
                    
                    </div>
                    <div class="msg">${my:transTime(c.createtimelong)}
                    &nbsp;
                    ${my:stars(ctx, c.point)}
                    </div>
                </li>
                </c:forEach>
              <!-- 
                <li>
                    <div class="imgDiv"><a href=""><img src="${ctx}/image/limg51.jpg" alt="" /></a><div>用户张三</div></div>
                    <div class="content">
                    穿上非常好看，很有气质，质量不错，做工也没话说。还要来买一件。很喜欢跟店家描述的一样，没有什么色差。快递也超快的。
                    </div>
                    <div class="msg">2014年03月22日 12:51 颜色分类:桔色系蕾丝袖  尺码:M(建议100斤以内)</div>
                </li>
               -->
              </ul>
              <span class="clear_f"></span>
         </div>
          ${my:drawpage(map.comments, pageContext.request, 'ptype=comment')}
</div>
<script>
$(document).ready(function(){
	//alert($(document.body).outerHeight(true));
	//setTimeout("gg()", 2000);	
	window.parent.iframeheight(106*${fn:length(map.comments.result)})
});

function gg() {
	//var ht = $('.DetailPart4_05').outerHeight();
	//alert(ht);
	//window.parent.iframeheight(ht);
}

</script>
</body>
</html>