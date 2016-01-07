<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<script src="${ctx}/page2/js/jquery-1.11.1.min.js"></script>
<div class="popup-success">
	<div class="content">
		<img class="pic-success" src="${ctx}/page2/images/icon_04_45x43.png" />
		<h1>恭喜你,报名成功<i>!</i></h1>
		<p>稍后会将活动信息以短信的形式发送至您的手机</p>
		<div class="more">
			<input type="hidden" id = "url" value='<%=request.getParameter("url") %>'/>
			<a href="javascript:void(0);" id="goUrl">跳转至课程页，查看更多课程详情</a>
		</div>
	</div>
</div>
<script>
$(function(){
	$("#goUrl").click(function(){
		window.location.href='<%=request.getParameter("url")%>';
	});
});
</script>