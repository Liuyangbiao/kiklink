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

	${ct}<br/>
	${fn:length(tl)}<br/>

	<b style="font:14pt">我常去的小组</b>
    <br/>
    <c:forEach var="l" items="${map['list']}">
    	${l.name}<br/>
        ${l.userCount}个成员
        <br/>
    </c:forEach>
    
    
    <br/><br/><br/>
    <b style="font:14pt">我加入的小组</b>
    <br/>
    <c:forEach var="l" items="${map['groups']}">
    	<a href="${ctx}/kailian/CmsGroup/groupIndex.do?id=${l.id}">${l.groupname}</a><br/>
       
        <br/>
    </c:forEach>



	<br/><br/><br/>
     <b style="font:14pt">我发起的话题</b>
    <br/>
    <c:forEach var="l" items="${map['posts']}">
    	<a href="${ctx}/kailian/CmsGroup/getTopic.do?topicid=${l.id}">${l.title}</a><br/>
       
        <br/>
    </c:forEach>
    
    
    <br/><br/><br/>
     <b style="font:14pt">我回复的话题</b>
    <br/>
    <c:forEach var="l" items="${map['replys']}">
    	<a href="${ctx}/kailian/CmsGroup/getTopic.do?topicid=${l.id}">${l.title}</a><br/>

    </c:forEach>
    
    <br/><br/><br/>
     <b style="font:14pt">我推荐的话题</b>
    <br/>
    <c:forEach var="l" items="${map['suggests']}">
    	<a href="${ctx}/kailian/CmsGroup/getTopic.do?topicid=${l.id}">${l.title}</a><br/>
       
        <br/>
    </c:forEach>
    
    <br/><br/><br/>
     <b style="font:14pt">我喜欢的话题</b>
    <br/>
    <c:forEach var="l" items="${map['likes']}">
    	<a href="${ctx}/kailian/CmsGroup/getTopic.do?topicid=${l.id}">${l.title}</a><br/>
       
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
