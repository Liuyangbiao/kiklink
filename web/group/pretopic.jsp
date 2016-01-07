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
     <b style="color:red;">
    	${map['word']}
    </b>
  <br/>
  <br/>
  <form action="${ctx}/kailian/CmsGroup/pubTopic.do" method="post">
  <input type="hidden" name="groupid" id="groupid" value="${param.id}" />
  标题： ${my:input('CmsGroupTopic','title',param.title,0,0 )}<br/>
  内容： ${my:input('CmsGroupTopic','content',param.content,0,0 )}<br/>
  <c:forEach var="t" begin="1" end="5">
  	选项${t}:<input id="option${t}" name="option${t}" value="" /><br/>
  </c:forEach>
  
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
