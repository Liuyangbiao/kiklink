<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.io.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.json.simple.*" %>
<%@page import="com.yebucuo.common.util.WwwUtils"%>
<%@page import="com.yebucuo.util.*"%>

<%
String theerror = null;
String refer = request.getHeader("referer");
System.out.println("-------------------------- " + refer);

String path = request.getContextPath();
String basePath = request.getScheme() + "://"
		+ request.getServerName() + ":" + request.getServerPort()
		+ path;
String newFileName1 = null;
String from1 = null;
/**
 * KindEditor JSP
 * 
 * 本JSP程序是演示程序，建议不要直接在实际项目中使用。
 * 如果您确定直接使用本程序，使用之前请仔细确认相关安全设置。
 * 
 */

//文件保存目录路径
String savePath = pageContext.getServletContext().getRealPath("/") + "attached/";
String thumPath = pageContext.getServletContext().getRealPath("/") + "attached/thum/";

//文件保存目录URL
String saveUrl  = request.getContextPath() + "/attached/";
String baseUrl = request.getContextPath();
//定义允许上传的文件扩展名
String types = ConfigUtils.getConfig("文件类型","");
String[] fileTypes = new String[]{"gif", "jpg", "jpeg", "png", "bmp", "swf", "zip", "txt"};
fileTypes = types.split(",");
//最大文件大小
long maxSize =(long)( ConfigUtils.getIntConfig("上传大小限制",0))* 1024 * 1024;

System.out.println(savePath + "    " + saveUrl);

response.setContentType("text/html; charset=UTF-8");

if(!ServletFileUpload.isMultipartContent(request)){
	out.println(getError("请选择文件。"));
	return;
}
//检查目录
File uploadDir = new File(savePath);
if(!uploadDir.isDirectory()){
	out.println(getError("上传目录不存在。"));
	return;
}
//检查目录写权限
if(!uploadDir.canWrite()){
	out.println(getError("上传目录没有写权限。"));
	return;
}

//获取当前年 月 日
Calendar c = Calendar.getInstance();
int year = c.get(Calendar.YEAR);
int month = c.get(Calendar.MONTH);
int day = c.get(Calendar.DATE);
//缩略图路径
String saveSmallPath = savePath + String.valueOf(year) + "/" + String.valueOf(month+1) + "/" + String.valueOf(day) + "/";
File smallPath = new File(saveSmallPath);
if (!smallPath.exists()) {
	smallPath.mkdirs();
}


FileItemFactory factory = new DiskFileItemFactory();
ServletFileUpload upload = new ServletFileUpload(factory);
upload.setHeaderEncoding("UTF-8");
List items = upload.parseRequest(request);
Iterator itr = items.iterator();
while (itr.hasNext()) {
	FileItem item = (FileItem) itr.next();
	String fileName = item.getName();
	long fileSize = item.getSize();
	
	if (!item.isFormField()) {
		//检查文件大小
		if(item.getSize() > maxSize){

			out.println(getError("上传文件大小超过限制。"));
			return;
		}
		//检查扩展名
		String fileExt = fileName.substring(fileName.lastIndexOf(".") + 1).toLowerCase();
		if(!Arrays.<String>asList(fileTypes).contains(fileExt)){
			out.println(getError("上传文件扩展名是不允许的扩展名。"));
			return;
		}
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
		String newFileName = df.format(new Date()) + "_" + new Random().nextInt(1000) + "." + fileExt;
		try{
			File uploadedFile = new File(savePath, newFileName);
			item.write(uploadedFile);
			
		}catch(Exception e){
			e.printStackTrace();
			out.println(getError("上传文件失败。"));
			return;
		}

		JSONObject obj = new JSONObject();
		obj.put("error", 0);
		obj.put("url", saveUrl + newFileName);
		 from1 = request.getParameter("from");
		 newFileName1 = newFileName;
		//out.println(obj.toJSONString());

		//out.println(request.getParameter("from"));		
		
	}
}
%>
<%!
private String synAccessory(String base, String filename) {
	
	String url = base+"/glo/WpAccessories/save.do?accessoriesName=" + filename;
	
	return WwwUtils.disposeURL(url);
}

private String getError(String message) {
	JSONObject obj = new JSONObject();
	obj.put("error", 1);
	obj.put("message", message);
	System.out.println(obj.toJSONString());
	String fanhui = "<a href='#' onclick='history.go(-2);'>返回</a>&nbsp;";
	
	return fanhui + message;
}


private void processimg(int width, int height, String srcpath, String tgtpath, String fname) {
	String cmd = "/opt/ImageMagick/bin/convert";
	String cmd1 = cmd + " -geometry " + width + "x" + height + " " + srcpath + "/" + fname + " " + tgtpath + "/cmax_" + width + "_" + height + "_" + fname;
	String cmd2 = cmd + " -resize " + width + "x" + height + "^ " + srcpath + "/" + fname + " " + tgtpath + "/cmin_" + width + "_" + height + "_" + fname;
	String cmd3 = cmd + " -crop " + width + "x" + height + "+0+0" + " " + tgtpath + "/cmin_" + width + "_" + height + "_" + fname + " " + tgtpath + "/cjie_" + width + "_" + height + "_" + fname;
	runit(cmd1);
	runit(cmd2);
	runit(cmd3);
	
}
private void runit(String cmd) {
Runtime   tt   =   java.lang.Runtime.getRuntime();
try   {
	System.out.println(cmd);
		if (cmd.indexOf("crop") >= 0) {
			Thread.sleep(3000);
		}
        tt.exec( cmd);
}
catch(Exception   e){
        System.out.println(e.toString());
} 
}

%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
 <HEAD>
  <TITLE> New Document </TITLE>
  <META NAME="Generator" CONTENT="EditPlus">
  <META NAME="Author" CONTENT="">
  <META NAME="Keywords" CONTENT="">
  <META NAME="Description" CONTENT="">
 </HEAD>

 <BODY>
	<script type="text/javascript">
		window.parent.uploadok2("<%=from1%>","<%=newFileName1%>");
	</script>
	<form action="upload_json2.jsp?from=<%=from1 %>" id="uploadForm" name="uploadForm" method="post" enctype="multipart/form-data" target="_self">
<input id="imgFile" name="imgFile" style="width: 300px;" type="file"><input type="submit" value='上传' />


</form>
 </BODY>
</HTML>