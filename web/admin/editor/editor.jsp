<%@ page contentType="text/html;charset=UTF-8" %>
<%@page import="com.trends.util.ConstsUtils"%>
<!doctype html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>KindEditor</title>
		<style>
			form {
				margin: 0;
			}
			textarea {
				display: block;
			}
		</style>
		<script charset="utf-8" src="kindeditor.js"></script>
		<script>
			KE.show({
				id : 'content1',
				imageUploadJson : '../../jsp/upload_json.jsp',
				fileManagerJson : '../../jsp/file_manager_json.jsp',
				allowFileManager : true,
				afterCreate : function(id) {
					KE.event.ctrl(document, 13, function() {
						KE.util.setData(id);
						document.forms['example'].submit();
					});
					KE.event.ctrl(KE.g[id].iframeDoc, 13, function() {
						KE.util.setData(id);
						document.forms['example'].submit();
					});
				}
			});
			
			function abc() {
				alert(1);
			}
		</script>

	</head>
	<body>
			<textarea id="content1" name="content1" style="width:800px;height:600px;visibility:hidden;">
			<%
				String id = request.getParameter("id");
				if (id != null) {
					java.util.HashMap<String, String> postsMap = (java.util.HashMap<String,String>)request.getSession().getAttribute(ConstsUtils.STRING_SESSION_POSTSMAP);
					if (postsMap != null) {
						String content = postsMap.get(id);
						if (content != null) {
							out.print(content);
						}
					}
				}
			%>
			</textarea>


	</body>
</html>
