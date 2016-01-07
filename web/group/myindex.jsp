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

	<b style="font:14pt">推荐小组</b>
    <br/>
    <c:forEach var="l" items="${map['list']}">
    	<a href="${ctx}/kailian/CmsGroup/groupIndex.do?id=${l.id}">${l.name}</a><br/>
        ${l.userCount}个成员
        <br/>
    </c:forEach>
    
    <br/>
    <br/>
    <br/>
    <b>话题列表</b><br/>
    <c:forEach var="l" items="${map['page'].result}">
    	<a href="${ctx}/kailian/CmsGroup/ding.do?topicid=${l.id}">
        ${l.flowerCount}顶   
        </a>
        <br/>${l.title}<br/>
        <a href="${ctx}/kailian/CmsGroup/userIndex.do?id=${l.userid}">${l.ext1}  </a>
        来自<a href="${ctx}/kailian/CmsGroup/groupIndex.do?id=${l.groupid}">${l.ext2}</a><br/>
        <br/>
    </c:forEach>
 <br/>
    <br/>
    <br/>
    <a href="${ctx}/group/create.jsp">创建小组</a>

</body>
<script type="text/javascript">
var host1 = "${ctx}";
$(document).ready(function(){
	
});

</script>
<!-- Download From www.exet.tk-->
</html>
