<%@page import="com.trends.glo.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
	String from = request.getParameter("from");
	String shuzi = request.getParameter("shuzi");
 %>
<html>
	<body>
<form action="upload_json22.jsp" id="uploadForm" name="uploadForm" method="post" enctype="multipart/form-data" target="_self">
<input id="imgFile" name="imgFile" style="width: 300px;" type="file"><input type="submit" value="上传" />
</form>
	</body>
</html>