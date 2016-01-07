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

	<b style="font:14pt">
    <a href="${ctx}/kailian/CmsGroup/groupIndex.do?id=${map['group'].id}">
    小组 ${map['group'].name}
    </a>
    </b>
    <br/>
    说明 ：${map['group'].content}
    <br/>
     <b style="color:red;">
    	${map['word']}
    </b>
  <br/>
  <br/>
  最新话题:<br/>
   <c:forEach var="l" items="${map['newtopics']}">
    	<a href="${ctx}/kailian/CmsGroup/getTopic.do?topicid=${l.id}">${l.title}</a><br/>
       
        <br/>
    </c:forEach>
  
  <br/>
  <br/>
  本话题：${map['topic'].title}<br/>
  内容：${map['topic'].content}<br/>

  
  <c:forEach var="l" items="${map['options']}">
${l.optionName}:${l.addition}   <a class="button" href="${ctx}/kailian/CmsGroup/chooseOption.do?optionId=${l.id}&topicid=${param.topicid}">选取</a> <br/>
</c:forEach>
  
  <br/>
  回复列表：<br />
<c:forEach var="l" items="${map['comments']}">
${l.content}<br/>
</c:forEach>
  
  
  
  
  <form action="${ctx}/kailian/CmsGroup/replyTopic.do" method="post">
  <input type="hidden" name="topicid" id="topicid" value="${param.topicid}" />
  <input type="hidden" name="topictitle" id="topictitle" value="${map['topic'].title}" /> 
  内容： ${my:input('CmsGroupCommentetc','content','',0,0 )}<br/>
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
