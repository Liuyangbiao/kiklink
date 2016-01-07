    package com.yebucuo.util;  
      
    import java.awt.AlphaComposite;
import java.awt.Dimension;
import java.awt.Graphics2D;
import java.awt.Image;  
import java.awt.Rectangle;  
import java.awt.RenderingHints;
import java.awt.geom.AffineTransform;  
import java.awt.image.AffineTransformOp;  
import java.awt.image.BufferedImage;  
import java.io.File;  
import java.io.FileInputStream;  
import java.io.FileOutputStream;
import java.io.IOException;  
import java.io.InputStream;  
import java.io.OutputStream;
import java.util.Iterator;  
      















    import javax.imageio.ImageIO;  
import javax.imageio.ImageReadParam;  
import javax.imageio.ImageReader;  
import javax.imageio.stream.ImageInputStream;  
import javax.swing.ImageIcon;

import magick.CompositeOperator;
import magick.ImageInfo;
import magick.MagickException;
import magick.MagickImage;

import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGImageEncoder;
      
    public class ImageUtils {  
        /* 
         * 根据尺寸图片居中裁剪 
         */  
    	public static String getFormat(String src) {
    		if (src == null)
    			return null;
    		
    		int index = src.lastIndexOf(".");
    		return src.substring(index + 1);
    	}
    	
         public static void cutCenterImage(String src,String dest,int w,int h) throws IOException{   
        	 String fmt = ImageUtils.getFormat(src);
        	 
             Iterator iterator = ImageIO.getImageReadersByFormatName(fmt);   
             ImageReader reader = (ImageReader)iterator.next();   
             InputStream in=new FileInputStream(src);  
             ImageInputStream iis = ImageIO.createImageInputStream(in);   
             reader.setInput(iis, true);   
             ImageReadParam param = reader.getDefaultReadParam();   
             int imageIndex = 0;   
             Rectangle rect = new Rectangle((reader.getWidth(imageIndex)-w)/2, (reader.getHeight(imageIndex)-h)/2, w, h);    
             param.setSourceRegion(rect);   
             BufferedImage bi = reader.read(0,param);     
             ImageIO.write(bi, fmt, new File(dest));             
        
         }  
        /* 
         * 图片裁剪二分之一 
         */  
         public static void cutHalfImage(String src,String dest) throws IOException{   
        	 String fmt = ImageUtils.getFormat(src);
        	 String fmt2 = ImageUtils.getFormat(dest);
        	 
             Iterator iterator = ImageIO.getImageReadersByFormatName(fmt);   
             ImageReader reader = (ImageReader)iterator.next();   
             InputStream in=new FileInputStream(src);  
             ImageInputStream iis = ImageIO.createImageInputStream(in);   
             reader.setInput(iis, true);   
             ImageReadParam param = reader.getDefaultReadParam();   
             int imageIndex = 0;   
             int width = reader.getWidth(imageIndex)/2;   
             int height = reader.getHeight(imageIndex)/2;   
             Rectangle rect = new Rectangle(width/2, height/2, width, height);   
             param.setSourceRegion(rect);   
             BufferedImage bi = reader.read(0,param);     
             ImageIO.write(bi, fmt2, new File(dest));     
         }  
        /* 
         * 图片裁剪通用接口 
         */  
      
        public static void cutImage(String src,String dest,int x,int y,int w,int h) throws IOException{   
        	String fmt = ImageUtils.getFormat(src);
        	String fmt2 = ImageUtils.getFormat(dest);
        	
               Iterator iterator = ImageIO.getImageReadersByFormatName(fmt);   
               ImageReader reader = (ImageReader)iterator.next();   
               InputStream in=new FileInputStream(src);  
               ImageInputStream iis = ImageIO.createImageInputStream(in);   
               reader.setInput(iis, true);   
               ImageReadParam param = reader.getDefaultReadParam();   
               Rectangle rect = new Rectangle(x, y, w,h);    
               param.setSourceRegion(rect);   
               BufferedImage bi = reader.read(0,param);     
               ImageIO.write(bi, fmt2, new File(dest));             
      
        }   
        /* 
         * 图片缩放 
         */  
        public static void zoomImage(String src,String dest,int w,int h) throws Exception {  
            double wr=0,hr=0;  
            File srcFile = new File(src);  
            File destFile = new File(dest);  
            BufferedImage bufImg = ImageIO.read(srcFile);  
            Image Itemp = bufImg.getScaledInstance(w, h, bufImg.SCALE_SMOOTH);  
            wr=w*1.0/bufImg.getWidth();  
            hr=h*1.0 / bufImg.getHeight();  
            
            double bili = wr;
            if (wr < hr)
            	bili = hr;
            
            AffineTransformOp ato = new AffineTransformOp(AffineTransform.getScaleInstance(bili, bili),  null);  
            Itemp = ato.filter(bufImg, null);  
            try {  
                ImageIO.write((BufferedImage) Itemp,dest.substring(dest.lastIndexOf(".")+1), destFile);  
            } catch (Exception ex) {  
                ex.printStackTrace();  
            }  
              
        }  
        
        /* 
         * 图片缩放 在指定大小之内
         */  
        public static void zoomImageIn(String src,String dest,int w,int h) throws Exception {  
            double wr=0,hr=0;  
            File srcFile = new File(src);  
            File destFile = new File(dest);  
            BufferedImage bufImg = ImageIO.read(srcFile);  
            Image Itemp = bufImg.getScaledInstance(w, h, bufImg.SCALE_SMOOTH);  
            wr=w*1.0/bufImg.getWidth();  
            hr=h*1.0 / bufImg.getHeight();  
            
            double bili = wr;
            if (wr > hr)
            	bili = hr;
            
            AffineTransformOp ato = new AffineTransformOp(AffineTransform.getScaleInstance(bili, bili),  null);  
            Itemp = ato.filter(bufImg, null);  
            try {  
                ImageIO.write((BufferedImage) Itemp,dest.substring(dest.lastIndexOf(".")+1), destFile);  
            } catch (Exception ex) {  
                ex.printStackTrace();  
            }  
              
        }  
        
        
        public static void zoomAndScale(String src, String dest, int w, int h) {
        	try {
				ImageUtils.createThumbnailOut(src, dest + ".jpg", w, h);
				//Thread.sleep(1000);
				ImageUtils.cutCenterImage(dest + ".jpg", dest, w, h);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        	
        }
        
        
        public static void createThumbnailOut(String src,String dist, int w, int h)
        {
        	double wr=0,hr=0;  
        	
         try
         {
          File srcfile = new File(src);
          if(!srcfile.exists())
          {
           System.out.println("文件不存在");
           return;
          }
          BufferedImage image = ImageIO.read(srcfile);
          
          wr=w*1.0/image.getWidth();  
          hr=h*1.0 / image.getHeight();  
          
          double bili = wr;
          if (wr < hr)
          	bili = hr;
          
          //获得缩放的比例
          double ratio = bili;

          //计算新的图面宽度和高度
          int newWidth =(int)(image.getWidth()*ratio);
          int newHeight =(int)(image.getHeight()*ratio);
          
          BufferedImage bfImage= new BufferedImage(newWidth,newHeight,BufferedImage.TYPE_INT_RGB);
          bfImage.getGraphics().drawImage(image.getScaledInstance(newWidth, newHeight,Image.SCALE_SMOOTH),0,0,null);
          
          FileOutputStream os = new FileOutputStream(dist);
          JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(os);
          encoder.encode(bfImage);
          os.close();
          System.out.println("创建缩略图成功");
         }
         catch(Exception e)
         {
          System.out.println("创建缩略图发生异常"+e.getMessage());
         }
        }
        
        public static void createThumbnailIn(String src,String dist, int w, int h)
        {
        	double wr=0,hr=0;  
        	
         try
         {
          File srcfile = new File(src);
          if(!srcfile.exists())
          {
           System.out.println("文件不存在");
           return;
          }
          BufferedImage image = ImageIO.read(srcfile);
          
          wr=w*1.0/image.getWidth();  
          hr=h*1.0 / image.getHeight();  
          
          double bili = wr;
          if (wr > hr)
          	bili = hr;
          
          //获得缩放的比例
          double ratio = bili;

          //计算新的图面宽度和高度
          int newWidth =(int)(image.getWidth()*ratio);
          int newHeight =(int)(image.getHeight()*ratio);
          
          BufferedImage bfImage= new BufferedImage(newWidth,newHeight,BufferedImage.TYPE_INT_RGB);
          bfImage.getGraphics().drawImage(image.getScaledInstance(newWidth, newHeight,Image.SCALE_SMOOTH),0,0,null);
          
          FileOutputStream os = new FileOutputStream(dist);
          JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(os);
          encoder.encode(bfImage);
          os.close();
          System.out.println("创建缩略图成功");
         }
         catch(Exception e)
         {
          System.out.println("创建缩略图发生异常"+e.getMessage());
         }
        }
        
        
        /**  
         * 给图片添加水印、可设置水印图片旋转角度  
         * @param iconPath 水印图片路径  
         * @param srcImgPath 源图片路径  
         * @param targerPath 目标图片路径  
         * @param degree 水印图片旋转角度  
         */  
        public static void markImageByIcon(String iconPath, String srcImgPath,   
                String targerPath, Integer degree) {   
            OutputStream os = null;   
            
            System.out.println(".......   " + iconPath);
            
            try {   
                Image srcImg = ImageIO.read(new File(srcImgPath));   
                
                if (srcImg.getWidth(null) < 300 || srcImg.getHeight(null) < 300) 
                	return;
      
                BufferedImage buffImg = new BufferedImage(srcImg.getWidth(null),   
                        srcImg.getHeight(null), BufferedImage.TYPE_INT_RGB);   
      
                // 得到画笔对象   
                // Graphics g= buffImg.getGraphics();   
                Graphics2D g = buffImg.createGraphics();   
      
                // 设置对线段的锯齿状边缘处理   
                g.setRenderingHint(RenderingHints.KEY_INTERPOLATION,   
                        RenderingHints.VALUE_INTERPOLATION_BILINEAR);   
      
                g.drawImage(srcImg.getScaledInstance(srcImg.getWidth(null), srcImg   
                        .getHeight(null), Image.SCALE_SMOOTH), 0, 0, null);   
      
                if (null != degree) {   
                    // 设置水印旋转   
                    g.rotate(Math.toRadians(degree),   
                            (double) buffImg.getWidth() / 2, (double) buffImg   
                                    .getHeight() / 2);   
                }   
      
                // 水印图象的路径 水印一般为gif或者png的，这样可设置透明度   
                ImageIcon imgIcon = new ImageIcon(iconPath);   
      
                // 得到Image对象。   
                Image img = imgIcon.getImage();   
      
                float alpha = 0.5f; // 透明度   
                g.setComposite(AlphaComposite.getInstance(AlphaComposite.SRC_ATOP,   
                        alpha));   
                
                
                // 表示水印图片的位置   
                g.drawImage(img, srcImg.getWidth(null)-140, srcImg.getHeight(null)-60, null);   
      
                g.setComposite(AlphaComposite.getInstance(AlphaComposite.SRC_OVER));   
      
                g.dispose();   
      
                os = new FileOutputStream(targerPath);   
      
                // 生成图片   
                ImageIO.write(buffImg, "JPG", os);   
      
                System.out.println("图片完成添加Icon印章。。。。。。" + targerPath);   
            } catch (Exception e) {   
                e.printStackTrace();   
            } finally {   
                try {   
                    if (null != os)   
                        os.close();   
                } catch (Exception e) {   
                    e.printStackTrace();   
                }   
            }   
        }   
        
        /*
         * 
         */
        public static void main(String[] args) {
        	System.out.println(1);
        	try {
        		ImageUtils.markImageByIcon("/Users/dapeng/Desktop/shuiyin.png", "/Users/dapeng/work/java/cms/web/attached/image/20140809/20140809192704_550_b.jpg", "/Users/dapeng/work/java/cms/web/attached/image/20140809/20140809192704_550_b.jpg", null);
        		//ImageUtils.initLogoImg("/Users/dapeng/Desktop/DF297DCB-1C81-4C65-96F6-530E75ACF302.png", "/Users/dapeng/Desktop/22.png", "/Users/dapeng/Desktop/logo.png");
				//ImageUtils.zoomAndScale("/Users/dapeng/Desktop/Default-568h.png", "/Users/dapeng/Desktop/index3.png",200,200);
        		//ImageUtils.zoomImageIn("/Users/dapeng/Desktop/index.jpg", "/Users/dapeng/Desktop/index2.jpg", 200, 200);
				//ImageUtils.cutCenterImage("/Users/dapeng/Desktop/index.jpg", "/Users/dapeng/Desktop/aaa4.jpg", 200, 200);
        		//System.out.println(ImageUtils.getFormat("sadf.afd.asdf.adsf.gif"));
        	} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        }
        
        
    }  