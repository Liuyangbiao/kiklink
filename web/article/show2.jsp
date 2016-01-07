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

	<b>文章内容</b>
    <br/>
    <b style="color:red;">
    	${map['word']}
    </b>
    
    <b>文章内容</b>
	<br/>
    ${my:showcont('CmsArticle','channelId',model.channelId,0 )}
    
    <br/>
    ${my:showcont('CmsArticle','titile',model.titile,0 )}
    
    <br/>
     ${my:showcont('CmsArticle','content',model.content,0 )}
	<br/>
	
	<c:if test="${model.channelId eq 3}">
		<a class="button" href="${ctx}/kailian/CmsArticle/join.do?id=${model.id}">报名参加</a>
	</c:if>


</body>
<script type="text/javascript">
var host1 = "${ctx}";
$(document).ready(function(){
	
});

	
</script>
<!-- Download From www.exet.tk-->
</html>
