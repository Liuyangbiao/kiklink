package com.yebucuo.util;

import java.awt.Container;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.MediaTracker;
import java.awt.Rectangle;
import java.awt.RenderingHints;
import java.awt.Toolkit;
import java.awt.image.BufferedImage;
import java.awt.image.CropImageFilter;
import java.awt.image.FilteredImageSource;
import java.awt.image.ImageFilter;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.UUID;
import javax.imageio.ImageIO;
import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGEncodeParam;
import com.sun.image.codec.jpeg.JPEGImageEncoder;
public class FileUploadUtils {
/**
* 裁剪图片
* @param input
* @param basepath
* @param uid
* @param x
* @param y
* @param width
* @param height
* @return 绝对路径
* @throws IOException
*/
//public static String cutImg(String input,String basepath,int x,int y,int width,int height) throws IOException{
//String path2 = basepath+"/"+ConstantUtils.USERFACETEMPPATH;
//String postfix = getPostfix(input);
//String dst = path2 +"/"+UUID.randomUUID().toString()+"."+postfix;
//createDir(path2);
//imgCut(basepath+input,dst,postfix,x,y,width,height);
//return dst;
//}
/**
* 裁剪图片
* @param input
* @param src
* @param x
* @param y
* @param width
* @param height
* @throws IOException
*/
public static void imgCut(String input,String dst,String type,int x,int y,int width,int height) throws IOException
{
BufferedImage fromimg = ImageIO.read(new File(input));
ImageFilter cropFilter = new CropImageFilter(x,y,width,height);
Image img = Toolkit.getDefaultToolkit().createImage(new FilteredImageSource(fromimg.getSource(), cropFilter));
BufferedImage tag = new BufferedImage(width,height, BufferedImage.TYPE_INT_RGB);
Graphics g = tag.getGraphics();
g.drawImage(img, 0, 0, null); // 绘制小图
g.dispose();
// 输出为文件
// dir = "d:\\temp\\cut_image_" + i + "_" + j + ".jpg";
File f = new File(dst);
ImageIO.write(tag,type, f);
}
/**
* 上传头像文件
* @param src
* @param basepath
* @param filename
* @return
* @throws Exception
*/
	// public static String uploadImg(File src,String basepath,String filename)
	// throws Exception{
	// String daypath = DateTools.getYear() + "" + DateTools.getMonth() + "" +
	// DateTools.getMonthWeek();
	// String temppath =
	// ConstantUtils.BASEUPLOADPATH+"/"+ConstantUtils.ORIGINALIMGPATH+"/" +
	// daypath;
	// String thumbnailpath =
	// ConstantUtils.BASEUPLOADPATH+"/"+ConstantUtils.THUMBNAILIMGPATH+"/" +
	// daypath;
	// String postfix = getPostfix(filename);
	// String uuid = UUID.randomUUID().toString();
	// String dsttempname = uuid+"."+postfix;
	// createDir(basepath +"/"+temppath);
	// createDir (basepath +"/"+ thumbnailpath);
	// String dstallpath = basepath +"/"+temppath+"/"+dsttempname;
	// String dstthumbnailpath = basepath +"/"+thumbnailpath+"/"+dsttempname;
	// copy(src,new File(dstallpath));
	// //对上传的文件进行 等比例 裁剪。 按照前段要展现的 height width
	// Thumbnail(dstallpath,dstthumbnailpath,350,300,100);
	// //返回裁剪后的路径
	// return thumbnailpath+"/"+dsttempname;
	// }
/**
* 上传文件
* @param src
* @param dst
* @throws Exception
*/
//public static void copy(File src, File dst) throws Exception {
//try {
//InputStream in = null;
//OutputStream out = null;
//try {
//in = new BufferedInputStream(new FileInputStream(src), ConstantUtils.BUFFER_SIZE);
//out = new BufferedOutputStream(new FileOutputStream(dst), ConstantUtils.BUFFER_SIZE);
//byte[] buffer = new byte[ConstantUtils.BUFFER_SIZE];
//while (in.read(buffer) > 0) {
//out.write(buffer);
//}
//} finally {
//if (null != in) {
//in.close();
//}
//if (null != out) {
//out.close();
//}
//}
//} catch (Exception e) {
//e.printStackTrace();
//throw e;
//}
//}
/**
* 得到文件后缀 jpg
* @param fileName
* @return
*/
public static String getPostfix(String fileName){
if (fileName.equals(""))
return "";
int pos = fileName.lastIndexOf(".");
if (pos < 0) {
return fileName.substring(fileName.length() - 3).toLowerCase();
} else {
return fileName.substring(pos+1).toLowerCase();
}
}
/**
* 创建目录
* @param filePath
*/
public static void createDir(String filePath) {
File myFile = new File(filePath);
if (!myFile.exists()) {
if (!myFile.mkdirs())
System.out.println("创建目录 fail");
else
System.out.println("创建目录 success");
}
myFile = null;
}
/**
* 等比例缩放图片
* @param infile
* @param outfile
* @param width
* @param height
* @param quality
* @throws IOException
* @throws InterruptedException
*/
public static void Thumbnail(String infile, String outfile, int width, int height, int quality) throws IOException, InterruptedException {
// save thumbnail image to OUTFILE
//System.out.println("infile:" + infile);
BufferedImage thumbImage = null;
BufferedOutputStream out = null;
Image image = null;
image = Toolkit.getDefaultToolkit().createImage(infile);
MediaTracker mediaTracker = new MediaTracker(new Container());
mediaTracker.addImage(image, 0);
mediaTracker.waitForID(0);
int thumbWidth = width;
int thumbHeight = height;
double thumbRatio = (double) thumbWidth / (double) thumbHeight;
int imageWidth = image.getWidth(null);
int imageHeight = image.getHeight(null);
double imageRatio = (double) imageWidth / (double) imageHeight;
if (thumbRatio < imageRatio) {
thumbHeight = (int) (thumbWidth / imageRatio);
} else {
thumbWidth = (int) (thumbHeight * imageRatio);
}
thumbImage = new BufferedImage(thumbWidth, thumbHeight, BufferedImage.TYPE_INT_RGB);
Graphics2D graphics2D = thumbImage.createGraphics();
graphics2D.setRenderingHint(RenderingHints.KEY_INTERPOLATION, RenderingHints.VALUE_INTERPOLATION_BILINEAR);
graphics2D.drawImage(image,0,0, thumbWidth, thumbHeight, null);
out = new BufferedOutputStream(new FileOutputStream(outfile));
JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(out);
JPEGEncodeParam param = encoder.getDefaultJPEGEncodeParam(thumbImage);
quality = Math.max(0, Math.min(quality, 100));
param.setQuality((float) quality / 100.0f, false);
encoder.setJPEGEncodeParam(param);
encoder.encode(thumbImage);
out.close();
thumbImage = null;
out = null;
image = null;
}


public static void main(String[] args) {
	String s1 = "/Users/Dapeng/Desktop/1-2.png";
	String s2 = "/Users/Dapeng/Desktop/222.png";
	
	try {
		FileUploadUtils.Thumbnail(s1, s2, 100, 100, 100);
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (InterruptedException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}


}