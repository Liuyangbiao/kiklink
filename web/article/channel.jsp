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

	<b>频道文章</b>
    <br/>
    <b style="color:red;">
    	${map['word']}
    </b>
    
    <a href="${ctx}/kailian/CmsArticle/preArticle.do">发布新文章</a><br/>
    
    <b>频道文章</b>
	<br/>
   
<c:forEach var="l" items="${map['page'].result}">
<a href="${ctx}/kailian/CmsArticle/show.do?id=${l.id}" target="_blank">
${l.titile}   &nbsp;&nbsp;&nbsp;
</a>
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
