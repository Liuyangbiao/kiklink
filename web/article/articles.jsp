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

	<b>我的文章</b>
    <br/>
    <b style="color:red;">
    	${map['word']}
    </b>
    
    <a href="${ctx}/kailian/CmsArticle/preArticle.do">发布新文章</a><br/>
    
    <b>我的文章</b>
	<br/>
   
<c:forEach var="l" items="${map['page'].result}">
${l.titile}   &nbsp;&nbsp;&nbsp;
<a class="button" href="${ctx}/kailian/CmsArticle/preArticle.do?id=${l.id}">修改</a>&nbsp;&nbsp;
<a class="button" href="${ctx}/kailian/CmsArticle/delArticle.do?id=${l.id}">删除</a>&nbsp;&nbsp;
<br/>


</c:forEach>



</body>
<script type="text/javascript">
var host1 = "${ctx}";
$(document).ready(function(){
	
});

	
</script>
<!-- Download From www.exet.tk-->
</html>
