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

	<b style="font:14pt">小组主页 ${map['group'].name}</b>
    <br/>
    说明 ：${map['group'].content}
    <br/>
    <a href="${ctx}/kailian/CmsGroup/joinGroup.do?id=${map['group'].id}">加入小组</a>
    <br/>
    
    <a href="${ctx}/kailian/CmsGroup/groupUsers.do?id=${map['group'].id}">小组成员</a>
    <br/>
    <a href="${ctx}/kailian/CmsGroup/preTopic.do?id=${map['group'].id}">发表话题</a>
    <br/>
    
    新成员<br/>
    <c:forEach var="l" items="${map['newusers']}">
    	<a href="${ctx}/kailian/CmsGroup/userIndex.do?userid=${l.userid}">${l.username}</a><br/>
       
        <br/>
    </c:forEach>
    
    
    <br/><br/><br/>
    <b style="font:14pt">话题列表</b>
    <br/>
    <a href="${ctx}/kailian/CmsGroup/groupIndex.do?sort=id desc">发布时间排序</a>
    &nbsp;&nbsp;
    <a href="${ctx}/kailian/CmsGroup/groupIndex.do?sort=id desc">热门话题</a>
    <br/>
    <c:forEach var="l" items="${map['topics']}">
    	<a href="${ctx}/kailian/CmsGroup/getTopic.do?topicid=${l.id}">
        ${l.title}
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
