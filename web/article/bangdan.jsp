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

	<b>榜单</b>
    <br/>
    <b style="color:red;">
    	${map['word']}
    </b>
    
    <b>榜单</b>
	<br/>

推荐位<br/>
<c:forEach var="l" items="${bangdan}">
${l}
<br/>
</c:forEach>
<br/>



培训活动<br/>
<c:forEach var="l" items="${list3}">
<a href="${ctx}/kailian/CmsArticle/show.do?id=${l.id}" target="_blank">
${l.titile}   &nbsp;&nbsp;&nbsp;
</a>
<br/>
</c:forEach>
<br/>
文章信息<br/>
<c:forEach var="l" items="${list4}">
<a href="${ctx}/kailian/CmsArticle/show.do?id=${l.id}" target="_blank">
${l.titile}   &nbsp;&nbsp;&nbsp;
</a>
<br/>
</c:forEach>
<br/>
教练基金<br/>
<c:forEach var="l" items="${list5}">
<a href="${ctx}/kailian/CmsArticle/show.do?id=${l.id}" target="_blank">
${l.titile}   &nbsp;&nbsp;&nbsp;
</a>
<br/>
</c:forEach>
<br/>



</body>
<script type="text/javascript">
var host1 = "${ctx}";
$(document).ready(function(){
	
});

	
</script>
<!-- Download From www.exet.tk-->
</html>
