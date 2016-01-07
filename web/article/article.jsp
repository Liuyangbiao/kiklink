<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="/admin/admincommon/head.jsp" %>
</head>
<body>

	<b>发布文章</b>
    <br/>
    <b style="color:red;">
    	${map['word']}
    </b>
    
    <b>发布文章</b>
	<br/>
    <form action="${ctx}/kailian/CmsArticle/saveArticle.do" method="post">
   <input type="hidden" id="id" name="id" value="${article.id}" />
   频道： ${my:input('CmsArticle','channelId',article.channelId,0,0 )}<br/>
   标题： ${my:input('CmsArticle','titile',article.titile,0,0 )}<br/>
   内容： ${my:input('CmsArticle','content',article.content,0,0 )}<br/>
   <br/>
   <input type="submit" />

	</form>



</body>
<script type="text/javascript">
var host1 = "${ctx}";
$(document).ready(function(){
	
});

	
</script>
<!-- Download From www.exet.tk-->
</html>
