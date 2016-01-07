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

	<b style="font:14pt">小组成员： ${map['group'].name}</b>
    <br/>
    说明 ：${map['group'].content}
    <br/>
    <a href="${ctx}/kailian/CmsGroup/preTopic.do?id=${map['group'].id}">发表话题</a>
    <br/>
    
    <br/><br/><br/>
    创建者<br/>
    <c:forEach var="l" items="${map['creators']}">
    	<a href="${ctx}/kailian/CmsGroup/userIndex.do?userid=${l.userid}">${l.username}</a><br/>
       
        <br/>
    </c:forEach>
    
    
   <br/><br/><br/>
   管理员<br/>
    <c:forEach var="l" items="${map['admins']}">
    	<a href="${ctx}/kailian/CmsGroup/userIndex.do?userid=${l.userid}">${l.username}</a><br/>
       
        <br/>
    </c:forEach>
    
    <br/><br/><br/>
    成员
    <br/>
    <c:forEach var="l" items="${map['users']}">
    	<a href="${ctx}/kailian/CmsGroup/userIndex.do?userid=${l.userid}">${l.username}</a><br/>
       
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
