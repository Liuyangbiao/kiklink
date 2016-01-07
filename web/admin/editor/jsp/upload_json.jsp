<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.io.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.json.simple.*" %>
<%@page import="com.yebucuo.common.util.WwwUtils"%>
<%@page import="com.trends.util.*"%>

<%



String path = request.getContextPath();
String basePath = request.getScheme() + "://"
		+ request.getServerName() + ":" + request.getServerPort()
		+ path;

/**
 * KindEditor JSP
 * 
 * 本JSP程序是演示程序，建议不要直接在实际项目中使用。
 * 如果您确定直接使用本程序，使用之前请仔细确认相关安全设置。
 * 
 */

//文件保存目录路径
String savePath = pageContext.getServletContext().getRealPath("/") + "attached/";

//文件保存目录URL
String saveUrl  = request.getContextPath() + "/attached/";
String baseUrl = request.getContextPath();
//定义允许上传的文件扩展名
String[] fileTypes = new String[]{"gif", "jpg", "jpeg", "png", "bmp"};
//最大文件大小
long maxSize = 1000000;

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
			
			//生成缩略图
			String smallFileName = "s_" + newFileName;
			//ImageUtil.saveImageAsJpg(savePath + newFileName, saveSmallPath + smallFileName, 150, 100);
			/*
			ImageUtil.saveImageAsJpg(savePath + newFileName, saveSmallPath +  "min_115_150_" + newFileName, 115, 150, false);
			ImageUtil.saveImageAsJpg(savePath + newFileName, saveSmallPath +  "max_115_150_" + newFileName, 115, 150, true);
			
			ImageUtil.saveImageAsJpg(savePath + newFileName, saveSmallPath +  "min_135_105_" + newFileName, 135, 105, false);
			ImageUtil.saveImageAsJpg(savePath + newFileName, saveSmallPath +  "max_135_105_" + newFileName, 135, 105, true);
			
			ImageUtil.saveImageAsJpg(savePath + newFileName, saveSmallPath +  "min_116_90_" + newFileName, 116, 90, false);
			ImageUtil.saveImageAsJpg(savePath + newFileName, saveSmallPath +  "max_116_90_" + newFileName, 116, 90, true);
			
			ImageUtil.saveImageAsJpg(savePath + newFileName, saveSmallPath +  "min_80_60_" + newFileName, 80, 60, false);
			ImageUtil.saveImageAsJpg(savePath + newFileName, saveSmallPath +  "max_80_60_" + newFileName, 80, 60, true);
			
			ImageUtil.saveImageAsJpg(savePath + newFileName, saveSmallPath +  "min_80_110_" + newFileName, 80, 110, false);
			ImageUtil.saveImageAsJpg(savePath + newFileName, saveSmallPath +  "max_80_110_" + newFileName, 80, 110, true);
			*/
			
			//processimg(320, 200, savePath, saveSmallPath, newFileName);
			/*
			String cmd = "/opt/ImageMagick/bin/composite -gravity southeast " + savePath + "/logo.png " + savePath + "/" + newFileName + " " + savePath + "/n_" + newFileName;
			runit(cmd);
			processimg(600, 600, savePath, saveSmallPath, newFileName);
			
			synAccessory(basePath,newFileName);
			*/
		}catch(Exception e){
			e.printStackTrace();
			out.println(getError("上传文件失败。"));
			return;
		}

		JSONObject obj = new JSONObject();
		obj.put("error", 0);
		obj.put("url", saveUrl + newFileName);

		out.println(obj.toJSONString());

		
		
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
	return obj.toJSONString();
}

private void processimg(int width, int height, String srcpath, String tgtpath, String fname) {
	String cmd = "/opt/ImageMagick/bin/convert";
	String cmd1 = cmd + " -geometry " + width + "x" + height + " " + srcpath + "/" + fname + " " + tgtpath + "/max_" + width + "_" + height + "_" + fname;
	String cmd2 = cmd + " -resize " + width + "x" + height + "^ " + srcpath + "/" + fname + " " + tgtpath + "/min_" + width + "_" + height + "_" + fname;
	String cmd3 = cmd + " -crop " + width + "x" + height + "+0+0" + " " + tgtpath + "/min_" + width + "_" + height + "_" + fname + " " + tgtpath + "/jie_" + width + "_" + height + "_" + fname;
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
        if (cmd.indexOf("composite") >= 0) {
			Thread.sleep(3000);
		}
}
catch(Exception   e){
        System.out.println(e.toString());
} 
}
%>