package com.yebucuo.util;
 
 import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
 
 import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;
 
 /**
  * 用于页面jstl时间格式化
  * @author jiangnan
  *
  */
 public class JSTLDateUtils extends TagSupport {
 
	 public static String transTime(long time) {
		 Date date = new Date();
			date.setTime(time);
			
			String fmt = "yyyy-MM-dd HH:ss:mm";
			SimpleDateFormat sdf = new SimpleDateFormat(fmt);
			String dateStr = sdf.format(date);
			
			return dateStr;
	 }
	 
	 public static String transDate(long time) {
		 Date date = new Date();
			date.setTime(time);
			
			String fmt = "yyyy-MM-dd";
			SimpleDateFormat sdf = new SimpleDateFormat(fmt);
			String dateStr = sdf.format(date);
			
			return dateStr;
	 }
	
	 public static String transIntToDate(int d) {
		 if (d <= 0)
			 return "";
		 return d/10000 + "-" + d%10000/100 + "-" + d % 100;
	 }
	 
	 public static String coachTime(int d, int t1, int t2) {
		 if (d <= 0 || t1 <= 0 || t2 <= 0)
			 return "未知";
		 
		 if (t2 % 100 > 0 )
			 t2 = t2 + 70;
		 else 
			 t2 = t2 + 30;
		 
		 return (d/100%100) + "/" + (d%100) + " " + (t1/100) + ":" + (t1%100==0?"00":((t1%100)+""));
		 //return (d/100%100) + "/" + (d%100) + " " + (t1/100) + ":" + (t1%100==0?"00":((t1%100)+"")) + "——" +(t2/100) + ":"+ (t2%100==0?"00":((t2%100)+""));
	 }
}