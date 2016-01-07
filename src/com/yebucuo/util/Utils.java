package com.yebucuo.util;

import java.beans.BeanInfo;
import java.beans.Introspector;
import java.beans.PropertyDescriptor;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

import javapns.back.PushNotificationManager;
import javapns.back.SSLConnectionHelper;
import javapns.data.Device;
import javapns.data.PayLoad;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.apache.log4j.xml.DOMConfigurator;
import org.json.JSONException;
import org.springframework.web.servlet.support.JstlUtils;

import cn.org.rapid_framework.page.Page;

import com.kailian.glo.model.CmsAdminuser;
import com.kailian.glo.model.CmsInputTable;
import com.kailian.glo.model.CmsIpdata;
import com.kailian.glo.model.CmsUserInfo;
import com.kailian.glo.model.KlSellerShop;
import com.kailian.glo.service.ICmsUserInfoManager;
import com.kailian.glo.service.IKlSellerShopManager;
import com.kailian.glo.vo.query.CmsGroupQuery;
import com.yebucuo.common.util.Json;
import com.yebucuo.sigleton.InputSingleton;
import com.yebucuo.spring.SpringContext;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.regexp.RegexpUtils;

public class Utils {
	// Logger.getLogger(this.getClass()).info("11111aaaaaaaaa");

	private static final Map messageMap = new HashMap();

	public static Map getMessagemap() {
		return messageMap;
	}
	
	
	//分类
	//球类,10,健身瑜伽,20,运动恢复,30,水上冰上,40,极限户外,50,舞蹈,60,射击搏击格斗,70
	
	
	public static final int STATUS_SHOP_VERYFING = 0;
	public static final int STATUS_SHOP_NORMAL = 1;
	public static final int STATUS_SHOP_REJECTED = -1;
	
	//预约
	public static final int STATUS_COACHTIME_WAITINGCONFIRM = 0;
	public static final int STATUS_COACHTIME_MEIYUYUE = -1;
	public static final int STATUS_COACHTIME_CONFIRMD = 1;
	public static final int STATUS_COACHTIME_WAITCONFIRMCLASSED = 2;
	public static final int STATUS_COACHTIME_CLASSED = 3;
	public static final int STATUS_COACHTIME_CANNELED = -2;
	

	
	
	
	
	public static final int LEVEL_ORG_CREATOR = 10;
	public static final int LEVEL_ORG_ADMIN = 5;
	public static final int LEVEL_ORG_USER = 1;
	
	public static final int TYPE_ETC_COMMENT = 10;
	public static final int TYPE_ETC_FLOWER = 20;
	public static final int TYPE_ETC_EGG = 30;
	public static final int TYPE_ETC_SUGGEST = 50;
	
	public static final int TYPE_PHOTOOWNER_SHOP = 10;
	public static final int TYPE_PHOTOOWNER_PRODUCT = 20;
	
	
	public static final int TYPE_TOPIC_NORMAL = 0;
	public static final int TYPE_TOPIC_SURVAY = 10;
	
	public static final int TYPE_TARGET_WEBSITE = 2;
	public static final int TYPE_TARGET_USER = 5;
	public static final int TYPE_TARGET_SHOP = 10;
	public static final int TYPE_TARGET_PRODUCT = 20;
	public static final int TYPE_TARGET_ARTICLE = 30;
	public static final int TYPE_TARGET_TRANNINGRECORD = 40;
	
	
	
	public static final int TYPE_ACTIVITY_COACH = 10;
	
	public static final int STATUS_PRODUCT_OK = 1;
	public static final int STATUS_PRODUCT_HIDDEN = 0;
	public static final int STATUS_PRODUCT_REJECT = -1;
	
	public static final int STATUS_GROUP_OK = 1;
	public static final int STATUS_GROUP_NOSPEAKING = 0;
	public static final int STATUS_GROUP_NOSEE = -1;
	
	public static final int STATUS_ORDER_TEMP = 0;
	public static final int STATUS_ORDER_WAITINGFORPAY = 10;
	public static final int STATUS_ORDER_PAYED = 20;
	public static final int STATUS_ORDER_DONE = 30;
	public static final int STATUS_ORDER_SHOPWAITINGMONEY = 45;
	public static final int STATUS_ORDER_SHOPGOTMONEY = 50;
	public static final int STATUS_ORDER_OVER = -10;
	public static final int STATUS_ORDER_PAYFAILED = -20;
	
	public static final int STATUS_ORDER_SHOPCLOSEPENDING = -41;
	public static final int STATUS_ORDER_CLOSEDBYSHOP = -42;
	
	
	public static final int TYPE_PHOTO_SHOP = 20;
	public static final int TYPE_PHOTO_FOCUSOFSHOP = 21;
	
	public static final int CATEGORY_EQUIPMENT = 20;
	public static final int CATEGORY_AREA = 30;
	
	
	//public static final int STATUS_PAYEDPRODUCT_PAYED = 10;
	public static final int STATUS_PAYEDPRODUCT_WAITINGFORCONFIRM = 50;
	
	

	public static final String KEY_JUHE = "f44c3da34d74c6f5d5f94fe7b3ef556a";

	public static final int STATUS_CALL_NONE = -1;

	public static final int RE_ERROR = -1;
	public static final int RE_OK = 1;
	public static final int RE_NONE = 0;

	public static final int STATUS_USER_NONE = 0;
	public static final int STATUS_USER_OK = 1;
	public static final int STATUS_USER_BLACK = -1;

	public static final int STATUS_CAR_DAISHENHE = 0;
	public static final int STATUS_CAR_YISHENHE = 1;
	public static final int STATUS_CAR_WEITONGGUO = -1;

	public static final int STATUS_REJECT = -1;

	public static final int TYPE_ACTIVITY_DRIVE = 1;
	public static final int TYPE_ACTIVITY_PARTY = 2;

	public static final int TYPE_CREATOR_ACTIVITY_USER = 1;
	public static final int TYPE_CREATOR_ACTIVITY_TEAM = 2;

	/*
	 * messagetype int default 0 comment '0 word 1 image 2 audio 3 video 4
	 * position 11 focus 12 addteam', desttype int default 0 comment '0 user 1
	 * team 2 activity',
	 */
	public static final int TYPE_MESSAGE_WORD = 0;
	public static final int TYPE_MESSAGE_IMAGE = 1;
	public static final int TYPE_MESSAGE_AUDIO = 2;
	public static final int TYPE_MESSAGE_VIDEO = 3;
	public static final int TYPE_MESSAGE_POSITION = 4;
	public static final int TYPE_MESSAGE_FOCUS = 11;
	public static final int TYPE_MESSAGE_ADDTEAM = 12;
	public static final int TYPE_MESSAGE_ADDACTIVITY = 13;
	public static final int TYPE_MESSAGE_ADDTEAM_OK = 22;
	public static final int TYPE_MESSAGE_ADDACTIVITY_OK = 23;
	public static final int TYPE_MESSAGE_FRIEND = 19;

	public static final int TYPE_MESSAGE_TONGGUO = 31;
	public static final int TYPE_MESSAGE_JUJUE = 32;

	public static final int STATUS_MESSAGE_NONE = 0;
	public static final int STATUS_MESSAGE_CHECKED = 1;

	public static final int TYPE_DEST_USER = 0;
	public static final int TYPE_DEST_TEAM = 1;
	public static final int TYPE_DEST_ACTIVITY = 2;
	
	public static final int TYPE_FROM_USER = 0;
	public static final int TYPE_FROM_SYSTEM = 10;
	

	public static final int RE_REGISTER_OK = 11;
	public static final int RE_LOGIN_OK = 10;

	public static final String TYPE_LOG_MOB = "MOB";
	public static final String TYPE_LOG_weibo = "sinaweibo";
	public static final String TYPE_LOG_tengcent = "tencentqq";

	public static final int TYPE_USERCAR_OWN = 0; // 认证车辆
	public static final int TYPE_USERCAR_FOCUS = 1; // 关注车辆

	public static final int LEVEL_ADMIN = 100;

	// public static final int
	
	public static final int STATUS_COACHTIME_FREE = 0;
	public static final int STATUS_COACHTIME_PARTORDERD = 10;
	public static final int STATUS_COACHTIME_ALLORDERD = 20;
	public static final int STATUS_COACHTIME_BUSY = 30;
	public static final int STATUS_COACHTIME_NOSERVING = 50;
	
	

	public static final String NAME_CONFIG_LIMIT_TEAMUSER = "车队成员数限制";
	public static final String NAME_CONFIG_LIMIT_ACTIVITYUSER = "活动成员数限制";
	public static final String NAME_CONFIG_LIMIT_USERCREATETEAM = "用户创建车队限制";
	public static final String NAME_CONFIG_LIMIT_USERCREATEACTIVITY = "用户创建车队限制";
	public static final String NAME_CONFIG_LIMIT_ACTIVITYLUXIAN = "活动中路线数量限制";

	public static final String NAME_CONFIG_FILETER_WORDS = "过滤词";

	public static boolean canGetMessage(long id) {
		synchronized (messageMap) {
			if (messageMap.containsKey(id + ""))
				return false;
			messageMap.put(id + "", "1");
			return true;
		}
	}

	public static void doneGetMessage(long id) {
		synchronized (messageMap) {
			messageMap.remove(id + "");

		}
	}

	public static int checkUser(HttpServletRequest request) {
		/*
		 * YebucuoGsUser u =
		 * (YebucuoGsUser)request.getSession().getAttribute("user"); if (u ==
		 * null) return TYPE_ERROR;
		 * 
		 * return u.getUserType();
		 */
		return 1;
	}

	public static boolean checkUser(HttpServletRequest request, int max) {
		/*
		 * System.out.println("======================  " ); YebucuoGsUser u =
		 * (YebucuoGsUser)request.getSession().getAttribute("user"); if (u ==
		 * null) return false;
		 * 
		 * System.out.println("======================  " + u.getUserType() +
		 * "   " + max); if (u.getUserType() > max) return false;
		 */
		return true;
	}

	public static void sessionUser(HttpServletRequest request) {
		request.setAttribute("user", request.getSession().getAttribute("user"));
	}

	public static long getSessionUserId(HttpServletRequest request) {

		// CtAdmin u = (CtAdmin)request.getSession().getAttribute("user");
		// if (u == null)
		// return -1;
		// return u.getId();
		return 0;
	}

	public static float getFloatParam(HttpServletRequest request, String name) {
		String str = request.getParameter(name);
		if (StringUtils.isEmpty(str) )
			return (float) -1;
		
		return Float.parseFloat(str);
	}

	public static String getParam(HttpServletRequest request, String name) {
		String str = request.getParameter(name);
//		if (str != null)
//			try {
//				str = new String(str.getBytes("iso-8859-1"), "utf-8");
//			} catch (UnsupportedEncodingException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
		return str;
	}

	public static long getLongParam(HttpServletRequest request, String name) {
		String str = request.getParameter(name);
		if (str == null || StringUtils.isEmpty(str)
				|| Utils.isNumeric(str) == false)
			return -1;
		return Long.parseLong(str);
	}

	public static int getIntParam(HttpServletRequest request, String name) {
		String str = request.getParameter(name);
		if (str == null || Utils.isNumeric(str) == false)
			return -1;
		int re = -1;
		try {
			re = Integer.parseInt(str);
		} catch (Exception e) {
			return -1;
		}
		return re;
	}

	public static int getPageno(HttpServletRequest request) {
		int pageno = Utils.getIntParam(request, "pageno");
		if (pageno <= 0)
			pageno = 1;
		return pageno;
	}

	public static boolean checkUsername(String username) {
		if (username == null)
			return false;
		Pattern p = Pattern.compile("\\w{4,20}");
		return p.matcher(username).matches();
	}

	public static boolean checkPasswd(String passwd) {
		if (passwd == null)
			return false;
		Pattern p = Pattern.compile("\\w{4,20}");
		return p.matcher(passwd).matches();
	}

	public static String reJson(String src) {
		if (src == null)
			return src;

		String a = src;
		a = a.trim();
		a = a.replaceAll("\\s+", "");
		a = a.replaceAll("\\t+", "");
		a = a.replaceAll("http:", "http~~");

		a = a.replaceAll(",", "','");
		a = a.replaceAll(":", "':'");
		a = a.replaceAll("\\{", "\\{'");
		a = a.replaceAll(":'\\[", ":\\[");

		a = a.replaceAll("}", "'}");
		a = a.replaceAll("}'", "}");
		a = a.replaceAll("]'", "]");
		a = a.replaceAll("'\\{", "\\{");
		a = a.replaceAll("http~~", "http:");
		a = a.replaceAll("'image':[^,]+,", "");

		System.out.println(a);
		return a;

	}

	public static boolean checkEmail(String email) {
		String checkemail = "^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$";
		if (email == null)
			return false;
		Pattern p = Pattern.compile(checkemail);
		return p.matcher(email).matches();
	}

	public static boolean checkMobile(String email) {
		String checkemail = "^1(\\d){10,10}$";
		if (email == null)
			return false;
		Pattern p = Pattern.compile(checkemail);
		return p.matcher(email).matches();
	}

	public static String toJson(Map map) {
		JSONObject json = JSONObject.fromObject(map);
		String re = json.toString();
		if (re != null)
			try {
				// re = new String(re.getBytes(), "utf8");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return re;
	}

	public static Map jsonToMap(String json) {
		JSONObject jsonMap = JSONObject.fromObject(json);
		Map map = new HashMap();
		Iterator<String> it = jsonMap.keys();  
	    while(it.hasNext()) {  
	        String key = (String) it.next();  
	        String vl =  jsonMap.getString(key);
	        map.put(key, vl);  
	    }
	    
	    return map;
	}
	
	public static String getHTML(String pageURL, String encoding) {
		StringBuilder pageHTML = new StringBuilder();
		try {
			URL url = new URL(pageURL);
			HttpURLConnection connection = (HttpURLConnection) url
					.openConnection();
			connection.setRequestProperty("User-Agent", "MSIE 7.0");
			BufferedReader br = new BufferedReader(new InputStreamReader(
					connection.getInputStream(), encoding));
			String line = null;
			while ((line = br.readLine()) != null) {
				pageHTML.append(line);
				pageHTML.append("\r\n");
			}
			connection.disconnect();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return pageHTML.toString();
	}

	public static String Utf8URLencode(String text) {
		StringBuffer result = new StringBuffer();
		for (int i = 0; i < text.length(); i++) {
			char c = text.charAt(i);
			if (c >= 0 && c <= 255) {
				result.append(c);
			} else {
				byte[] b = new byte[0];
				try {
					b = Character.toString(c).getBytes("UTF-8");
				} catch (Exception ex) {
				}
				for (int j = 0; j < b.length; j++) {
					int k = b[j];
					if (k < 0)
						k += 256;
					result.append("%" + Integer.toHexString(k).toUpperCase());
				}
			}
		}
		return result.toString();
	}

	// 时间转毫秒
	public static long timetohaomiao(String time, String form) {
		if (form == null) {
			form = "yyyy-MM-dd hh:mm";
		}
		// if (time.indexOf(":") < 0) {
		// form = "yyyy-MM-dd";
		// }

		SimpleDateFormat format = new SimpleDateFormat(form);

		try {
			Date date = format.parse(time);
			return date.getTime();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return -1;
	}

	public static Map getZimus(String pre) {
		String s = Utils.getHTML(pre + "/juhe/zimu.txt", "utf-8");
		// System.out.println(s);
		Map map = new HashMap();
		String[] ss = s.split("\n");
		for (int i = 0; i < ss.length; i++) {
			if (StringUtils.isEmpty(ss[i]) || ss[i].length() < 5)
				continue;

			String hang = ss[i];
			String[] ks = hang.split(" ");

			int start = hang.indexOf("[");
			int end = hang.indexOf("]");
			String zi = hang.substring(start + 1, end);
			System.out.println(zi);

			if (zi.equals("京") || zi.equals("沪") || zi.equals("津")
					|| zi.equals("渝")) {
				continue;
			}

			for (int j = 1; j + 2 <= ks.length; j = j + 2) {
				System.out.println(ks[j] + "  " + ks[j + 1]);
				map.put(zi + ks[j],
						ks[j + 1].replaceAll("市", "").replaceAll("地区", ""));
			}
			map.put("京", "BJ");
			map.put("沪", "SH");
			map.put("津", "TJ");
			map.put("渝", "CQ");
		}

		String s1 = Utils.toJson(map);
		System.out.println(s1);
		return map;
		// http://v.juhe.cn/wz/query?city=BJ&hphm=%E4%BA%ACA91219&hpzl=02&engineno=094464&key=80900548054c6b64cb6af6f4ad2a6f04
	}

	public static boolean saveUrlAs(String fileUrl, String savePath)/* fileUrl网络资源地址 */
	{

		try {
			URL url = new URL(fileUrl);/* 将网络资源地址传给,即赋值给url */
			/* 此为联系获得网络资源的固定格式用法，以便后面的in变量获得url截取网络资源的输入流 */
			HttpURLConnection connection = (HttpURLConnection) url
					.openConnection();
			DataInputStream in = new DataInputStream(
					connection.getInputStream());
			/* 此处也可用BufferedInputStream与BufferedOutputStream */
			DataOutputStream out = new DataOutputStream(new FileOutputStream(
					savePath));
			/* 将参数savePath，即将截取的图片的存储在本地地址赋值给out输出流所指定的地址 */
			byte[] buffer = new byte[4096];
			int count = 0;
			while ((count = in.read(buffer)) > 0)/* 将输入流以字节的形式读取并写入buffer中 */
			{
				out.write(buffer, 0, count);
			}
			out.close();/* 后面三行为关闭输入输出流以及网络资源的固定格式 */
			in.close();
			connection.disconnect();
			return true;/* 网络资源截取并存储本地成功返回true */

		} catch (Exception e) {
			System.out.println(e + fileUrl + savePath);
			return false;
		}
	}

	public static String haobiaoToTime(long haomiao) {
		Date date = new Date();
		date.setTime(haomiao);

		String fmt = "yyyy-MM-dd HH:ss:mm";
		SimpleDateFormat sdf = new SimpleDateFormat(fmt);
		String dateStr = sdf.format(date);

		return dateStr;
	}

	public static Date StringToDate(String dateStr, String formatStr) {
		if (formatStr == null)
			formatStr = "yyyy/MM/dd HH:mm";
		DateFormat dd = new SimpleDateFormat(formatStr);
		Date date = null;
		try {
			date = dd.parse(dateStr);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date;
	}

	public static void writeFile(String name, String content) {
//		try {
//			content = new String(content.getBytes("utf-8"), "iso-8859-1");
//		} catch (UnsupportedEncodingException e1) {
//			// TODO Auto-generated catch block
//			e1.printStackTrace();
//		}
//		FileWriter fw;
		
		OutputStreamWriter write = null;
		try {
			write = new OutputStreamWriter(new FileOutputStream(name),"UTF-8");
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (FileNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		 BufferedWriter fw=new BufferedWriter(write);
		try {
//			fw = new FileWriter(name);

			String s = content;
			fw.write(s, 0, s.length());
			fw.flush();
			fw.close();

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public static void mainxx1(String[] args) {
		// Utils.writeFile("/Users/Dapeng/aaa.txt", "aaabcd");
		// String s = Utils.class.getClass().getResource("/").getPath();
		// System.out.println(s);

		File file = new File("/Users/Dapeng/Desktop/aa.txt");
		BufferedReader reader = null;
		try {
			System.out.println("以行为单位读取文件内容，一次读一行");
			reader = new BufferedReader(new FileReader(file));
			String tempString = null;
			int line = 1;
			// 一次读一行，读入null时文件结束
			while ((tempString = reader.readLine()) != null) {
				// 把当前行号显示出来
				System.out.println("line " + line + ": " + tempString);
				String[] ss = tempString.split("\\s+");
				CmsIpdata ip = new CmsIpdata();
				ip.setIpfrom(ss[0]);
				ip.setIpto(ss[1]);
				ip.setArea(ss[2]);
				ip.setOperatior(ss[3]);
				String[] s = ss[0].split("\\.");
				long num = Long.parseLong(s[3]) + Long.parseLong(s[2])*256 + Long.parseLong(s[1])*256*256 + Long.parseLong(s[0]) * 256*256*256;
				ip.setNumFrom(num);
				s = ss[1].split("\\.");
				num = Long.parseLong(s[3]) + Long.parseLong(s[2])*256 + Long.parseLong(s[1])*256*256 + Long.parseLong(s[0]) * 256*256*256;
				ip.setNumTo(num);
				System.out.println(ip.toString());
				//System.out.println(s.length);
				
				line++;
			}
			reader.close();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if (reader != null) {
				try {
					reader.close();
				} catch (IOException e1) {
				}
			}
		}
	}
	
	
	
	
	public static Map checkParamerts(HttpServletRequest request , String parameters) {
		Map map = new HashMap();
		StringBuilder sb = new StringBuilder();
		
		String[] ss = request.getRequestURI().toString().split("/");
		String classname = Utils.getParam(request, "checkclassname");
		if (StringUtils.isEmpty(classname)	)	
			classname =  ss[ss.length-2].replaceAll("Action", "");

		ss = parameters.split(",");
		for (String param : ss) {
			String v = request.getParameter(param);
			
			//重复密码
			if ("repasswd".equalsIgnoreCase(param) && StringUtils.isNotEmpty(Utils.getParam(request, "ajax"))) {
				String repasswd = Utils.getParam(request, "repasswd");
				String passwd = Utils.getParam(request, "passwd");
				if (StringUtils.isEmpty(repasswd) ) {
					sb.append("重复密码不能为空 ");
					map.put("err_" + param, "重复密码不能为空");
					continue;
				}
				if (repasswd.equalsIgnoreCase(passwd) == false ) {
					sb.append("两次密码不一致 ");
					map.put("err_" + param, "两次密码不一致");
					continue;
				}
					
			}
			//map.put("err_" + param, "");
			
			//验证码
			else if ("validnum".equalsIgnoreCase(param) && StringUtils.isEmpty(Utils.getParam(request, "ajax"))) {
//				if (StringUtils.isEmpty(v) ||  v.equalsIgnoreCase((String) Utils.getSessionByRequest(request).getAttribute("validnum"))== false) {
//					sb.append("请输入正确的验证码 ");
//					map.put("err_" + param, "请输入正确的验证码");
//					continue;
//				}
			}
			
			//手机验证码
			
			else if ("mobilevalidnum".equalsIgnoreCase(param)) {
				String sessionv = (String) Utils.getSessionByRequest(request).getAttribute("validnum"+Utils.getParam(request, "mobile"));
				if (StringUtils.isEmpty(v) ) {
				//if (StringUtils.isEmpty(v) || v.equalsIgnoreCase(sessionv) == false) {
					sb.append("手机验证码错误 ");
					map.put("err_" + param, "手机验证码错误");
					continue;
				}
				else {
					request.getSession().removeAttribute("validnum"+Utils.getParam(request, "mobile"));
				}
			}
			//邮箱验证码
			else if ("emailvalidnum".equalsIgnoreCase(param)) {
				String sessionv = (String) Utils.getSessionByRequest(request).getAttribute("emailvalidnum"+Utils.getParam(request, "email"));
				if (StringUtils.isEmpty(v) ) {
				//if (StringUtils.isEmpty(v) || v.equalsIgnoreCase(sessionv) == false) {
					sb.append("邮箱验证码错误 ");
					map.put("err_" + param, "邮箱验证码错误");
					continue;
				}
				else {
					request.getSession().removeAttribute("emailvalidnum"+Utils.getParam(request, "email"));
				}
			}
			
			//管理员
			else if ("adminuser".equalsIgnoreCase(param)) {
				if (request.getSession().getAttribute("adminuser") == null) {
					sb.append("没有管理员权限");
					map.put("err_" + param, "没有管理员权限");
					continue;
				}
			}
			
			//session user
			else if ("sessionuser".equalsIgnoreCase(param)) {
				CmsUserInfo user = (CmsUserInfo) Utils.getSessionByRequest(request).getAttribute("user");
				if (user == null || user.getId() == null) {
					sb.append("您没有登录");
					map.put("err_" + param, "您没有登录");
					continue;
				}
			}
			else if ("sessionshop".equalsIgnoreCase(param)) {
				KlSellerShop shop = (KlSellerShop)  Utils.getSessionByRequest(request).getAttribute("sessionshop");
				if (shop != null ) {
					IKlSellerShopManager klSellerShopManager  = (IKlSellerShopManager) SpringContext.getBean("klSellerShopManager");
					shop = klSellerShopManager.getById(shop.getId());
					request.getSession().setAttribute("sessionshop", shop);
				}
				
				if (shop == null || shop.getId() == null) {
					sb.append("您没有登录或者没有开店");
					map.put("err_" + param, "您没有登录或者没有开店");
					continue;
				}
				else if (shop.getStatus() != null && shop.getStatus() <= 0) {
					sb.append("您的店铺处于审核状态");
					map.put("err_" + param, "您的店铺处于审核状态");
					continue;
				}
			}
			else if ("adminuser".equalsIgnoreCase(param)) {
				CmsAdminuser user = (CmsAdminuser)  Utils.getSessionByRequest(request).getAttribute("adminuser");
				if (user == null) {
					sb.append("您没有管理员权限");
					map.put("err_" + param, "您没有管理员权限");
					continue;
				}
			}
			
			
			CmsInputTable cit = (CmsInputTable) InputSingleton.getInputMap().get(param);
			if (cit == null)
				cit = (CmsInputTable) InputSingleton.getInputMap().get(classname + "-" + param);
			
			if (cit != null) {
				
				//是否必须
				if (cit.getRequired() != null && cit.getRequired() > 0 && StringUtils.isEmpty(v)) {
					sb.append(cit.getInputCnName() + "不能为空 ");
					map.put("err_" + param, cit.getInputCnName() + "不能为空");
					continue;
				}
				//检查长度
				if (cit.getMinlength() != null  && cit.getMaxlength() != null && cit.getMinlength() > 0 && cit.getMaxlength() > 0 && StringUtils.isNotEmpty(v)) {
					if (v.length() > cit.getMaxlength()	) {
						sb.append(cit.getInputCnName() + "长度不能超过" + cit.getMaxlength() + " ");
						map.put("err_" + param, cit.getInputCnName() + "长度不能超过" + cit.getMaxlength());
						continue;
					}
					if (v.length() < cit.getMinlength()	) {
						sb.append(cit.getInputCnName() + "长度不能少于" + cit.getMinlength() + " ");
						map.put("err_" + param, cit.getInputCnName() + "长度不能少于" + cit.getMinlength());
						continue;
					}
				}
				
				//检查格式等
				/*
				 * 	public static final int type_input_text = 0;
	public static final int type_input_password = 2;
	public static final int type_input_email = 3;
	public static final int type_input_mobile = 4;
	public static final int type_input_phone = 5;
	public static final int type_input_url = 6;
	public static final int type_input_image = 7;
	public static final int type_input_number = 10;
	public static final int type_input_textarea = 20;
	public static final int type_input_select = 30;
	public static final int type_input_html = 40;
	public static final int type_input_iframe = 50;
	public static final int type_input_hidden = 60;
	public static final int type_input_unshow = 70;
	public static final int type_input_locked = 80;
				 */
				if (StringUtils.isNotEmpty(v) && cit.getInputType() != null) {
					if (cit.getInputType() == JSTLTagUtils.type_input_number || cit.getInputType() == JSTLTagUtils.type_input_select) {
						if (StringUtils.isNumeric(v) == false) {
							sb.append(cit.getInputCnName() + "格式错误 ");
							map.put("err_" + param, cit.getInputCnName() + "格式错误");
							continue;
						}
					}
					
					if (cit.getInputType() == JSTLTagUtils.type_input_email) {
						if (Utils.checkEmail(v) == false ) {
							sb.append(cit.getInputCnName() + "格式错误 ");
							map.put("err_" + param, cit.getInputCnName() + "格式错误");
							continue;
						}
					}

					if (cit.getInputType() == JSTLTagUtils.type_input_mobile) {
						if (Utils.checkMobile(v) == false) {
							sb.append(cit.getInputCnName() + "格式错误 ");
							map.put("err_" + param, cit.getInputCnName() + "格式错误");
							continue;
						}
					}
					
					
				}
			}
		}
		
		if (sb.length() > 0) {
			map.put("word", sb.toString());
			map.put("re", -1);
		}
		
		return map;
	}
	
	
	//返回request
	
	
	public static String returnServlet(HttpServletRequest request,HttpServletResponse response, Map map, String url) {
		if ("ajax".equalsIgnoreCase(Utils.getParam(request, "ajax"))) {
			//return writeAjaxResponse(Json.toJson(map));
			HttpSession session = Utils.getSessionByRequest(request);
			map.put("sessionId", session.getId());
			CmsUserInfo user = (CmsUserInfo) session.getAttribute("user");
			if (user != null) {
				//map.put("logintoken", user.getAddition());
			}
			
			String word = (String) map.get("word");
			if (StringUtils.isNotEmpty(word)) {
				if (word.indexOf("登录") > 0 && word.contains("或者") == false && word.contains("成功") == false )
					map.put("re", -100);
			}
			
			response.setContentType("text/html;charset=utf-8");
	        PrintWriter out;
			try {
				out = response.getWriter();
			
	       // out.write(Json.toJson(map));
				out.write(Utils.toJson(map));
				out.close();
	        
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return null;
		}
		else {
			Logger log = Logger.getLogger(Utils.class);
			log.info("xxxxxxxxxxxxxyyyyyyyyyyyyyzzzzzzzzz:" + request.getHeader("referer"));
			
			//request.setAttribute("gobackreferer", request.getHeader("referfer"));
			String lastreferer = (String) Utils.getSessionByRequest(request).getAttribute("thisreferer");
			String thisreferer = request.getHeader("referer");
			Utils.getSessionByRequest(request).setAttribute("thisreferer", thisreferer);
			Utils.getSessionByRequest(request).setAttribute("lastreferer", lastreferer);
			
			//如果是没有登录
			String word = (String) map.get("word");
			if (StringUtils.isNotEmpty(word) && word.contains("登录") && Utils.getSessionByRequest(request).getAttribute("user") == null) {
				String q = request.getQueryString();
				String sessionurl = request.getRequestURL() + "";
				if (StringUtils.isNotEmpty(q))
					sessionurl += "?" + q;
				request.getSession().setAttribute("sessionurl", sessionurl);
				
				url = "!/kailian/CmsUserInfo/prelogin.do";
			}
			
			
			request.setAttribute("map", map);
			return url;
		}
	}
	
	public static String returnServlet(HttpServletRequest request,HttpServletResponse response, Map map, String url, int re, String word) {
		if(map == null)
			map = new HashMap();
		map.put("re", re);
		map.put("word", word);
		return Utils.returnServlet(request,response, map, url);
	}
	
	
	public static Map<String, Object> transBean2Map(Object obj) {  
		  
        if(obj == null){  
            return null;  
        }          
        Map<String, Object> map = new HashMap<String, Object>();  
        try {  
            BeanInfo beanInfo = Introspector.getBeanInfo(obj.getClass());  
            PropertyDescriptor[] propertyDescriptors = beanInfo.getPropertyDescriptors();  
            for (PropertyDescriptor property : propertyDescriptors) {  
                String key = property.getName();  
  
                // 过滤class属性  
                if (!key.equals("class")) {  
                    // 得到property对应的getter方法  
                    Method getter = property.getReadMethod();  
                    Object value = getter.invoke(obj);  
  
                    map.put(key, value);  
                }  
  
            }  
        } catch (Exception e) {  
            System.out.println("transBean2Map Error " + e);  
        }  
  
        return map;  
  
    }  
	
	
	public static boolean isNumeric(String s) {
		if (StringUtils.isEmpty(s))
			return false;
		if (s.startsWith("-"))
			return StringUtils.isNumeric(s.substring(1));
		return StringUtils.isNumeric(s);
	}
	
	
	
	public static HttpSession getSessionByRequest(HttpServletRequest request) {
		SessionContext sc = SessionContext.getInstance();
		HttpSession s = sc.getSessionByRequest(request);
		return s;
	}
	
	
	public static void main(String[] args) {
//		String a = "{\"lianjie\":\"http://www.baidu.com\",\"biaoti\":\"棣〉︾瑰1\",\"shuoming\":\"璇存t\",\"tupianimg\":\"20140622104405_675.jpg\"}";
//		Map map = Utils.jsonToMap(a);
//		System.out.println(map.get("tupianimg"));
//		String s = "-1j0";
//		int i = Integer.parseInt(s);
//		if (StringUtils.isNumeric(s))
//		System.out.println(i);
		System.out.println(System.currentTimeMillis());

		String names = "┟寶唄,ぁ望夜的星星,,天之天威,,Э永恒の翼づ,我最美是吗,,蓝色气泡,半せ支烟,,や丘仳健﹏丶,冰蓝色忧郁,Ж法ぁЖぁ,,幻想月光,帅气Ж潇潇,,乐鑫,心之逍遥天下,黑狗队长,雾夜飞虫,小ぁ兔ぁ子,水晶の杉,垂直限止超呦稚de莪,韧ぜ儿,封号还来,俺就是牛X,狂野猎人,魔幻界の紫,,温馨の小霸王,遗忘ヤ文仔,苦涩VS甜蜜,我爱杨恭如,我╄不识字,,快乐IV为爱疯,情堔堔,孤独OoO宝宝,替身天使ご龙,辉之歌星,注锭o嗳伱o,,枇杷籽,星宛的老公,无极剑士,⑧遘莞媄,ォ随心が,—━阿古,无为大哥,武汉の豆皮,暴露001,康熙爷,不帅陪3块,,﹏葬灬,o0鄙视髪师,,轩辕人杰,ミ布什﹎o,小珑珑,,φ我爱冒险记,倩妞冒险记,梦之花蕾,孤岛盗魔,红莲の焰,,宜宾の征服者,次世代猪,天赐メ战魂,,圝◤戦神◥圝,追寻爱的声深,疯ゆ了い好,另类滋味,,V豳豳V,,地角靓仔,鸿淸焅,,ゃ顺倛咱繎,地狱べ男爵,憨憨鹏25,ユしひど,快乐飙风,一剑追星,,し衣酷の到底,赤脚小子,メ无訫╆恋,冒险は阿辉,,逍遥浪疯,失恋的女人,,流星V黑水晶,S飞天舞,火影ぐ卡卡西,流氓の流氓,蝴蝶女8,封号还来,,独①无②﹎君,柳州法老,无诺,kiss风云秒杀,夜已醉了,か蓝色的云ぇ,林子婆Y,,肥头太郎,收点的商人,卍龙龙卍,小臭蛋崽崽,随风舞柳,最爱小拽拽,,梦天使の霸王,巷尾T宝贝,紫轩再现,ゞ╱越轨恋爱,popご拉拉秀,可爱小仙仙,冰叶心语,紫色お的人,ー囍欢钕,ボ天ボ煞ボ,哈雷VS慧星,晓シ赵云,深蓝の镜婲氺,深爱世界,留驻天之角,美贞子,,心慌慌脱光光,一群小猪の峰,,闲做无聊,嗜血猎手,火毒0510,り艞喇ミ妈鍟,漂亮的女孩19,霸気⑩镞ξ霖,淘气て乖,紫を孤独浪仔,可爱小鹰,爱神ぁ逍遥,陈天ぷ桥猪,失情帅哥,拿烈火点烟い,,月亮ね星儿,上の忍,哈哈我是wuyi,花卷MM,卫斯理他老子,骑士ゑ精神,幸运い玲ル,冒险オ侠客,梁有秀,綄镁Ж恋魜,为伱ゞ﹏疯颠颠,,挖出我的心给,无限风云录,爱上爱靓,流氓の天天,剑恨情仇,,姗姗苏苏,再来过无悔,战士好郁闷,天使ぁ龙,单条王┡酷┪,战神锋锋,Ⅹ我爱老婆Ⅹ,封号还来,唔再爱你,奢奇望希,酷酷小飞贼,冒险为了忻,热血棒球,小心の牧师,爱在阳光,メ传说预唁メ,粑粑不是米做,,し徊倒濄祛ぐ,小心の冰雷,爱在阳光,δ尐儍猪Θ,很拽的我,为爱のFeel,法师CS,,宙斯之雷,）ㄣ冒险岛On,ヅ也许我错了,じ懒虫あ林,ほ拳皇99,爱上爱美,CSづ006,试挂的哈も,可爱衰鬼,天使蓉儿,鱼鱼帅的掉渣,ヤ锁鈊诗雅ヤ,好莱坞疲皂,,幻影德仔,狂拽秒杀,暗黑情人,oo老公坏蛋oo,Highべ杰,,硬骨头の标,,哈哈1,oo老婆乖乖oo,綩媄dē香烟,她不嫁给我,永远只爱米米,我爱你徐妍,小小魔导士v,追忆初恋,弹指红颜老,Jo0乖乖ぃ猪,武汉ぁ战神,风中亭,爱的承诺斌,娇娇我爱你14,微微小子001,传说中的性娃,单身de靓女,ポ从新开始,ぁ冰峰追忆ぁ,口香糖tang,名门メ緈諨,Ж110Ж战警,帅気メ被宠坏,,无目的乱射,HyperTermina,脸青青,沉睡中的男人,别让ωǒ放弃,,ωǒ0拽0ǒω,,ジ每呀帅哥,每呀5201314,极癫ɑ因,【魔0】,づ訫鎻已开,潇洒紫焰,,太伤自尊了,悃了Оo冰,魔神メ传说,逐风剑客,狂扫东南亚,石油鬼子,梦の丽佳,,唐三少,单影哦,等待你上线,导师无敌,ぁ小ぁ狐ぁ狸,逍遥一族Vs加,,流氓の快三秒,yun晕,灭魔天使,oO霸気メ神父,ICE红茶,冒险0宝贝,宇智波の帆,,君临天下之1,怕死我了,无限ゑ扬扬,孤独海岸线,枫舞星狂,,松爷嗷嗷牛,,啊里波特,①嵗尐气鬼Ю,天使を大勺,oo﹎坏気⑩哫,吻dě尐芊芊,大大流氓猪,,华之星,可靠可靠,大仙女,乀﹎溡尙颖儿,大菜B啊,cjmam,鬼面俊神,无聊づ的我,,I爱Uぁ龚莉,NO小猪120,小大孩,魔力badboy,混世Э魔王,印度お阿三,冰火小刀,,ㄖ风情ㄉ万种,独⒈无②义,て寳马会ぅ,鲤ャo,少爷,〆oo⒌嚣张,小靓女SKY,圆圆爱小旭,天生长的酷,北方的雪山,月0O,竹子开花的时,白沙再临,忧郁的男人11,,猪头啊ぁ,无敌い,我爱碧咸,小天使馆,我比黄花瘦,,キルァ,頖縌,坏尐子,风少メ拽,超酷小G,大地的见证,迷途人,龙威不改,,o0小小老鼠0o,爱牙牙,极度不乖,随风飞世,害羞的武士,终极侠客II,我是蚊蚊,,ご龙族の逍遥,,水晶ぁ之恋,无双爱情,恐怖PK份子,流离侠客,鎫瀛嫨衅,,为伊消得人憔,狂战炫炫,Α一切Α,遗忘ヤ之间,涛涛帅帅,随风飞世2,小小伤心者,,丫丫冰,简单1,乖猪の宝宝,帅的让人爱,恐惧王,红发小女,,豆芽LOVE小白,思觉失调A,郁闷你妈,天哒涯,魔法幻天涯,快乐中de彬,失恋的爱情,,花ぁ蝶,仙女2号,随风飞世3,①②③㊣⑤⑥,纯情大色狼,﹏傻潴囡,仙娜妈妈,,1最爱N抱着猪跳海,②闪电②,美少年之爱,Θ艾利克斯Θ,Kearnel,飘落の叶,,春秋战国,暴风中的魔鬼,我收点卷,无双の狂叼,败家㊣小猫,lubeibei,伪你学乖oо,,我兜里有钱,谁也不给面儿,少年海贼,fengw,老婆す是美女,冒险队肥羊,嘎嘎爱老婆,,,游小梦,吓死人哒,可爱温柔宝贝,,法师我,传说中の霸気,狂2妹,,为红,Qean,冲景,我不穿珥洞,风云天下aa,贵族づ刘德华,破天123,,扯线囡囡,圣导师残Ж影,ジ为爱执著ジ,永远的白痴,属於我啲爱,xXOXx,,变化小子,你好hihi,木马202,疾风の冰之舞,风神骑冰,碗颜无泪,艳过拔毛,,炎钻水星,流氓の式岖,帅地为国争光,幻魔ㄨ阿虎,あ娜あ,我是火眼,魔幻炫法,,霸ぁ气v十足,木马203,冰封泡泡龙,好人ET军,星空女孩,缅鐾猩孖,铃铛玲,,飘渺の纹龙,磋类型民工,老板B,人人哇,傻囝文,侠客漂漂,,纯情小马马,杰爱打机,乐豪YE,纵横四海,诗菲,伤情风,猪儿哒扑趴,a法师哈哈,幻魔ㄨ冰雷,爱猪爱到底,メ龙少爷ヤ,无双の微微,ミ粿粿メ尛尛,流氓の帅气,再不斩kiss,唯εlcid,芯蝶ォ翔天,魔力棒棒糖,木马205,NO不要逼我NO,滢魔2010,GIRL的魔法,,刀嘣战士3,孤独ぁ为命,木马206,メ绝版ゾ少爷,密林,幽幽琴儿,,爱人g,圣Ж占戈Ж士,,ぷ紟殅为伱む,美女VS琳林,渺茫之鹰,,漂亮的雪莲,新的一页456,我好爱你啊暗,烈血飞,街上耍流氓,苍龙七狱使,拳皇の⑦夜,d有苦难言dd,亚呀亚,鱼丸o杭杭,川卅,,魔法师,冰儿女孩,dhsf,白肚小鱼,爱幻想De小仙,鸨儿,唯εlcid,孙悟空2003,开心财神,,逝风忧悟,内裤打折了Θ,I一氧化碳I,暗夜狂徒,神射手蝙蝠侠,魔法师12345,你是啥呀,v罐装可乐v,wwwwweee22,电侠ぁ伟,美女晕倒吧,爱风爱你,,维他奶ㄟ你中,冰狐の秋月,冒险毁灭,jirl,╰街头ミ酷唲,qworld,黑水晶之魄,,魔界づ卡卡夕,神圣ぉ小法师,无敌号888,舞小美,朦胧的夜,真爱づ誓言,魔の女娲,,射,手,噬魂,酷感觉啦啦,爱浪漫一点,X漩涡鸣人W,,①嵗ㄣ嘻哈猪,创世纪Ж天子,充电飞飞,梦幻天使星,爱很好,杨风ashz,辛勤工作,,魔法ぃ战神,晓平,逍遥ぐ雪,栤鱩メ法师,为爱流浪2005,柔情小女生,,吥赱寻甞潞,魔王心中的光,32位接口,蹜成为123,天空天使之翼,,游戏中的小强,独居一人,o龙o,我想她们,,淡水猪,,夜郎べ落魄,刀飞叶舞,极品七里香,江中鱼,焰哥,魔法创师,RO的战士,,摇摆的流氓,神户メ驸马,小丸子xd,极品七里香,救世主べ,,﹍谱谱詷詷,ロ勿你,拒绝烦恼,乖乖v妹妹,ぁ芝麻开门ぁ,灭ㄝ╃ぅ战鈫,,没意思呀于是,s白浪射手s,大狭狭客,捣蛋ぁ乐天,天堂里的拖鞋,幽灵あ法师,,小星⒄,ぜ至尊宝ぜ,丑丑爱乖乖DD,,宝贝の韵,爆发力无限,十字军の老大,fdhsfgvdsh,小型卡卡西,叚装嘿乖,天ぷ寂ㄨ痕,ゐ了你,YANloveJIAO,神の雨刃,,红红红茶,红金龙之狂射,⒈辈zi恋伱,劳资帅总,清ぁあぃい,,ぃ可儿ぃ,太子ぃ炼狱,ifjflmfjkfjk,何必呢,蓝之幻,发の发,dfjhuohuwe,fdfdsccc,,出0oo走,ぁ痴心剑客ぁ,追ё族の沐,彭总,精益事找事,法神的泪,⒎纷拽ヘメ,睿睿の成成,阿尛麦兜,秀气宠づ儿,FBI117,美丽の薇薇,oo想你每一天,蒙格玛琪,家有小龙,小J妹,13135147,wǎ坏暣⑽哫,jf5201314,,肮脏的理念,,0大炮0,逍遥万人敌,彪,龙城の小飞,,邪魔天使是小,明哥真不错,注定当法师,龙辉凤妩,abyssの孤独,,蓝苹果蓝,雨木の飘,时尚の靓点,木马209,零柒玖壹,rayrubyhao,Ψ圣天魔尊Ψ,,诡异小哥,,爱在心中口难,aqlk,云海遇见你,亮亮の心,SHEぁE,飞龙在杀,,梦醒的我,s,西域魔鬼,王者霸主之父,猫あ儿,木马210,,剑克无敌,凡真008,真水そ无香,WG出售1,蓝色幻想ぁ云,总理11,,冰封地狱汪汪,嚣张の玄武,小美女靓,侯樢の人,hk008,jianfengxxx,,ぁ冷若冰霜あ,美女的涙,王子的吻,恋爱ぁ秋刀鱼,゛天使飞﹎,望龙翔宇,,頖縌ツ坏尐子,木马211,叶狂之神,随影飘,原子笔,灭天地,风づ洵月,,幻影の降龙,晨曦迷雾,音码,踏雪づ狂神,く宝贝乖乖,缜嘚ヤ懓伱,雨づ洵月,,蠢驴一号,爱你的洒哥MM,啤酒法师,,ぃ籣潴潴い,AnglesJin,超级金疮药,,XXXIAO,木马212,打锅盖的人,ぐ⒑分﹏神q,有点小雨,扯牛毛,,明天你还记得,无敌魔法师够,亚群①班GXD,哓哓的冒险岛,回眸小P,,阶级姐妹,天使de甜食,风ぁ之ぁ翼,狐狸种葡萄,メ猫猫の喵喵,妖精づ凯文,伪伱憔悴,,四海偷心,冒险岛网管へ,火影忍者女皇,雪碧,若斯,紫衫水龙,游龙天下第一,我只劫色,天空家族の风,无敌神手,迦罗什,飞机抗敌素,席娜,重づ楼,,小射手ご虫虫,N无极狂风N,没人爱的宝宝,徐梦碧へ老婆,我是丑鬼123,不能找我,打工仔,?,霸气ぁ法师,红月影,艾里耶塞尔,milc4,绝杀の泡菜,凤舞九天777,,o哟の龙,天下ぜ爱,郭含,星河微澜,拽ぃ拽,小法师姐姐,依然飘雪,鱼sol,,鱼水心情,,布什访华,,我爱SS,,only酷,俺村俺最老,海多,紫郁兰心,费尔巴哈哈,Joy闹猪,,俺是东北仔,有点小雨1,〆oo⒌狂神,小龙女在此,无与伦比之JA,,鸾之恋520,龙腾ぁ天佑,我你不会,你爱我好吗1,梁配,天使不在家lv,拉风┭孤Vs兴,蚊子喝冷水,游祸鸣人最强,和尚Q,）ㄣ寳庆尐爷,Kiss鹏,asd3368,俺也是东北妞,,飘萍浪迹,爱情的么,剑圣传说,魔王200,骡马市小森,龙琪歆,亮ω亮,恶魔ぁ公子,,逍遥ㄨ火,最爱吃鱼,Like睡觉のCa,◥◣小风◢◤,〕ㄣ最最最强,真心爱谁ぃ,,あ沩你垨銗ぃ,无机圣者,亲爱的鑫,泣の歌,①心⑩噫,,梦幻火焰,,怀念⒉颗糖,黑暗ぇ魔导师,法师是叼毛,死灵之泪,晕倒的MM,猪老大ぁ,为綄筬oо,,狂风天使,嚣张の）ㄣ,逍遥の超,零点の倔强,小小小小脉脉,Ж懐念过去Ж,,小飞一个,,波霸奶茶,叛逆天堂炎忍,每天想你的我,神ぴ独宠╅仔,,灰色ㄎ涟漪,魔幻メ强盗,,聪明的小叶子,条野好狼,土豆丸子,,冒险GG拽亮亮,我还是可孬啊,狂龙之箭,蓝色ぁ飞影,魔鬼的女神,,浪漫灰之影,FELL叮叮,嚣张De胖胖,卡密娅,dadcz,寒山あ魔焰,波ぁ酷,,绣气De新郎,灰色ф涟漪,只爱天使的猪,打我全是MISS,ΦωΦ猫猫,嚣张De耳洞,颠子の,冰山47,农民x砸锅,,龙暗,ぁ理の理ぁ,天破剑一,,飘渺东哥,超智力魔法师,海罗因,初恋小姑娘,飞飞オ侠客,蓝海玉弓圜,,月儿星星,从投再来,鈊如の訨氺,太坦巨魔,〆oo⒌海贼王,无敌法师006,樱ぺ倒拽,,灰衣忍者,影の杀,小小红孤叶,怒火の弑杀,腌ηī卤味,休止符XL7,〆戏氺﹏i,,哦哩哦,A,漾气℡酷儿,神话的回忆,林夜无,ぐ⒊分﹏仪q,时髦伞,,軎翳法神,熊帅气1,,暴刚哥,No⒈蜘蛛侠,孤单づ彬彬,平凡222,,了和才,ジ彩ヤ云ヅ,一剑ジ飞雪,心自飘零,笑顺一刀,嘿嘿す涛,美女晕倒了,,星过流云,爱的天使530,可爱的炫炫,,魔法の小Dee,上午噶饿,,老子就用歪挂,鲨恋,快乐就好耶,绝色魔魔,魔法ㄡ烽仔,季少,,怕死你们的确,嚣张├无敌┥,゛緈諨猪？,尤悠苦茶,橙色天使枫叶,澄1024,,酷曨╄暧酷,o星期8娶你o,幻影1花落何方,绝色魔魔,雨怨,,冲浪的少年,完美享受,孤独放弃,不在恋爱1,1云剑飘雪1,の风雷の魔法,,金陵の刺客,猫猫爱玉ル,周桀伦的侎,旧就是比你狠,湖心葵花草,家有乌龟,,情趣の法痴,爱我的人不少,疯B小妹1,白色炫影,ジ拽┽爱婧,我的最爱dan,,杀手会魔法,甩你口里去,忍者飞侠BB,麒灵法师,小心囝,大家来打猪,,荣燿帮ぶ虫,津门程少,我的魅力1,蓝灵儿,龙之赤子,我ぁ取暖器3,,浪漫の阿菠萝,黒夜星辰,冒险の我怕怕,ωǒ訫ゃ依旧,火云箭手,天上掉个爷爷,,天平的浪漫,,窃风い小妖精,永恒的丽,龙の拽尐爷,紫冰花飘,,迷幻DB,无敌メ狂魔,合乎大会づ杀,圣灵天使恶魔,小吖2号,黹很堼,,绝世小楠楠,,吴昊1,真咪娃子,霸者き战神,花龙月,,魔盗之锋,↘滺滺雪ルぁ,,我威威逼好爱,红野猪168,菜鸟涛⒉,,爱老婆柔柔,无名小悲,彬与你,娃娃魔法女52,爱情的眼神,,づ寳寳┽摔交,乐乐猪猪猪猪,八十万美圆,ξ傲世ξ,大哥哥1000,冒险ADM,,神暗影之歌,霅欎,お死吧で,美丽法师哦,Toshiyaの爱,你再冲,,帅到帅,ラ瞀ゼ熃ぁ膴,穿尿布的云彩,ぁ开心の妹妹,へ猪猪ぢ尐树,走开ぃ讲你,,漩涡魔炎,粗一色,w,520弹药,梅川内酷头,我爱你晨光,,花龙月,敛义津,一ぺ尐壊疍｝,,魔帅帅来也,,悟空他弟,best直觉,飞雪の伊人,神兵降凡尘,tzg28,看不见的明天,,死不张扬,uyoiuyi,爵士菠萝,法老阿三,恋爱の小静,流浪de法痴,,精武1234,耀天铭,小弟第,郁闷不死,┆⑨┆,绝对ゼЖ爱你,,无际de田野,博爱额,孟子梦,风派法术,天下情敌,神籼睡宝ら,,▄【┻┳═杰,飞天小神龙1,无限悲凉,无敌肌肉帅男,鸣海圆,哇波神,,あ孤独没人陪,纯白の永恒,酷メ继续,WO伪独嗳袮,深蓝之情,ぐ加冰の奶茶,游峡し是我,,夜露AND丁,布宝VS大头,酷炫弟,Ψ圣天魔尊Ψ,我酷我狂rui,,晓晓的包子,╬Arthur╬,绝对ぺ緈福,虎假虎威2代,土匪靠你妈,,龙卷风131,王牌OK天使法,德帕迪奥,疯狂の术士⒈,1雾痕1,zasweryttrr,,ょDavidょ,传说び才子㊣,百战百胜002,—━尐娅━—,急速疯飚,嗷嗷老狼,,魔法橙仔,潇洒VS宇,枯木也逢春,NND我要砍人,一定娶到你燕,,火毒冷酷,洅续湔橼,挖出163,无敌吖成,董罡1,,Z魔月Z,奇幻こ侠客,骑士の七里香,怀念の冰棒,暗行御使飞飞,希尔爱德华,,⑤②①我爱你,天空下着米田,栁酬崽,奇幻ぁ胖子,海枯の石烂,看来ぁ可见,雪橇,,づ浪漫づ告白,龙月华文,没无敌玩小号,夕阳深处等你,我爱老公啊2,不知火1988,,登月爱好者,逍遥①族沙巴,烈火捷,雪下火花k,烟雨づ江北,◥◣宁军◢◤,,小魔女ktf,圝◤拽爷◥圝,流氓メㄒiлg,冒险者姚楠,素鸡哈哈,绝对ψ烂帐,,雄霸武林啊,,白兰辉,宁神怒斩,仙月ぁ魔法,,极速ぁ战魔,伪伈伤伱,,冒险ぁ魔皇,大布列颠,冰火火,脸脸,╃为爱变乖╃,﹎遗忘ァ爱,ミ绣气伤ル,,茄菲猫仔,蜘蛛刺客,魔兽使者Ⅱ,封冻冰河2000,训练有素008,邹礼明,,せ顺行天下せ,,死神的歌声,开心中仔,几百你好,丑人照样活,,小峰の哥哥,懵懂巫女,在线つGN,我爱你臭小子,疼你的妹妹,,戳BB的人,龙飞凤神,侬阿爸,Angel魔尊,o0京哥哥0o,贾宗亚,,垃圾学童,想个破名真费,小魔也蜂狂,很嚣张的耳朵,爱的あ就是Θ,惟独恋宁,,小鹏鹏来也,我心泡泡,x小坏蛋,覆雨长空1,,邪ルメ小猪,阿弩B,绝对嚣张の意,,韩文163,使用外G,⒐⒋嗳嵵绱,我こ发ぷ啦,毁灭あ魔圣,魔导の魍魉QQ,,我是倪晓锐,奔雷魔法师,玉无点宝车,九江小子,Feel啊Q,,莫恩潮,电魔杀,ぁ我爱罗こ七,岚,晓児,豆腐脑忽然内,,酷酷の小鬼,）ㄣ莣誋濄佉,大屁猪脸肥熊,K天涯追爱K,叼叼小涛,天梦BOY,,清新axl,男人刁大,,R死灰复燃,和了138,迷人ペ龙龙,,山羊哥,坏坏メ尐猪,俺掵好ぎkǔ,赵云zhuai,电灯泡哦,花生耔,钱艟,,林の靓靓,和尚ぁ好色,飘摇的枼子,宝ゼ宝爱昵,ぃ可爱の兰瓜,靓靓酷妹,,黑色魔神0,叱诧小刚,多多の狅人,飘逸心蓝,传说オ神,鎏忍,,追忆光辉,魔法皇无敌,爱玩女孩的天,天使打四恶魔,金牌老公,葛斯佳,,轩辕ぜ太子,,柴智,妖精医院院长,冒险岛的3210,光头咯,,全服务器最叼,阿心魔,落落f,ザ靓酷仔ち,ぁ盼が,,A萧飞A,网际魔法师,沼泽地的青蛙,弹蛋儿,万人つん迷,骤之风雨,,奔雷手,冥币的诱惑,小醉虾OK,专一の男人,天使阿蛮,冥鸿の翼,,き大头吓ち,齐天ㄨ大圣,冰舞の魔术师,古诺儿23,治疗贤者,,1小小飞侠110,嘬爱喺↗你,斩虎屠龙之炙,メ零度寂寞ヤ,芒果｛ゃ,飞飞ぜ侠女,,黑夜行踪,冒险法师,天之神雨,将军也风光,,飙ㄨ酷B男,,刘婷君,999强暴网,丢失的冥币,龙龙我的宝宝,血の杀剑,清风う宝宝,,雷小成,烈焰中永生,坤,自然空气,柠檬荔枝,,傻傻想爱你,放飞自己11,,宝┾贝,S飞峡小黑S,,勤洗澡の鱼,郁闷の嫖客,飘雪风神傲,,嘿ぉ我是蟑螂,,兜兜の淘气猫,梦竹儿,幻影蓝夜,天堂之小法师,白雪圣剑,问天海,,想和你去看雪,猛难保,光明の光明,｛少来烦ωǒ,华研猛蛋,漩涡康康,e4e5t5,,叛逆ゑ帅,冷血磨叨,好玩不哈哈,你爸爸我啊哈,す金黄宝贝す,一箭扎死你,,宝贝7児,雪Z飞舞,好白菜3Q,爱情绝版,小猪猪喜欢冒,晶樱之恋,,菲比寻常Q,龙の龙110,梧炘,哟宝贝乖乖睡,梦想心焰oO,残云年,,新人类8号,霸主天下1,我是ぺ大帅哥,ARI逼3,我法师我最拽,霸王H别姬,,拽ミ瑶瑶,我是你盖大爷,谭君子,廆寐へ战仕,喷水池,祭司贤者,,飞侠o鹏,琳爱宏,真的つ爱你,战之风云,小love婷,海黄汪汪,,山枫ぁ恋人,,娃娃小布点,疯狂い法魔,,漫西sky,浪客箭心121,い绝对乱港い,法黑龙魔导,一箭扎死你,④岁细璐仔,,の美①女の,没ω有ω笑,月球の妹妹,,爱偶的来,大雅123,,恶魔小v天使,冷雪之心,蛋蛋小弟弟,美女ペ我Ж,hjfgudgu,爱你一年子,,⒎氛帅气ミ,吾爱妞妞,贵族の皇子,渥蕞谣摆,魔刀蔀雾侃柴,梦之恋ぁ林,,开心小鸵鸟,梦天小法师,Rong融,ジ贵族ぐ贺少,美丽的神仙姐,爱ご无悔,,风の烈ぁぃ,水冰心plum,冰殿太子,┏甜づ子┛,我心已灭か,9瓮9,,老卵八千,V为你死V,急于冒险,红玻璃戒指,咾癙嫒汏洣,大头相信爱,,猎灵Ж宙斯,龟趺身功,无ya,い绝对乱港い,蓝玻璃鞋,风Vs云,,黑暗里的妖怪,星光101,魔道无及,原野探险,泪守枫叶红,帝お释天";
		String mobiles = "13900886499,13900886498,13900886497,13900886496,13900886495,13900886494,13900886493,13900886492,13900886491,13900886490,13900886489,13900886488,13900886487,13900886486,13900886485,13900886484,13900886483,13900886482,13900886481,13900886480,13900886479,13900886478,13900886477,13900886476,13900886475,13900886474,13900886473,13900886472,13900886471,13900886470,13900886469,13900886468,13900886467,13900886466,13900886465,13900886464,13900886463,13900886462,13900886461,13900886460,13900886459,13900886458,13900886457,13900886456,13900886455,13900886454,13900886453,13900886452,13900886451,13900886450,13900886449,13900886448,13900886447,13900886446,13900886445,13900886444,13900886443,13900886442,13900886441,13900886440,13900886439,13900886438,13900886437,13900886436,13900886435,13900886434,13900886433,13900886432,13900886431,13900886430,13900886429,13900886428,13900886427,13900886426,13900886425,13900886424,13900886423,13900886422,13900886421,13900886420,13900886419,13900886418,13900886417,13900886416,13900886415,13900886414,13900886413,13900886412,13900886411,13900886410,13900886409,13900886408,13900886407,13900886406,13900886405,13900886404,13900886403,13900886402,13900886401,13900886400,13900886399,13900886398,13900886397,13900886396,13900886395,13900886394,13900886393,13900886392,13900886391,13900886390,13900886389,13900886388,13900886387,13900886386,13900886385,13900886384,13900886383,13900886382,13900886381,13900886380,13900886379,13900886378,13900886377,13900886376,13900886375,13900886374,13900886373,13900886372,13900886371,13900886370,13900886369,13900886368,13900886367,13900886366,13900886365,13900886364,13900886363,13900886362,13900886361,13900886360,13900886359,13900886358,13900886357,13900886356,13900886355,13900886354,13900886353,13900886352,13900886351,13900886350,13900886349,13900886348,13900886347,13900886346,13900886345,13900886344,13900886343,13900886342,13900886341,13900886340,13900886339,13900886338,13900886337,13900886336,13900886335,13900886334,13900886333,13900886332,13900886331,13900886330,13900886329,13900886328,13900886327,13900886326,13900886325,13900886324,13900886323,13900886322,13900886321,13900886320,13900886319,13900886318,13900886317,13900886316,13900886315,13900886314,13900886313,13900886312,13900886311,13900886310,13900886309,13900886308,13900886307,13900886306,13900886305,13900886304,13900886303,13900886302,13900886301,13900886300,13900886299,13900886298,13900886297,13900886296,13900886295,13900886294,13900886293,13900886292,13900886291,13900886290,13900886289,13900886288,13900886287,13900886286,13900886285,13900886284,13900886283,13900886282,13900886281,13900886280,13900886279,13900886278,13900886277,13900886276,13900886275,13900886274,13900886273,13900886272,13900886271,13900886270,13900886269,13900886268,13900886267,13900886266,13900886265,13900886264,13900886263,13900886262,13900886261,13900886260,13900886259,13900886258,13900886257,13900886256,13900886255,13900886254,13900886253,13900886252,13900886251,13900886250,13900886249,13900886248,13900886247,13900886246,13900886245,13900886244,13900886243,13900886242,13900886241,13900886240,13900886239,13900886238,13900886237,13900886236,13900886235,13900886234,13900886233,13900886232,13900886231,13900886230,13900886229,13900886228,13900886227,13900886226,13900886225,13900886224,13900886223,13900886222,13900886221,13900886220,13900886219,13900886218,13900886217,13900886216,13900886215,13900886214,13900886213,13900886212,13900886211,13900886210,13900886209,13900886208,13900886207,13900886206,13900886205,13900886204,13900886203,13900886202,13900886201,13900886200,13900886199,13900886198,13900886197,13900886196,13900886195,13900886194,13900886193,13900886192,13900886191,13900886190,13900886189,13900886188,13900886187,13900886186,13900886185,13900886184,13900886183,13900886182,13900886181,13900886180,13900886179,13900886178,13900886177,13900886176,13900886175,13900886174,13900886173,13900886172,13900886171,13900886170,13900886169,13900886168,13900886167,13900886166,13900886165,13900886164,13900886163,13900886162,13900886161,13900886160,13900886159,13900886158,13900886157,13900886156,13900886155,13900886154,13900886153,13900886152,13900886151,13900886150,13900886149,13900886148,13900886147,13900886146,13900886145,13900886144,13900886143,13900886142,13900886141,13900886140,13900886139,13900886138,13900886137,13900886136,13900886135,13900886134,13900886133,13900886132,13900886131,13900886130,13900886129,13900886128,13900886127,13900886126,13900886125,13900886124,13900886123,13900886122,13900886121,13900886120,13900886119,13900886118,13900886117,13900886116,13900886115,13900886114,13900886113,13900886112,13900886111,13900886110,13900886109,13900886108,13900886107,13900886106,13900886105,13900886104,13900886103,13900886102,13900886101,13900886100,13900886099,13900886098,13900886097,13900886096,13900886095,13900886094,13900886093,13900886092,13900886091,13900886090,13900886089,13900886088,13900886087,13900886086,13900886085,13900886084,13900886083,13900886082,13900886081,13900886080,13900886079,13900886078,13900886077,13900886076,13900886075,13900886074,13900886073,13900886072,13900886071,13900886070,13900886069,13900886068,13900886067,13900886066,13900886065,13900886064,13900886063,13900886062,13900886061,13900886060,13900886059,13900886058,13900886057,13900886056,13900886055,13900886054,13900886053,13900886052,13900886051,13900886050,13900886049,13900886048,13900886047,13900886046,13900886045,13900886044,13900886043,13900886042,13900886041,13900886040,13900886039,13900886038,13900886037,13900886036,13900886035,13900886034,13900886033,13900886032,13900886031,13900886030,13900886029,13900886028,13900886027,13900886026,13900886025,13900886024,13900886023,13900886022,13900886021,13900886020,13900886019,13900886018,13900886017,13900886016,13900886015,13900886014,13900886013,13900886012,13900886011,13900886010,13900886009,13900886008,13900886007,13900886006,13900886005,13900886004,13900886003,13900886002,13900886001,13900886000,13900883000,13900883001,13900883002,13900883003,13900883004,13900883005,13900883006,13900883007,13900883008,13900883009,13900883010,13900883011,13900883012,13900883013,13900883014,13900883015,13900883016,13900883017,13900883018,13900883019,13900883020,13900883021,13900883022,13900883023,13900883024,13900883025,13900883026,13900883027,13900883028,13900883029,13900883030,13900883031,13900883032,13900883033,13900883034,13900883035,13900883036,13900883037,13900883038,13900883039,13900883040,13900883041,13900883042,13900883043,13900883044,13900883045,13900883046,13900883047,13900883048,13900883049,13900883050,13900883051,13900883052,13900883053,13900883054,13900883055,13900883056,13900883057,13900883058,13900883059,13900883060,13900883061,13900883062,13900883063,13900883064,13900883065,13900883066,13900883067,13900883068,13900883069,13900883070,13900883071,13900883072,13900883073,13900883074,13900883075,13900883076,13900883077,13900883078,13900883079,13900883080,13900883081,13900883082,13900883083,13900883084,13900883085,13900883086,13900883087,13900883088,13900883089,13900883090,13900883091,13900883092,13900883093,13900883094,13900883095,13900883096,13900883097,13900883098,13900883099,13900883100,13900883101,13900883102,13900883103,13900883104,13900883105,13900883106,13900883107,13900883108,13900883109,13900883110,13900883111,13900883112,13900883113,13900883114,13900883115,13900883116,13900883117,13900883118,13900883119,13900883120,13900883121,13900883122,13900883123,13900883124,13900883125,13900883126,13900883127,13900883128,13900883129,13900883130,13900883131,13900883132,13900883133,13900883134,13900883135,13900883136,13900883137,13900883138,13900883139,13900883140,13900883141,13900883142,13900883143,13900883144,13900883145,13900883146,13900883147,13900883148,13900883149,13900883150,13900883151,13900883152,13900883153,13900883154,13900883155,13900883156,13900883157,13900883158,13900883159,13900883160,13900883161,13900883162,13900883163,13900883164,13900883165,13900883166,13900883167,13900883168,13900883169,13900883170,13900883171,13900883172,13900883173,13900883174,13900883175,13900883176,13900883177,13900883178,13900883179,13900883180,13900883181,13900883182,13900883183,13900883184,13900883185,13900883186,13900883187,13900883188,13900883189,13900883190,13900883191,13900883192,13900883193,13900883194,13900883195,13900883196,13900883197,13900883198,13900883199,13900883200,13900883201,13900883202,13900883203,13900883204,13900883205,13900883206,13900883207,13900883208,13900883209,13900883210,13900883211,13900883212,13900883213,13900883214,13900883215,13900883216,13900883217,13900883218,13900883219,13900883220,13900883221,13900883222,13900883223,13900883224,13900883225,13900883226,13900883227,13900883228,13900883229,13900883230,13900883231,13900883232,13900883233,13900883234,13900883235,13900883236,13900883237,13900883238,13900883239,13900883240,13900883241,13900883242,13900883243,13900883244,13900883245,13900883246,13900883247,13900883248,13900883249,13900883250,13900883251,13900883252,13900883253,13900883254,13900883255,13900883256,13900883257,13900883258,13900883259,13900883260,13900883261,13900883262,13900883263,13900883264,13900883265,13900883266,13900883267,13900883268,13900883269,13900883270,13900883271,13900883272,13900883273,13900883274,13900883275,13900883276,13900883277,13900883278,13900883279,13900883280,13900883281,13900883282,13900883283,13900883284,13900883285,13900883286,13900883287,13900883288,13900883289,13900883290,13900883291,13900883292,13900883293,13900883294,13900883295,13900883296,13900883297,13900883298,13900883299,13900883300,13900883301,13900883302,13900883303,13900883304,13900883305,13900883306,13900883307,13900883308,13900883309,13900883310,13900883311,13900883312,13900883313,13900883314,13900883315,13900883316,13900883317,13900883318,13900883319,13900883320,13900883321,13900883322,13900883323,13900883324,13900883325,13900883326,13900883327,13900883328,13900883329,13900883330,13900883331,13900883332,13900883333,13900883334,13900883335,13900883336,13900883337,13900883338,13900883339,13900883340,13900883341,13900883342,13900883343,13900883344,13900883345,13900883346,13900883347,13900883348,13900883349,13900883350,13900883351,13900883352,13900883353,13900883354,13900883355,13900883356,13900883357,13900883358,13900883359,13900883360,13900883361,13900883362,13900883363,13900883364,13900883365,13900883366,13900883367,13900883368,13900883369,13900883370,13900883371,13900883372,13900883373,13900883374,13900883375,13900883376,13900883377,13900883378,13900883379,13900883380,13900883381,13900883382,13900883383,13900883384,13900883385,13900883386,13900883387,13900883388,13900883389,13900883390,13900883391,13900883392,13900883393,13900883394,13900883395,13900883396,13900883397,13900883398,13900883399,13900883400,13900883401,13900883402,13900883403,13900883404,13900883405,13900883406,13900883407,13900883408,13900883409,13900883410,13900883411,13900883412,13900883413,13900883414,13900883415,13900883416,13900883417,13900883418,13900883419,13900883420,13900883421,13900883422,13900883423,13900883424,13900883425,13900883426,13900883427,13900883428,13900883429,13900883430,13900883431,13900883432,13900883433,13900883434,13900883435,13900883436,13900883437,13900883438,13900883439,13900883440,13900883441,13900883442,13900883443,13900883444,13900883445,13900883446,13900883447,13900883448,13900883449,13900883450,13900883451,13900883452,13900883453,13900883454,13900883455,13900883456,13900883457,13900883458,13900883459,13900883460,13900883461,13900883462,13900883463,13900883464,13900883465,13900883466,13900883467,13900883468,13900883469,13900883470,13900883471,13900883472,13900883473,13900883474,13900883475,13900883476,13900883477,13900883478,13900883479,13900883480,13900883481,13900883482,13900883483,13900883484,13900883485,13900883486,13900883487,13900883488,13900883489,13900883490,13900883491,13900883492,13900883493,13900883494,13900883495,13900883496,13900883497,13900883498,13900883499,13900887999,13900887998,13900887997,13900887996,13900887995,13900887994,13900887993,13900887992,13900887991,13900887990,13900887989,13900887988,13900887987,13900887986,13900887985,13900887984,13900887983,13900887982,13900887981,13900887980,13900887979,13900887978,13900887977,13900887976,13900887975,13900887974,13900887973,13900887972,13900887971,13900887970,13900887969,13900887968,13900887967,13900887966,13900887965,13900887964,13900887963,13900887962,13900887961,13900887960,13900887959,13900887958,13900887957,13900887956,13900887955,13900887954,13900887953,13900887952,13900887951,13900887950,13900887949,13900887948,13900887947,13900887946,13900887945,13900887944,13900887943,13900887942,13900887941,13900887940,13900887939,13900887938,13900887937,13900887936,13900887935,13900887934,13900887933,13900887932,13900887931,13900887930,13900887929,13900887928,13900887927,13900887926,13900887925,13900887924,13900887923,13900887922,13900887921,13900887920,13900887919,13900887918,13900887917,13900887916,13900887915,13900887914,13900887913,13900887912,13900887911,13900887910,13900887909,13900887908,13900887907,13900887906,13900887905,13900887904,13900887903,13900887902,13900887901,13900887900,13900887899,13900887898,13900887897,13900887896,13900887895,13900887894,13900887893,13900887892,13900887891,13900887890,13900887889,13900887888,13900887887,13900887886,13900887885,13900887884,13900887883,13900887882,13900887881,13900887880,13900887879,13900887878,13900887877,13900887876,13900887875,13900887874,13900887873,13900887872,13900887871,13900887870,13900887869,13900887868,13900887867,13900887866,13900887865,13900887864,13900887863,13900887862,13900887861,13900887860,13900887859,13900887858,13900887857,13900887856,13900887855,13900887854,13900887853,13900887852,13900887851,13900887850,13900887849,13900887848,13900887847,13900887846,13900887845,13900887844,13900887843,13900887842,13900887841,13900887840,13900887839,13900887838,13900887837,13900887836,13900887835,13900887834,13900887833,13900887832,13900887831,13900887830,13900887829,13900887828,13900887827,13900887826,13900887825,13900887824,13900887823,13900887822,13900887821,13900887820,13900887819,13900887818,13900887817,13900887816,13900887815,13900887814,13900887813,13900887812,13900887811,13900887810,13900887809,13900887808,13900887807,13900887806,13900887805,13900887804,13900887803,13900887802,13900887801,13900887800,13900887799,13900887798,13900887797,13900887796,13900887795,13900887794,13900887793,13900887792,13900887791,13900887790,13900887789,13900887788,13900887787,13900887786,13900887785,13900887784,13900887783,13900887782,13900887781,13900887780,13900887779,13900887778,13900887777,13900887776,13900887775,13900887774,13900887773,13900887772,13900887771,13900887770,13900887769,13900887768,13900887767,13900887766,13900887765,13900887764,13900887763,13900887762,13900887761,13900887760,13900887759,13900887758,13900887757,13900887756,13900887755,13900887754,13900887753,13900887752,13900887751,13900887750,13900887749,13900887748,13900887747,13900887746,13900887745,13900887744,13900887743,13900887742,13900887741,13900887740,13900887739,13900887738,13900887737,13900887736,13900887735,13900887734,13900887733,13900887732,13900887731,13900887730,13900887729,13900887728,13900887727,13900887726,13900887725,13900887724,13900887723,13900887722,13900887721,13900887720,13900887719,13900887718,13900887717,13900887716,13900887715,13900887714,13900887713,13900887712,13900887711,13900887710,13900887709,13900887708,13900887707,13900887706,13900887705,13900887704,13900887703,13900887702,13900887701,13900887700,13900887699,13900887698,13900887697,13900887696,13900887695,13900887694,13900887693,13900887692,13900887691,13900887690,13900887689,13900887688,13900887687,13900887686,13900887685,13900887684,13900887683,13900887682,13900887681,13900887680,13900887679,13900887678,13900887677,13900887676,13900887675,13900887674,13900887673,13900887672,13900887671,13900887670,13900887669,13900887668,13900887667,13900887666,13900887665,13900887664,13900887663,13900887662,13900887661,13900887660,13900887659,13900887658,13900887657,13900887656,13900887655,13900887654,13900887653,13900887652,13900887651,13900887650,13900887649,13900887648,13900887647,13900887646,13900887645,13900887644,13900887643,13900887642,13900887641,13900887640,13900887639,13900887638,13900887637,13900887636,13900887635,13900887634,13900887633,13900887632,13900887631,13900887630,13900887629,13900887628,13900887627,13900887626,13900887625,13900887624,13900887623,13900887622,13900887621,13900887620,13900887619,13900887618,13900887617,13900887616,13900887615,13900887614,13900887613,13900887612,13900887611,13900887610,13900887609,13900887608,13900887607,13900887606,13900887605,13900887604,13900887603,13900887602,13900887601,13900887600,13900887599,13900887598,13900887597,13900887596,13900887595,13900887594,13900887593,13900887592,13900887591,13900887590,13900887589,13900887588,13900887587,13900887586,13900887585,13900887584,13900887583,13900887582,13900887581,13900887580,13900887579,13900887578,13900887577,13900887576,13900887575,13900887574,13900887573,13900887572,13900887571,13900887570,13900887569,13900887568,13900887567,13900887566,13900887565,13900887564,13900887563,13900887562,13900887561,13900887560,13900887559,13900887558,13900887557,13900887556,13900887555,13900887554,13900887553,13900887552,13900887551,13900887550,13900887549,13900887548,13900887547,13900887546,13900887545,13900887544,13900887543,13900887542,13900887541,13900887540,13900887539,13900887538,13900887537,13900887536,13900887535,13900887534,13900887533,13900887532,13900887531,13900887530,13900887529,13900887528,13900887527,13900887526,13900887525,13900887524,13900887523,13900887522,13900887521,13900887520,13900887519,13900887518,13900887517,13900887516,13900887515,13900887514,13900887513,13900887512,13900887511,13900887510,13900887509,13900887508,13900887507,13900887506,13900887505,13900887504,13900887503,13900887502,13900887501,13900887500,13900882999,13900882998,13900882997,13900882996,13900882995,13900882994,13900882993,13900882992,13900882991,13900882990,13900882989,13900882988,13900882987,13900882986,13900882985,13900882984,13900882983,13900882982,13900882981,13900882980,13900882979,13900882978,13900882977,13900882976,13900882975,13900882974,13900882973,13900882972,13900882971,13900882970,13900882969,13900882968,13900882967,13900882966,13900882965,13900882964,13900882963,13900882962,13900882961,13900882960,13900882959,13900882958,13900882957,13900882956,13900882955,13900882954,13900882953,13900882952,13900882951,13900882950,13900882949,13900882948,13900882947,13900882946,13900882945,13900882944,13900882943,13900882942,13900882941,13900882940,13900882939,13900882938,13900882937,13900882936,13900882935,13900882934,13900882933,13900882932,13900882931,13900882930,13900882929,13900882928,13900882927,13900882926,13900882925,13900882924,13900882923,13900882922,13900882921,13900882920,13900882919,13900882918,13900882917,13900882916,13900882915,13900882914,13900882913,13900882912,13900882911,13900882910,13900882909,13900882908,13900882907,13900882906,13900882905,13900882904,13900882903,13900882902,13900882901,13900882900,13900882899,13900882898,13900882897,13900882896,13900882895,13900882894,13900882893,13900882892,13900882891,13900882890,13900882889,13900882888,13900882887,13900882886,13900882885,13900882884,13900882883,13900882882,13900882881,13900882880,13900882879,13900882878,13900882877,13900882876,13900882875,13900882874,13900882873,13900882872,13900882871,13900882870,13900882869,13900882868,13900882867,13900882866,13900882865,13900882864,13900882863,13900882862,13900882861,13900882860,13900882859,13900882858,13900882857,13900882856,13900882855,13900882854,13900882853,13900882852,13900882851,13900882850,13900882849,13900882848,13900882847,13900882846,13900882845,13900882844,13900882843,13900882842,13900882841,13900882840,13900882839,13900882838,13900882837,13900882836,13900882835,13900882834,13900882833,13900882832,13900882831,13900882830,13900882829,13900882828,13900882827,13900882826,13900882825,13900882824,13900882823,13900882822,13900882821,13900882820,13900882819,13900882818,13900882817,13900882816,13900882815,13900882814,13900882813,13900882812,13900882811,13900882810,13900882809,13900882808,13900882807,13900882806,13900882805,13900882804,13900882803,13900882802,13900882801,13900882800,13900882799,13900882798,13900882797,13900882796,13900882795,13900882794,13900882793,13900882792,13900882791,13900882790,13900882789,13900882788,13900882787,13900882786,13900882785,13900882784,13900882783,13900882782,13900882781,13900882780,13900882779,13900882778,13900882777,13900882776,13900882775,13900882774,13900882773,13900882772,13900882771,13900882770,13900882769,13900882768,13900882767,13900882766,13900882765,13900882764,13900882763,13900882762,13900882761,13900882760,13900882759,13900882758,13900882757,13900882756,13900882755,13900882754,13900882753,13900882752,13900882751,13900882750,13900882749,13900882748,13900882747,13900882746,13900882745,13900882744,13900882743,13900882742,13900882741,13900882740,13900882739,13900882738,13900882737,13900882736,13900882735,13900882734,13900882733,13900882732,13900882731,13900882730,13900882729,13900882728,13900882727,13900882726,13900882725,13900882724,13900882723,13900882722,13900882721,13900882720,13900882719,13900882718,13900882717,13900882716,13900882715,13900882714,13900882713,13900882712,13900882711,13900882710,13900882709,13900882708,13900882707,13900882706,13900882705,13900882704,13900882703,13900882702,13900882701,13900882700,13900882699,13900882698,13900882697,13900882696,13900882695,13900882694,13900882693,13900882692,13900882691,13900882690,13900882689,13900882688,13900882687,13900882686,13900882685,13900882684,13900882683,13900882682,13900882681,13900882680,13900882679,13900882678,13900882677,13900882676,13900882675,13900882674,13900882673,13900882672,13900882671,13900882670,13900882669,13900882668,13900882667,13900882666,13900882665,13900882664,13900882663,13900882662,13900882661,13900882660,13900882659,13900882658,13900882657,13900882656,13900882655,13900882654,13900882653,13900882652,13900882651,13900882650,13900882649,13900882648,13900882647,13900882646,13900882645,13900882644,13900882643,13900882642,13900882641,13900882640,13900882639,13900882638,13900882637,13900882636,13900882635,13900882634,13900882633,13900882632,13900882631,13900882630,13900882629,13900882628,13900882627,13900882626,13900882625,13900882624,13900882623,13900882622,13900882621,13900882620,13900882619,13900882618,13900882617,13900882616,13900882615,13900882614,13900882613,13900882612,13900882611,13900882610,13900882609,13900882608,13900882607,13900882606,13900882605,13900882604,13900882603,13900882602,13900882601,13900882600,13900882599,13900882598,13900882597,13900882596,13900882595,13900882594,13900882593,13900882592,13900882591,13900882590,13900882589,13900882588,13900882587,13900882586,13900882585,13900882584,13900882583,13900882582,13900882581,13900882580,13900882579,13900882578,13900882577,13900882576,13900882575,13900882574,13900882573,13900882572,13900882571,13900882570,13900882569,13900882568,13900882567,13900882566,13900882565,13900882564,13900882563,13900882562,13900882561,13900882560,13900882559,13900882558,13900882557,13900882556,13900882555,13900882554,13900882553,13900882552,13900882551,13900882550,13900882549,13900882548,13900882547,13900882546,13900882545,13900882544,13900882543,13900882542,13900882541,13900882540,13900882539,13900882538,13900882537,13900882536,13900882535,13900882534,13900882533,13900882532,13900882531,13900882530,13900882529,13900882528,13900882527,13900882526,13900882525,13900882524,13900882523,13900882522,13900882521,13900882520,13900882519,13900882518,13900882517,13900882516,13900882515,13900882514,13900882513,13900882512,13900882511,13900882510,13900882509,13900882508,13900882507,13900882506,13900882505,13900882504,13900882503,13900882502,13900882501,13900882500,13900883999,13900883998,13900883997,13900883996,13900883995,13900883994,13900883993,13900883992,13900883991,13900883990,13900883989,13900883988,13900883987,13900883986,13900883985,13900883984,13900883983,13900883982,13900883981,13900883980,13900883979,13900883978,13900883977,13900883976,13900883975,13900883974,13900883973,13900883972,13900883971,13900883970,13900883969,13900883968,13900883967,13900883966,13900883965,13900883964,13900883963,13900883962,13900883961,13900883960,13900883959,13900883958,13900883957,13900883956,13900883955,13900883954,13900883953,13900883952,13900883951,13900883950,13900883949,13900883948,13900883947,13900883946,13900883945,13900883944,13900883943,13900883942,13900883941,13900883940,13900883939,13900883938,13900883937,13900883936,13900883935,13900883934,13900883933,13900883932,13900883931,13900883930,13900883929,13900883928,13900883927,13900883926,13900883925,13900883924,13900883923,13900883922,13900883921,13900883920,13900883919,13900883918,13900883917,13900883916,13900883915,13900883914,13900883913,13900883912,13900883911,13900883910,13900883909,13900883908,13900883907,13900883906,13900883905,13900883904,13900883903,13900883902,13900883901,13900883900,13900883899,13900883898,13900883897,13900883896,13900883895,13900883894,13900883893,13900883892,13900883891,13900883890,13900883889,13900883888,13900883887,13900883886,13900883885,13900883884,13900883883,13900883882,13900883881,13900883880,13900883879,13900883878,13900883877,13900883876,13900883875,13900883874,13900883873,13900883872,13900883871,13900883870,13900883869,13900883868,13900883867,13900883866,13900883865,13900883864,13900883863,13900883862,13900883861,13900883860,13900883859,13900883858,13900883857,13900883856,13900883855,13900883854,13900883853,13900883852,13900883851,13900883850,13900883849,13900883848,13900883847,13900883846,13900883845,13900883844,13900883843,13900883842,13900883841,13900883840,13900883839,13900883838,13900883837,13900883836,13900883835,13900883834,13900883833,13900883832,13900883831,13900883830,13900883829,13900883828,13900883827,13900883826,13900883825,13900883824,13900883823,13900883822,13900883821,13900883820,13900883819,13900883818,13900883817,13900883816,13900883815,13900883814,13900883813,13900883812,13900883811,13900883810,13900883809,13900883808,13900883807,13900883806,13900883805,13900883804,13900883803,13900883802,13900883801,13900883800,13900883799,13900883798,13900883797,13900883796,13900883795,13900883794,13900883793,13900883792,13900883791,13900883790,13900883789,13900883788,13900883787,13900883786,13900883785,13900883784,13900883783,13900883782,13900883781,13900883780,13900883779,13900883778,13900883777,13900883776,13900883775,13900883774,13900883773,13900883772,13900883771,13900883770,13900883769,13900883768,13900883767,13900883766,13900883765,13900883764,13900883763,13900883762,13900883761,13900883760,13900883759,13900883758,13900883757,13900883756,13900883755,13900883754,13900883753,13900883752,13900883751,13900883750,13900883749,13900883748,13900883747,13900883746,13900883745,13900883744,13900883743,13900883742,13900883741,13900883740,13900883739,13900883738,13900883737,13900883736,13900883735,13900883734,13900883733,13900883732,13900883731,13900883730,13900883729,13900883728,13900883727,13900883726,13900883725,13900883724,13900883723,13900883722,13900883721,13900883720,13900883719,13900883718,13900883717,13900883716,13900883715,13900883714,13900883713,13900883712,13900883711,13900883710,13900883709,13900883708,13900883707,13900883706,13900883705,13900883704,13900883703,13900883702,13900883701,13900883700,13900883699,13900883698,13900883697,13900883696,13900883695,13900883694,13900883693,13900883692,13900883691,13900883690,13900883689,13900883688,13900883687,13900883686,13900883685,13900883684,13900883683,13900883682,13900883681,13900883680,13900883679,13900883678,13900883677,13900883676,13900883675,13900883674,13900883673,13900883672,13900883671,13900883670,13900883669,13900883668,13900883667,13900883666,13900883665,13900883664,13900883663,13900883662,13900883661,13900883660,13900883659,13900883658,13900883657,13900883656,13900883655,13900883654,13900883653,13900883652,13900883651,13900883650,13900883649,13900883648,13900883647,13900883646,13900883645,13900883644,13900883643,13900883642,13900883641,13900883640,13900883639,13900883638,13900883637,13900883636,13900883635,13900883634,13900883633,13900883632,13900883631,13900883630,13900883629,13900883628,13900883627,13900883626,13900883625,13900883624,13900883623,13900883622,13900883621,13900883620,13900883619,13900883618,13900883617,13900883616,13900883615,13900883614,13900883613,13900883612,13900883611,13900883610,13900883609,13900883608,13900883607,13900883606,13900883605,13900883604,13900883603,13900883602,13900883601,13900883600,13900883599,13900883598,13900883597,13900883596,13900883595,13900883594,13900883593,13900883592,13900883591,13900883590,13900883589,13900883588,13900883587,13900883586,13900883585,13900883584,13900883583,13900883582,13900883581,13900883580,13900883579,13900883578,13900883577,13900883576,13900883575,13900883574,13900883573,13900883572,13900883571,13900883570,13900883569,13900883568,13900883567,13900883566,13900883565,13900883564,13900883563,13900883562,13900883561,13900883560,13900883559,13900883558,13900883557,13900883556,13900883555,13900883554,13900883553,13900883552,13900883551,13900883550,13900883549,13900883548,13900883547,13900883546,13900883545,13900883544,13900883543,13900883542,13900883541,13900883540,13900883539,13900883538,13900883537,13900883536,13900883535,13900883534,13900883533,13900883532,13900883531,13900883530,13900883529,13900883528,13900883527,13900883526,13900883525,13900883524,13900883523,13900883522,13900883521,13900883520,13900883519,13900883518,13900883517,13900883516,13900883515,13900883514,13900883513,13900883512,13900883511,13900883510,13900883509,13900883508,13900883507,13900883506,13900883505,13900883504,13900883503,13900883502,13900883501,13900883500,13900880009,13900880008,13900880007,13900880006,13900880005,13900880004,13900880003,13900880002,13900880001,13900880000,13900888999,13900888998,13900888997,13900888996,13900888995,13900888994,13900888993,13900888992,13900888991,13900888990,13900888989,13900888988,13900888987,13900888986,13900888985,13900888984,13900888983,13900888982,13900888981,13900888980,13900888979,13900888978,13900888977,13900888976,13900888975,13900888974,13900888973,13900888972,13900888971,13900888970,13900888969,13900888968,13900888967,13900888966,13900888965,13900888964,13900888963,13900888962,13900888961,13900888960,13900888959,13900888958,13900888957,13900888956,13900888955,13900888954,13900888953,13900888952,13900888951,13900888950,13900888949,13900888948,13900888947,13900888946,13900888945,13900888944,13900888943,13900888942,13900888941,13900888940,13900888939,13900888938,13900888937,13900888936,13900888935,13900888934,13900888933,13900888932,13900888931,13900888930,13900888929,13900888928,13900888927,13900888926,13900888925,13900888924,13900888923,13900888922,13900888921,13900888920,13900888919,13900888918,13900888917,13900888916,13900888915,13900888914,13900888913,13900888912,13900888911,13900888910,13900888909,13900888908,13900888907,13900888906,13900888905,13900888904,13900888903,13900888902,13900888901,13900888900,13900888899,13900888898,13900888897,13900888896,13900888895,13900888894,13900888893,13900888892,13900888891,13900888890,13900888889,13900888888,13900888887,13900888886,13900888885,13900888884,13900888883,13900888882,13900888881,13900888880,13900888879,13900888878,13900888877,13900888876,13900888875,13900888874,13900888873,13900888872,13900888871,13900888870,13900888869,13900888868,13900888867,13900888866,13900888865,13900888864,13900888863,13900888862,13900888861,13900888860,13900888859,13900888858,13900888857,13900888856,13900888855,13900888854,13900888853,13900888852,13900888851,13900888850,13900888849,13900888848,13900888847,13900888846,13900888845,13900888844,13900888843,13900888842,13900888841,13900888840,13900888839,13900888838,13900888837,13900888836,13900888835,13900888834,13900888833,13900888832,13900888831,13900888830,13900888829,13900888828,13900888827,13900888826,13900888825,13900888824,13900888823,13900888822,13900888821,13900888820,13900888819,13900888818,13900888817,13900888816,13900888815,13900888814,13900888813,13900888812,13900888811,13900888810,13900888809,13900888808,13900888807,13900888806,13900888805,13900888804,13900888803,13900888802,13900888801,13900888800,13900888799,13900888798,13900888797,13900888796,13900888795,13900888794,13900888793,13900888792,13900888791,13900888790,13900888789,13900888788,13900888787,13900888786,13900888785,13900888784,13900888783,13900888782,13900888781,13900888780,13900888779,13900888778,13900888777,13900888776,13900888775,13900888774,13900888773,13900888772,13900888771,13900888770,13900888769,13900888768,13900888767,13900888766,13900888765,13900888764,13900888763,13900888762,13900888761,13900888760,13900888759,13900888758,13900888757,13900888756,13900888755,13900888754,13900888753,13900888752,13900888751,13900888750,13900888749,13900888748,13900888747,13900888746,13900888745,13900888744,13900888743,13900888742,13900888741,13900888740,13900888739,13900888738,13900888737,13900888736,13900888735,13900888734,13900888733,13900888732,13900888731,13900888730,13900888729,13900888728,13900888727,13900888726,13900888725,13900888724,13900888723,13900888722,13900888721,13900888720,13900888719,13900888718,13900888717,13900888716,13900888715,13900888714,13900888713,13900888712,13900888711,13900888710,13900888709,13900888708,13900888707,13900888706,13900888705,13900888704,13900888703,13900888702,13900888701,13900888700,13900888699,13900888698,13900888697,13900888696,13900888695,13900888694,13900888693,13900888692,13900888691,13900888690,13900888689,13900888688,13900888687,13900888686,13900888685,13900888684,13900888683,13900888682,13900888681,13900888680,13900888679,13900888678,13900888677,13900888676,13900888675,13900888674,13900888673,13900888672,13900888671,13900888670,13900888669,13900888668,13900888667,13900888666,13900888665,13900888664,13900888663,13900888662,13900888661,13900888660,13900888659,13900888658,13900888657,13900888656,13900888655,13900888654,13900888653,13900888652,13900888651,13900888650,13900888649,13900888648,13900888647,13900888646,13900888645,13900888644,13900888643,13900888642,13900888641,13900888640,13900888639,13900888638,13900888637,13900888636,13900888635,13900888634,13900888633,13900888632,13900888631,13900888630,13900888629,13900888628,13900888627,13900888626,13900888625,13900888624,13900888623,13900888622,13900888621,13900888620,13900888619,13900888618,13900888617,13900888616,13900888615,13900888614,13900888613,13900888612,13900888611,13900888610,13900888609,13900888608,13900888607,13900888606,13900888605,13900888604,13900888603,13900888602,13900888601,13900888600,13900888599,13900888598,13900888597,13900888596,13900888595,13900888594,13900888593,13900888592,13900888591,13900888590,13900888589,13900888588,13900888587,13900888586,13900888585,13900888584,13900888583,13900888582,13900888581,13900888580,13900888579,13900888578,13900888577,13900888576,13900888575,13900888574,13900888573,13900888572,13900888571,13900888570,13900888569,13900888568,13900888567,13900888566,13900888565,13900888564,13900888563,13900888562,13900888561,13900888560,13900888559,13900888558,13900888557,13900888556,13900888555,13900888554,13900888553,13900888552,13900888551,13900888550,13900888549,13900888548,13900888547,13900888546,13900888545,13900888544,13900888543,13900888542,13900888541,13900888540,13900888539,13900888538,13900888537,13900888536,13900888535,13900888534,13900888533,13900888532,13900888531,13900888530,13900888529,13900888528,13900888527,13900888526,13900888525,13900888524,13900888523,13900888522,13900888521,13900888520,13900888519,13900888518,13900888517,13900888516,13900888515,13900888514,13900888513,13900888512,13900888511,13900888510,13900888509,13900888508,13900888507,13900888506,13900888505,13900888504,13900888503,13900888502,13900888501,13900888500,13900885500,13900885501,13900885502,13900885503,13900885504,13900885505,13900885506,13900885507,13900885508,13900885509,13900885510,13900885511,13900885512,13900885513,13900885514,13900885515,13900885516,13900885517,13900885518,13900885519,13900885520,13900885521,13900885522,13900885523,13900885524,13900885525,13900885526,13900885527,13900885528,13900885529,13900885530,13900885531,13900885532,13900885533,13900885534,13900885535,13900885536,13900885537,13900885538,13900885539,13900885540,13900885541,13900885542,13900885543,13900885544,13900885545,13900885546,13900885547,13900885548,13900885549,13900885550,13900885551,13900885552,13900885553,13900885554,13900885555,13900885556,13900885557,13900885558,13900885559,13900885560,13900885561,13900885562,13900885563,13900885564,13900885565,13900885566,13900885567,13900885568,13900885569,13900885570,13900885571,13900885572,13900885573,13900885574,13900885575,13900885576,13900885577,13900885578,13900885579,13900885580,13900885581,13900885582,13900885583,13900885584,13900885585,13900885586,13900885587,13900885588,13900885589,13900885590,13900885591,13900885592,13900885593,13900885594,13900885595,13900885596,13900885597,13900885598,13900885599,13900885600,13900885601,13900885602,13900885603,13900885604,13900885605,13900885606,13900885607,13900885608,13900885609,13900885610,13900885611,13900885612,13900885613,13900885614,13900885615,13900885616,13900885617,13900885618,13900885619,13900885620,13900885621,13900885622,13900885623,13900885624,13900885625,13900885626,13900885627,13900885628,13900885629,13900885630,13900885631,13900885632,13900885633,13900885634,13900885635,13900885636,13900885637,13900885638,13900885639,13900885640,13900885641,13900885642,13900885643,13900885644,13900885645,13900885646,13900885647,13900885648,13900885649,13900885650,13900885651,13900885652,13900885653,13900885654,13900885655,13900885656,13900885657,13900885658,13900885659,13900885660,13900885661,13900885662,13900885663,13900885664,13900885665,13900885666,13900885667,13900885668,13900885669,13900885670,13900885671,13900885672,13900885673,13900885674,13900885675,13900885676,13900885677,13900885678,13900885679,13900885680,13900885681,13900885682,13900885683,13900885684,13900885685,13900885686,13900885687,13900885688,13900885689,13900885690,13900885691,13900885692,13900885693,13900885694,13900885695,13900885696,13900885697,13900885698,13900885699,13900885700,13900885701,13900885702,13900885703,13900885704,13900885705,13900885706,13900885707,13900885708,13900885709,13900885710,13900885711,13900885712,13900885713,13900885714,13900885715,13900885716,13900885717,13900885718,13900885719,13900885720,13900885721,13900885722,13900885723,13900885724,13900885725,13900885726,13900885727,13900885728,13900885729,13900885730,13900885731,13900885732,13900885733,13900885734,13900885735,13900885736,13900885737,13900885738,13900885739,13900885740,13900885741,13900885742,13900885743,13900885744,13900885745,13900885746,13900885747,13900885748,13900885749,13900885750,13900885751,13900885752,13900885753,13900885754,13900885755,13900885756,13900885757,13900885758,13900885759,13900885760,13900885761,13900885762,13900885763,13900885764,13900885765,13900885766,13900885767,13900885768,13900885769,13900885770,13900885771,13900885772,13900885773,13900885774,13900885775,13900885776,13900885777,13900885778,13900885779,13900885780,13900885781,13900885782,13900885783,13900885784,13900885785,13900885786,13900885787,13900885788,13900885789,13900885790,13900885791,13900885792,13900885793,13900885794,13900885795,13900885796,13900885797,13900885798,13900885799,13900885800,13900885801,13900885802,13900885803,13900885804,13900885805,13900885806,13900885807,13900885808,13900885809,13900885810,13900885811,13900885812,13900885813,13900885814,13900885815,13900885816,13900885817,13900885818,13900885819,13900885820,13900885821,13900885822,13900885823,13900885824,13900885825,13900885826,13900885827,13900885828,13900885829,13900885830,13900885831,13900885832,13900885833,13900885834,13900885835,13900885836,13900885837,13900885838,13900885839,13900885840,13900885841,13900885842,13900885843,13900885844,13900885845,13900885846,13900885847,13900885848,13900885849,13900885850,13900885851,13900885852,13900885853,13900885854,13900885855,13900885856,13900885857,13900885858,13900885859,13900885860,13900885861,13900885862,13900885863,13900885864,13900885865,13900885866,13900885867,13900885868,13900885869,13900885870,13900885871,13900885872,13900885873,13900885874,13900885875,13900885876,13900885877,13900885878,13900885879,13900885880,13900885881,13900885882,13900885883,13900885884,13900885885,13900885886,13900885887,13900885888,13900885889,13900885890,13900885891,13900885892,13900885893,13900885894,13900885895,13900885896,13900885897,13900885898,13900885899,13900885900,13900885901,13900885902,13900885903,13900885904,13900885905,13900885906,13900885907,13900885908,13900885909,13900885910,13900885911,13900885912,13900885913,13900885914,13900885915,13900885916,13900885917,13900885918,13900885919,13900885920,13900885921,13900885922,13900885923,13900885924,13900885925,13900885926,13900885927,13900885928,13900885929,13900885930,13900885931,13900885932,13900885933,13900885934,13900885935,13900885936,13900885937,13900885938,13900885939,13900885940,13900885941,13900885942,13900885943,13900885944,13900885945,13900885946,13900885947,13900885948,13900885949,13900885950,13900885951,13900885952,13900885953,13900885954,13900885955,13900885956,13900885957,13900885958,13900885959,13900885960,13900885961,13900885962,13900885963,13900885964,13900885965,13900885966,13900885967,13900885968,13900885969,13900885970,13900885971,13900885972,13900885973,13900885974,13900885975,13900885976,13900885977,13900885978,13900885979,13900885980,13900885981,13900885982,13900885983,13900885984,13900885985,13900885986,13900885987,13900885988,13900885989,13900885990,13900885991,13900885992,13900885993,13900885994,13900885995,13900885996,13900885997,13900885998,13900885999,13900881000,13900881001,13900881002,13900881003,13900881004,13900881005,13900881006,13900881007,13900881008,13900881009,13900881010,13900881011,13900881012,13900881013,13900881014,13900881015,13900881016,13900881017,13900881018,13900881019,13900881020,13900881021,13900881022,13900881023,13900881024,13900881025,13900881026,13900881027,13900881028,13900881029,13900881030,13900881031,13900881032,13900881033,13900881034,13900881035,13900881036,13900881037,13900881038,13900881039,13900881040,13900881041,13900881042,13900881043,13900881044,13900881045,13900881046,13900881047,13900881048,13900881049,13900881050,13900881051,13900881052,13900881053,13900881054,13900881055,13900881056,13900881057,13900881058,13900881059,13900881060,13900881061,13900881062,13900881063,13900881064,13900881065,13900881066,13900881067,13900881068,13900881069,13900881070,13900881071,13900881072,13900881073,13900881074,13900881075,13900881076,13900881077,13900881078,13900881079,13900881080,13900881081,13900881082,13900881083,13900881084,13900881085,13900881086,13900881087,13900881088,13900881089,13900881090,13900881091,13900881092,13900881093,13900881094,13900881095,13900881096,13900881097,13900881098,13900881099,13900881100,13900881101,13900881102,13900881103,13900881104,13900881105,13900881106,13900881107,13900881108,13900881109,13900881110,13900881111,13900881112,13900881113,13900881114,13900881115,13900881116,13900881117,13900881118,13900881119,13900881120,13900881121,13900881122,13900881123,13900881124,13900881125,13900881126,13900881127,13900881128,13900881129,13900881130,13900881131,13900881132,13900881133,13900881134,13900881135,13900881136,13900881137,13900881138,13900881139,13900881140,13900881141,13900881142,13900881143,13900881144,13900881145,13900881146,13900881147,13900881148,13900881149,13900881150,13900881151,13900881152,13900881153,13900881154,13900881155,13900881156,13900881157,13900881158,13900881159,13900881160,13900881161,13900881162,13900881163,13900881164,13900881165,13900881166,13900881167,13900881168,13900881169,13900881170,13900881171,13900881172,13900881173,13900881174,13900881175,13900881176,13900881177,13900881178,13900881179,13900881180,13900881181,13900881182,13900881183,13900881184,13900881185,13900881186,13900881187,13900881188,13900881189,13900881190,13900881191,13900881192,13900881193,13900881194,13900881195,13900881196,13900881197,13900881198,13900881199,13900881200,13900881201,13900881202,13900881203,13900881204,13900881205,13900881206,13900881207,13900881208,13900881209,13900881210,13900881211,13900881212,13900881213,13900881214,13900881215,13900881216,13900881217,13900881218,13900881219,13900881220,13900881221,13900881222,13900881223,13900881224,13900881225,13900881226,13900881227,13900881228,13900881229,13900881230,13900881231,13900881232,13900881233,13900881234,13900881235,13900881236,13900881237,13900881238,13900881239,13900881240,13900881241,13900881242,13900881243,13900881244,13900881245,13900881246,13900881247,13900881248,13900881249,13900881250,13900881251,13900881252,13900881253,13900881254,13900881255,13900881256,13900881257,13900881258,13900881259,13900881260,13900881261,13900881262,13900881263,13900881264,13900881265,13900881266,13900881267,13900881268,13900881269,13900881270,13900881271,13900881272,13900881273,13900881274,13900881275,13900881276,13900881277,13900881278,13900881279,13900881280,13900881281,13900881282,13900881283,13900881284,13900881285,13900881286,13900881287,13900881288,13900881289,13900881290,13900881291,13900881292,13900881293,13900881294,13900881295,13900881296,13900881297,13900881298,13900881299,13900881300,13900881301,13900881302,13900881303,13900881304,13900881305,13900881306,13900881307,13900881308,13900881309,13900881310,13900881311,13900881312,13900881313,13900881314,13900881315,13900881316,13900881317,13900881318,13900881319,13900881320,13900881321,13900881322,13900881323,13900881324,13900881325,13900881326,13900881327,13900881328,13900881329,13900881330,13900881331,13900881332,13900881333,13900881334,13900881335,13900881336,13900881337,13900881338,13900881339,13900881340,13900881341,13900881342,13900881343,13900881344,13900881345,13900881346,13900881347,13900881348,13900881349,13900881350,13900881351,13900881352,13900881353,13900881354,13900881355,13900881356,13900881357,13900881358,13900881359,13900881360,13900881361,13900881362,13900881363,13900881364,13900881365,13900881366,13900881367,13900881368,13900881369,13900881370,13900881371,13900881372,13900881373,13900881374,13900881375,13900881376,13900881377,13900881378,13900881379,13900881380,13900881381,13900881382,13900881383,13900881384,13900881385,13900881386,13900881387,13900881388,13900881389,13900881390,13900881391,13900881392,13900881393,13900881394,13900881395,13900881396,13900881397,13900881398,13900881399,13900881400,13900881401,13900881402,13900881403,13900881404,13900881405,13900881406,13900881407,13900881408,13900881409,13900881410,13900881411,13900881412,13900881413,13900881414,13900881415,13900881416,13900881417,13900881418,13900881419,13900881420,13900881421,13900881422,13900881423,13900881424,13900881425,13900881426,13900881427,13900881428,13900881429,13900881430,13900881431,13900881432,13900881433,13900881434,13900881435,13900881436,13900881437,13900881438,13900881439,13900881440,13900881441,13900881442,13900881443,13900881444,13900881445,13900881446,13900881447,13900881448,13900881449,13900881450,13900881451,13900881452,13900881453,13900881454,13900881455,13900881456,13900881457,13900881458,13900881459,13900881460,13900881461,13900881462,13900881463,13900881464,13900881465,13900881466,13900881467,13900881468,13900881469,13900881470,13900881471,13900881472,13900881473,13900881474,13900881475,13900881476,13900881477,13900881478,13900881479,13900881480,13900881481,13900881482,13900881483,13900881484,13900881485,13900881486,13900881487,13900881488,13900881489,13900881490,13900881491,13900881492,13900881493,13900881494,13900881495,13900881496,13900881497,13900881498,13900881499,13900888499,13900888498,13900888497,13900888496,13900888495,13900888494,13900888493,13900888492,13900888491,13900888490,13900888489,13900888488,13900888487,13900888486,13900888485,13900888484,13900888483,13900888482,13900888481,13900888480,13900888479,13900888478,13900888477,13900888476,13900888475,13900888474,13900888473,13900888472,13900888471,13900888470,13900888469,13900888468,13900888467,13900888466,13900888465,13900888464,13900888463,13900888462,13900888461,13900888460,13900888459,13900888458,13900888457,13900888456,13900888455,13900888454,13900888453,13900888452,13900888451,13900888450,13900888449,13900888448,13900888447,13900888446,13900888445,13900888444,13900888443,13900888442,13900888441,13900888440,13900888439,13900888438,13900888437,13900888436,13900888435,13900888434,13900888433,13900888432,13900888431,13900888430,13900888429,13900888428,13900888427,13900888426,13900888425,13900888424,13900888423,13900888422,13900888421,13900888420,13900888419,13900888418,13900888417,13900888416,13900888415,13900888414,13900888413,13900888412,13900888411,13900888410,13900888409,13900888408,13900888407,13900888406,13900888405,13900888404,13900888403,13900888402,13900888401,13900888400,13900888399,13900888398,13900888397,13900888396,13900888395,13900888394,13900888393,13900888392,13900888391,13900888390,13900888389,13900888388,13900888387,13900888386,13900888385,13900888384,13900888383,13900888382,13900888381,13900888380,13900888379,13900888378,13900888377,13900888376,13900888375,13900888374,13900888373,13900888372,13900888371,13900888370,13900888369,13900888368,13900888367,13900888366,13900888365,13900888364,13900888363,13900888362,13900888361,13900888360,13900888359,13900888358,13900888357,13900888356,13900888355,13900888354,13900888353,13900888352,13900888351,13900888350,13900888349,13900888348,13900888347,13900888346,13900888345,13900888344,13900888343,13900888342,13900888341,13900888340,13900888339,13900888338,13900888337,13900888336,13900888335,13900888334,13900888333,13900888332,13900888331,13900888330,13900888329,13900888328,13900888327,13900888326,13900888325,13900888324,13900888323,13900888322,13900888321,13900888320,13900888319,13900888318,13900888317,13900888316,13900888315,13900888314,13900888313,13900888312,13900888311,13900888310,13900888309,13900888308,13900888307,13900888306,13900888305,13900888304,13900888303,13900888302,13900888301,13900888300,13900888299,13900888298,13900888297,13900888296,13900888295,13900888294,13900888293,13900888292,13900888291,13900888290,13900888289,13900888288,13900888287,13900888286,13900888285,13900888284,13900888283,13900888282,13900888281,13900888280,13900888279,13900888278,13900888277,13900888276,13900888275,13900888274,13900888273,13900888272,13900888271,13900888270,13900888269,13900888268,13900888267,13900888266,13900888265,13900888264,13900888263,13900888262,13900888261,13900888260,13900888259,13900888258,13900888257,13900888256,13900888255,13900888254,13900888253,13900888252,13900888251,13900888250,13900888249,13900888248,13900888247,13900888246,13900888245,13900888244,13900888243,13900888242,13900888241,13900888240,13900888239,13900888238,13900888237,13900888236,13900888235,13900888234,13900888233,13900888232,13900888231,13900888230,13900888229,13900888228,13900888227,13900888226,13900888225,13900888224,13900888223,13900888222,13900888221,13900888220,13900888219,13900888218,13900888217,13900888216,13900888215,13900888214,13900888213,13900888212,13900888211,13900888210,13900888209,13900888208,13900888207,13900888206,13900888205,13900888204,13900888203,13900888202,13900888201,13900888200,13900888199,13900888198,13900888197,13900888196,13900888195,13900888194,13900888193,13900888192,13900888191,13900888190,13900888189,13900888188,13900888187,13900888186,13900888185,13900888184,13900888183,13900888182,13900888181,13900888180,13900888179,13900888178,13900888177,13900888176,13900888175,13900888174,13900888173,13900888172,13900888171,13900888170,13900888169,13900888168,13900888167,13900888166,13900888165,13900888164,13900888163,13900888162,13900888161,13900888160,13900888159,13900888158,13900888157,13900888156,13900888155,13900888154,13900888153,13900888152,13900888151,13900888150,13900888149,13900888148,13900888147,13900888146,13900888145,13900888144,13900888143,13900888142,13900888141,13900888140,13900888139,13900888138,13900888137,13900888136,13900888135,13900888134,13900888133,13900888132,13900888131,13900888130,13900888129,13900888128,13900888127,13900888126,13900888125,13900888124,13900888123,13900888122,13900888121,13900888120,13900888119,13900888118,13900888117,13900888116,13900888115,13900888114,13900888113,13900888112,13900888111,13900888110,13900888109,13900888108,13900888107,13900888106,13900888105,13900888104,13900888103,13900888102,13900888101,13900888100,13900888099,13900888098,13900888097,13900888096,13900888095,13900888094,13900888093,13900888092,13900888091,13900888090,13900888089,13900888088,13900888087,13900888086,13900888085,13900888084,13900888083,13900888082,13900888081,13900888080,13900888079,13900888078,13900888077,13900888076,13900888075,13900888074,13900888073,13900888072,13900888071,13900888070,13900888069,13900888068,13900888067,13900888066,13900888065,13900888064,13900888063,13900888062,13900888061,13900888060,13900888059,13900888058,13900888057,13900888056,13900888055,13900888054,13900888053,13900888052,13900888051,13900888050,13900888049,13900888048,13900888047,13900888046,13900888045,13900888044,13900888043,13900888042,13900888041,13900888040,13900888039,13900888038,13900888037,13900888036,13900888035,13900888034,13900888033,13900888032,13900888031,13900888030,13900888029,13900888028,13900888027,13900888026,13900888025,13900888024,13900888023,13900888022,13900888021,13900888020,13900888019,13900888018,13900888017,13900888016,13900888015,13900888014,13900888013,13900888012,13900888011,13900888010,13900888009,13900888008,13900888007,13900888006,13900888005,13900888004,13900888003,13900888002,13900888001,13900888000,13900884500,13900884501,13900884502,13900884503,13900884504,13900884505,13900884506,13900884507,13900884508,13900884509,13900884510,13900884511,13900884512,13900884513,13900884514,13900884515,13900884516,13900884517,13900884518,13900884519,13900884520,13900884521,13900884522,13900884523,13900884524,13900884525,13900884526,13900884527,13900884528,13900884529,13900884530,13900884531,13900884532,13900884533,13900884534,13900884535,13900884536,13900884537,13900884538,13900884539,13900884540,13900884541,13900884542,13900884543,13900884544,13900884545,13900884546,13900884547,13900884548,13900884549,13900884550,13900884551,13900884552,13900884553,13900884554,13900884555,13900884556,13900884557,13900884558,13900884559,13900884560,13900884561,13900884562,13900884563,13900884564,13900884565,13900884566,13900884567,13900884568,13900884569,13900884570,13900884571,13900884572,13900884573,13900884574,13900884575,13900884576,13900884577,13900884578,13900884579,13900884580,13900884581,13900884582,13900884583,13900884584,13900884585,13900884586,13900884587,13900884588,13900884589,13900884590,13900884591,13900884592,13900884593,13900884594,13900884595,13900884596,13900884597,13900884598,13900884599,13900884600,13900884601,13900884602,13900884603,13900884604,13900884605,13900884606,13900884607,13900884608,13900884609,13900884610,13900884611,13900884612,13900884613,13900884614,13900884615,13900884616,13900884617,13900884618,13900884619,13900884620,13900884621,13900884622,13900884623,13900884624,13900884625,13900884626,13900884627,13900884628,13900884629,13900884630,13900884631,13900884632,13900884633,13900884634,13900884635,13900884636,13900884637,13900884638,13900884639,13900884640,13900884641,13900884642,13900884643,13900884644,13900884645,13900884646,13900884647,13900884648,13900884649,13900884650,13900884651,13900884652,13900884653,13900884654,13900884655,13900884656,13900884657,13900884658,13900884659,13900884660,13900884661,13900884662,13900884663,13900884664,13900884665,13900884666,13900884667,13900884668,13900884669,13900884670,13900884671,13900884672,13900884673,13900884674,13900884675,13900884676,13900884677,13900884678,13900884679,13900884680,13900884681,13900884682,13900884683,13900884684,13900884685,13900884686,13900884687,13900884688,13900884689,13900884690,13900884691,13900884692,13900884693,13900884694,13900884695,13900884696,13900884697,13900884698,13900884699,13900884700,13900884701,13900884702,13900884703,13900884704,13900884705,13900884706,13900884707,13900884708,13900884709,13900884710,13900884711,13900884712,13900884713,13900884714,13900884715,13900884716,13900884717,13900884718,13900884719,13900884720,13900884721,13900884722,13900884723,13900884724,13900884725,13900884726,13900884727,13900884728,13900884729,13900884730,13900884731,13900884732,13900884733,13900884734,13900884735,13900884736,13900884737,13900884738,13900884739,13900884740,13900884741,13900884742,13900884743,13900884744,13900884745,13900884746,13900884747,13900884748,13900884749,13900884750,13900884751,13900884752,13900884753,13900884754,13900884755,13900884756,13900884757,13900884758,13900884759,13900884760,13900884761,13900884762,13900884763,13900884764,13900884765,13900884766,13900884767,13900884768,13900884769,13900884770,13900884771,13900884772,13900884773,13900884774,13900884775,13900884776,13900884777,13900884778,13900884779,13900884780,13900884781,13900884782,13900884783,13900884784,13900884785,13900884786,13900884787,13900884788,13900884789,13900884790,13900884791,13900884792,13900884793,13900884794,13900884795,13900884796,13900884797,13900884798,13900884799,13900884800,13900884801,13900884802,13900884803,13900884804,13900884805,13900884806,13900884807,13900884808,13900884809,13900884810,13900884811,13900884812,13900884813,13900884814,13900884815,13900884816,13900884817,13900884818,13900884819,13900884820,13900884821,13900884822,13900884823,13900884824,13900884825,13900884826,13900884827,13900884828,13900884829,13900884830,13900884831,13900884832,13900884833,13900884834,13900884835,13900884836,13900884837,13900884838,13900884839,13900884840,13900884841,13900884842,13900884843,13900884844,13900884845,13900884846,13900884847,13900884848,13900884849,13900884850,13900884851,13900884852,13900884853,13900884854,13900884855,13900884856,13900884857,13900884858,13900884859,13900884860,13900884861,13900884862,13900884863,13900884864,13900884865,13900884866,13900884867,13900884868,13900884869,13900884870,13900884871,13900884872,13900884873,13900884874,13900884875,13900884876,13900884877,13900884878,13900884879,13900884880,13900884881,13900884882,13900884883,13900884884,13900884885,13900884886,13900884887,13900884888,13900884889,13900884890,13900884891,13900884892,13900884893,13900884894,13900884895,13900884896,13900884897,13900884898,13900884899,13900884900,13900884901,13900884902,13900884903,13900884904,13900884905,13900884906,13900884907,13900884908,13900884909,13900884910,13900884911,13900884912,13900884913,13900884914,13900884915,13900884916,13900884917,13900884918,13900884919,13900884920,13900884921,13900884922,13900884923,13900884924,13900884925,13900884926,13900884927,13900884928,13900884929,13900884930,13900884931,13900884932,13900884933,13900884934,13900884935,13900884936,13900884937,13900884938,13900884939,13900884940,13900884941,13900884942,13900884943,13900884944,13900884945,13900884946,13900884947,13900884948,13900884949,13900884950,13900884951,13900884952,13900884953,13900884954,13900884955,13900884956,13900884957,13900884958,13900884959,13900884960,13900884961,13900884962,13900884963,13900884964,13900884965,13900884966,13900884967,13900884968,13900884969,13900884970,13900884971,13900884972,13900884973,13900884974,13900884975,13900884976,13900884977,13900884978,13900884979,13900884980,13900884981,13900884982,13900884983,13900884984,13900884985,13900884986,13900884987,13900884988,13900884989,13900884990,13900884991,13900884992,13900884993,13900884994,13900884995,13900884996,13900884997,13900884998,13900884999,13900880099,13900880098,13900880097,13900880096,13900880095,13900880094,13900880093,13900880092,13900880091,13900880090,13900880089,13900880088,13900880087,13900880086,13900880085,13900880084,13900880083,13900880082,13900880081,13900880080,13900880079,13900880078,13900880077,13900880076,13900880075,13900880074,13900880073,13900880072,13900880071,13900880070,13900880069,13900880068,13900880067,13900880066,13900880065,13900880064,13900880063,13900880062,13900880061,13900880060,13900880059,13900880058,13900880057,13900880056,13900880055,13900880054,13900880053,13900880052,13900880051,13900880050,13900880049,13900880048,13900880047,13900880046,13900880045,13900880044,13900880043,13900880042,13900880041,13900880040,13900880039,13900880038,13900880037,13900880036,13900880035,13900880034,13900880033,13900880032,13900880031,13900880030,13900880029,13900880028,13900880027,13900880026,13900880025,13900880024,13900880023,13900880022,13900880021,13900880020,13900880019,13900880018,13900880017,13900880016,13900880015,13900880014,13900880013,13900880012,13900880011,13900880010,13900886500,13900886501,13900886502,13900886503,13900886504,13900886505,13900886506,13900886507,13900886508,13900886509,13900886510,13900886511,13900886512,13900886513,13900886514,13900886515,13900886516,13900886517,13900886518,13900886519,13900886520,13900886521,13900886522,13900886523,13900886524,13900886525,13900886526,13900886527,13900886528,13900886529,13900886530,13900886531,13900886532,13900886533,13900886534,13900886535,13900886536,13900886537,13900886538,13900886539,13900886540,13900886541,13900886542,13900886543,13900886544,13900886545,13900886546,13900886547,13900886548,13900886549,13900886550,13900886551,13900886552,13900886553,13900886554,13900886555,13900886556,13900886557,13900886558,13900886559,13900886560,13900886561,13900886562,13900886563,13900886564,13900886565,13900886566,13900886567,13900886568,13900886569,13900886570,13900886571,13900886572,13900886573,13900886574,13900886575,13900886576,13900886577,13900886578,13900886579,13900886580,13900886581,13900886582,13900886583,13900886584,13900886585,13900886586,13900886587,13900886588,13900886589,13900886590,13900886591,13900886592,13900886593,13900886594,13900886595,13900886596,13900886597,13900886598,13900886599,13900886600,13900886601,13900886602,13900886603,13900886604,13900886605,13900886606,13900886607,13900886608,13900886609,13900886610,13900886611,13900886612,13900886613,13900886614,13900886615,13900886616,13900886617,13900886618,13900886619,13900886620,13900886621,13900886622,13900886623,13900886624,13900886625,13900886626,13900886627,13900886628,13900886629,13900886630,13900886631,13900886632,13900886633,13900886634,13900886635,13900886636,13900886637,13900886638,13900886639,13900886640,13900886641,13900886642,13900886643,13900886644,13900886645,13900886646,13900886647,13900886648,13900886649,13900886650,13900886651,13900886652,13900886653,13900886654,13900886655,13900886656,13900886657,13900886658,13900886659,13900886660,13900886661,13900886662,13900886663,13900886664,13900886665,13900886666,13900886667,13900886668,13900886669,13900886670,13900886671,13900886672,13900886673,13900886674,13900886675,13900886676,13900886677,13900886678,13900886679,13900886680,13900886681,13900886682,13900886683,13900886684,13900886685,13900886686,13900886687,13900886688,13900886689,13900886690,13900886691,13900886692,13900886693,13900886694,13900886695,13900886696,13900886697,13900886698,13900886699,13900886700,13900886701,13900886702,13900886703,13900886704,13900886705,13900886706,13900886707,13900886708,13900886709,13900886710,13900886711,13900886712,13900886713,13900886714,13900886715,13900886716,13900886717,13900886718,13900886719,13900886720,13900886721,13900886722,13900886723,13900886724,13900886725,13900886726,13900886727,13900886728,13900886729,13900886730,13900886731,13900886732,13900886733,13900886734,13900886735,13900886736,13900886737,13900886738,13900886739,13900886740,13900886741,13900886742,13900886743,13900886744,13900886745,13900886746,13900886747,13900886748,13900886749,13900886750,13900886751,13900886752,13900886753,13900886754,13900886755,13900886756,13900886757,13900886758,13900886759,13900886760,13900886761,13900886762,13900886763,13900886764,13900886765,13900886766,13900886767,13900886768,13900886769,13900886770,13900886771,13900886772,13900886773,13900886774,13900886775,13900886776,13900886777,13900886778,13900886779,13900886780,13900886781,13900886782,13900886783,13900886784,13900886785,13900886786,13900886787,13900886788,13900886789,13900886790,13900886791,13900886792,13900886793,13900886794,13900886795,13900886796,13900886797,13900886798,13900886799,13900886800,13900886801,13900886802,13900886803,13900886804,13900886805,13900886806,13900886807,13900886808,13900886809,13900886810,13900886811,13900886812,13900886813,13900886814,13900886815,13900886816,13900886817,13900886818,13900886819,13900886820,13900886821,13900886822,13900886823,13900886824,13900886825,13900886826,13900886827,13900886828,13900886829,13900886830,13900886831,13900886832,13900886833,13900886834,13900886835,13900886836,13900886837,13900886838,13900886839,13900886840,13900886841,13900886842,13900886843,13900886844,13900886845,13900886846,13900886847,13900886848,13900886849,13900886850,13900886851,13900886852,13900886853,13900886854,13900886855,13900886856,13900886857,13900886858,13900886859,13900886860,13900886861,13900886862,13900886863,13900886864,13900886865,13900886866,13900886867,13900886868,13900886869,13900886870,13900886871,13900886872,13900886873,13900886874,13900886875,13900886876,13900886877,13900886878,13900886879,13900886880,13900886881,13900886882,13900886883,13900886884,13900886885,13900886886,13900886887,13900886888,13900886889,13900886890,13900886891,13900886892,13900886893,13900886894,13900886895,13900886896,13900886897,13900886898,13900886899,13900886900,13900886901,13900886902,13900886903,13900886904,13900886905,13900886906,13900886907,13900886908,13900886909,13900886910,13900886911,13900886912,13900886913,13900886914,13900886915,13900886916,13900886917,13900886918,13900886919,13900886920,13900886921,13900886922,13900886923,13900886924,13900886925,13900886926,13900886927,13900886928,13900886929,13900886930,13900886931,13900886932,13900886933,13900886934,13900886935,13900886936,13900886937,13900886938,13900886939,13900886940,13900886941,13900886942,13900886943,13900886944,13900886945,13900886946,13900886947,13900886948,13900886949,13900886950,13900886951,13900886952,13900886953,13900886954,13900886955,13900886956,13900886957,13900886958,13900886959,13900886960,13900886961,13900886962,13900886963,13900886964,13900886965,13900886966,13900886967,13900886968,13900886969,13900886970,13900886971,13900886972,13900886973,13900886974,13900886975,13900886976,13900886977,13900886978,13900886979,13900886980,13900886981,13900886982,13900886983,13900886984,13900886985,13900886986,13900886987,13900886988,13900886989,13900886990,13900886991,13900886992,13900886993,13900886994,13900886995,13900886996,13900886997,13900886998,13900886999,13900887000,13900887001,13900887002,13900887003,13900887004,13900887005,13900887006,13900887007,13900887008,13900887009,13900887010,13900887011,13900887012,13900887013,13900887014,13900887015,13900887016,13900887017,13900887018,13900887019,13900887020,13900887021,13900887022,13900887023,13900887024,13900887025,13900887026,13900887027,13900887028,13900887029,13900887030,13900887031,13900887032,13900887033,13900887034,13900887035,13900887036,13900887037,13900887038,13900887039,13900887040,13900887041,13900887042,13900887043,13900887044,13900887045,13900887046,13900887047,13900887048,13900887049,13900887050,13900887051,13900887052,13900887053,13900887054,13900887055,13900887056,13900887057,13900887058,13900887059,13900887060,13900887061,13900887062,13900887063,13900887064,13900887065,13900887066,13900887067,13900887068,13900887069,13900887070,13900887071,13900887072,13900887073,13900887074,13900887075,13900887076,13900887077,13900887078,13900887079,13900887080,13900887081,13900887082,13900887083,13900887084,13900887085,13900887086,13900887087,13900887088,13900887089,13900887090,13900887091,13900887092,13900887093,13900887094,13900887095,13900887096,13900887097,13900887098,13900887099,13900887100,13900887101,13900887102,13900887103,13900887104,13900887105,13900887106,13900887107,13900887108,13900887109,13900887110,13900887111,13900887112,13900887113,13900887114,13900887115,13900887116,13900887117,13900887118,13900887119,13900887120,13900887121,13900887122,13900887123,13900887124,13900887125,13900887126,13900887127,13900887128,13900887129,13900887130,13900887131,13900887132,13900887133,13900887134,13900887135,13900887136,13900887137,13900887138,13900887139,13900887140,13900887141,13900887142,13900887143,13900887144,13900887145,13900887146,13900887147,13900887148,13900887149,13900887150,13900887151,13900887152,13900887153,13900887154,13900887155,13900887156,13900887157,13900887158,13900887159,13900887160,13900887161,13900887162,13900887163,13900887164,13900887165,13900887166,13900887167,13900887168,13900887169,13900887170,13900887171,13900887172,13900887173,13900887174,13900887175,13900887176,13900887177,13900887178,13900887179,13900887180,13900887181,13900887182,13900887183,13900887184,13900887185,13900887186,13900887187,13900887188,13900887189,13900887190,13900887191,13900887192,13900887193,13900887194,13900887195,13900887196,13900887197,13900887198,13900887199,13900887200,13900887201,13900887202,13900887203,13900887204,13900887205,13900887206,13900887207,13900887208,13900887209,13900887210,13900887211,13900887212,13900887213,13900887214,13900887215,13900887216,13900887217,13900887218,13900887219,13900887220,13900887221,13900887222,13900887223,13900887224,13900887225,13900887226,13900887227,13900887228,13900887229,13900887230,13900887231,13900887232,13900887233,13900887234,13900887235,13900887236,13900887237,13900887238,13900887239,13900887240,13900887241,13900887242,13900887243,13900887244,13900887245,13900887246,13900887247,13900887248,13900887249,13900887250,13900887251,13900887252,13900887253,13900887254,13900887255,13900887256,13900887257,13900887258,13900887259,13900887260,13900887261,13900887262,13900887263,13900887264,13900887265,13900887266,13900887267,13900887268,13900887269,13900887270,13900887271,13900887272,13900887273,13900887274,13900887275,13900887276,13900887277,13900887278,13900887279,13900887280,13900887281,13900887282,13900887283,13900887284,13900887285,13900887286,13900887287,13900887288,13900887289,13900887290,13900887291,13900887292,13900887293,13900887294,13900887295,13900887296,13900887297,13900887298,13900887299,13900887300,13900887301,13900887302,13900887303,13900887304,13900887305,13900887306,13900887307,13900887308,13900887309,13900887310,13900887311,13900887312,13900887313,13900887314,13900887315,13900887316,13900887317,13900887318,13900887319,13900887320,13900887321,13900887322,13900887323,13900887324,13900887325,13900887326,13900887327,13900887328,13900887329,13900887330,13900887331,13900887332,13900887333,13900887334,13900887335,13900887336,13900887337,13900887338,13900887339,13900887340,13900887341,13900887342,13900887343,13900887344,13900887345,13900887346,13900887347,13900887348,13900887349,13900887350,13900887351,13900887352,13900887353,13900887354,13900887355,13900887356,13900887357,13900887358,13900887359,13900887360,13900887361,13900887362,13900887363,13900887364,13900887365,13900887366,13900887367,13900887368,13900887369,13900887370,13900887371,13900887372,13900887373,13900887374,13900887375,13900887376,13900887377,13900887378,13900887379,13900887380,13900887381,13900887382,13900887383,13900887384,13900887385,13900887386,13900887387,13900887388,13900887389,13900887390,13900887391,13900887392,13900887393,13900887394,13900887395,13900887396,13900887397,13900887398,13900887399,13900887400,13900887401,13900887402,13900887403,13900887404,13900887405,13900887406,13900887407,13900887408,13900887409,13900887410,13900887411,13900887412,13900887413,13900887414,13900887415,13900887416,13900887417,13900887418,13900887419,13900887420,13900887421,13900887422,13900887423,13900887424,13900887425,13900887426,13900887427,13900887428,13900887429,13900887430,13900887431,13900887432,13900887433,13900887434,13900887435,13900887436,13900887437,13900887438,13900887439,13900887440,13900887441,13900887442,13900887443,13900887444,13900887445,13900887446,13900887447,13900887448,13900887449,13900887450,13900887451,13900887452,13900887453,13900887454,13900887455,13900887456,13900887457,13900887458,13900887459,13900887460,13900887461,13900887462,13900887463,13900887464,13900887465,13900887466,13900887467,13900887468,13900887469,13900887470,13900887471,13900887472,13900887473,13900887474,13900887475,13900887476,13900887477,13900887478,13900887479,13900887480,13900887481,13900887482,13900887483,13900887484,13900887485,13900887486,13900887487,13900887488,13900887489,13900887490,13900887491,13900887492,13900887493,13900887494,13900887495,13900887496,13900887497,13900887498,13900887499,13900885499,13900885498,13900885497,13900885496,13900885495,13900885494,13900885493,13900885492,13900885491,13900885490,13900885489,13900885488,13900885487,13900885486,13900885485,13900885484,13900885483,13900885482,13900885481,13900885480,13900885479,13900885478,13900885477,13900885476,13900885475,13900885474,13900885473,13900885472,13900885471,13900885470,13900885469,13900885468,13900885467,13900885466,13900885465,13900885464,13900885463,13900885462,13900885461,13900885460,13900885459,13900885458,13900885457,13900885456,13900885455,13900885454,13900885453,13900885452,13900885451,13900885450,13900885449,13900885448,13900885447,13900885446,13900885445,13900885444,13900885443,13900885442,13900885441,13900885440,13900885439,13900885438,13900885437,13900885436,13900885435,13900885434,13900885433,13900885432,13900885431,13900885430,13900885429,13900885428,13900885427,13900885426,13900885425,13900885424,13900885423,13900885422,13900885421,13900885420,13900885419,13900885418,13900885417,13900885416,13900885415,13900885414,13900885413,13900885412,13900885411,13900885410,13900885409,13900885408,13900885407,13900885406,13900885405,13900885404,13900885403,13900885402,13900885401,13900885400,13900885399,13900885398,13900885397,13900885396,13900885395,13900885394,13900885393,13900885392,13900885391,13900885390,13900885389,13900885388,13900885387,13900885386,13900885385,13900885384,13900885383,13900885382,13900885381,13900885380,13900885379,13900885378,13900885377,13900885376,13900885375,13900885374,13900885373,13900885372,13900885371,13900885370,13900885369,13900885368,13900885367,13900885366,13900885365,13900885364,13900885363,13900885362,13900885361,13900885360,13900885359,13900885358,13900885357,13900885356,13900885355,13900885354,13900885353,13900885352,13900885351,13900885350,13900885349,13900885348,13900885347,13900885346,13900885345,13900885344,13900885343,13900885342,13900885341,13900885340,13900885339,13900885338,13900885337,13900885336,13900885335,13900885334,13900885333,13900885332,13900885331,13900885330,13900885329,13900885328,13900885327,13900885326,13900885325,13900885324,13900885323,13900885322,13900885321,13900885320,13900885319,13900885318,13900885317,13900885316,13900885315,13900885314,13900885313,13900885312,13900885311,13900885310,13900885309,13900885308,13900885307,13900885306,13900885305,13900885304,13900885303,13900885302,13900885301,13900885300,13900885299,13900885298,13900885297,13900885296,13900885295,13900885294,13900885293,13900885292,13900885291,13900885290,13900885289,13900885288,13900885287,13900885286,13900885285,13900885284,13900885283,13900885282,13900885281,13900885280,13900885279,13900885278,13900885277,13900885276,13900885275,13900885274,13900885273,13900885272,13900885271,13900885270,13900885269,13900885268,13900885267,13900885266,13900885265,13900885264,13900885263,13900885262,13900885261,13900885260,13900885259,13900885258,13900885257,13900885256,13900885255,13900885254,13900885253,13900885252,13900885251,13900885250,13900885249,13900885248,13900885247,13900885246,13900885245,13900885244,13900885243,13900885242,13900885241,13900885240,13900885239,13900885238,13900885237,13900885236,13900885235,13900885234,13900885233,13900885232,13900885231,13900885230,13900885229,13900885228,13900885227,13900885226,13900885225,13900885224,13900885223,13900885222,13900885221,13900885220,13900885219,13900885218,13900885217,13900885216,13900885215,13900885214,13900885213,13900885212,13900885211,13900885210,13900885209,13900885208,13900885207,13900885206,13900885205,13900885204,13900885203,13900885202,13900885201,13900885200,13900885199,13900885198,13900885197,13900885196,13900885195,13900885194,13900885193,13900885192,13900885191,13900885190,13900885189,13900885188,13900885187,13900885186,13900885185,13900885184,13900885183,13900885182,13900885181,13900885180,13900885179,13900885178,13900885177,13900885176,13900885175,13900885174,13900885173,13900885172,13900885171,13900885170,13900885169,13900885168,13900885167,13900885166,13900885165,13900885164,13900885163,13900885162,13900885161,13900885160,13900885159,13900885158,13900885157,13900885156,13900885155,13900885154,13900885153,13900885152,13900885151,13900885150,13900885149,13900885148,13900885147,13900885146,13900885145,13900885144,13900885143,13900885142,13900885141,13900885140,13900885139,13900885138,13900885137,13900885136,13900885135,13900885134,13900885133,13900885132,13900885131,13900885130,13900885129,13900885128,13900885127,13900885126,13900885125,13900885124,13900885123,13900885122,13900885121,13900885120,13900885119,13900885118,13900885117,13900885116,13900885115,13900885114,13900885113,13900885112,13900885111,13900885110,13900885109,13900885108,13900885107,13900885106,13900885105,13900885104,13900885103,13900885102,13900885101,13900885100,13900885099,13900885098,13900885097,13900885096,13900885095,13900885094,13900885093,13900885092,13900885091,13900885090,13900885089,13900885088,13900885087,13900885086,13900885085,13900885084,13900885083,13900885082,13900885081,13900885080,13900885079,13900885078,13900885077,13900885076,13900885075,13900885074,13900885073,13900885072,13900885071,13900885070,13900885069,13900885068,13900885067,13900885066,13900885065,13900885064,13900885063,13900885062,13900885061,13900885060,13900885059,13900885058,13900885057,13900885056,13900885055,13900885054,13900885053,13900885052,13900885051,13900885050,13900885049,13900885048,13900885047,13900885046,13900885045,13900885044,13900885043,13900885042,13900885041,13900885040,13900885039,13900885038,13900885037,13900885036,13900885035,13900885034,13900885033,13900885032,13900885031,13900885030,13900885029,13900885028,13900885027,13900885026,13900885025,13900885024,13900885023,13900885022,13900885021,13900885020,13900885019,13900885018,13900885017,13900885016,13900885015,13900885014,13900885013,13900885012,13900885011,13900885010,13900885009,13900885008,13900885007,13900885006,13900885005,13900885004,13900885003,13900885002,13900885001,13900885000,13900889500,13900889501,13900889502,13900889503,13900889504,13900889505,13900889506,13900889507,13900889508,13900889509,13900889510,13900889511,13900889512,13900889513,13900889514,13900889515,13900889516,13900889517,13900889518,13900889519,13900889520,13900889521,13900889522,13900889523,13900889524,13900889525,13900889526,13900889527,13900889528,13900889529,13900889530,13900889531,13900889532,13900889533,13900889534,13900889535,13900889536,13900889537,13900889538,13900889539,13900889540,13900889541,13900889542,13900889543,13900889544,13900889545,13900889546,13900889547,13900889548,13900889549,13900889550,13900889551,13900889552,13900889553,13900889554,13900889555,13900889556,13900889557,13900889558,13900889559,13900889560,13900889561,13900889562,13900889563,13900889564,13900889565,13900889566,13900889567,13900889568,13900889569,13900889570,13900889571,13900889572,13900889573,13900889574,13900889575,13900889576,13900889577,13900889578,13900889579,13900889580,13900889581,13900889582,13900889583,13900889584,13900889585,13900889586,13900889587,13900889588,13900889589,13900889590,13900889591,13900889592,13900889593,13900889594,13900889595,13900889596,13900889597,13900889598,13900889599,13900889600,13900889601,13900889602,13900889603,13900889604,13900889605,13900889606,13900889607,13900889608,13900889609,13900889610,13900889611,13900889612,13900889613,13900889614,13900889615,13900889616,13900889617,13900889618,13900889619,13900889620,13900889621,13900889622,13900889623,13900889624,13900889625,13900889626,13900889627,13900889628,13900889629,13900889630,13900889631,13900889632,13900889633,13900889634,13900889635,13900889636,13900889637,13900889638,13900889639,13900889640,13900889641,13900889642,13900889643,13900889644,13900889645,13900889646,13900889647,13900889648,13900889649,13900889650,13900889651,13900889652,13900889653,13900889654,13900889655,13900889656,13900889657,13900889658,13900889659,13900889660,13900889661,13900889662,13900889663,13900889664,13900889665,13900889666,13900889667,13900889668,13900889669,13900889670,13900889671,13900889672,13900889673,13900889674,13900889675,13900889676,13900889677,13900889678,13900889679,13900889680,13900889681,13900889682,13900889683,13900889684,13900889685,13900889686,13900889687,13900889688,13900889689,13900889690,13900889691,13900889692,13900889693,13900889694,13900889695,13900889696,13900889697,13900889698,13900889699,13900889700,13900889701,13900889702,13900889703,13900889704,13900889705,13900889706,13900889707,13900889708,13900889709,13900889710,13900889711,13900889712,13900889713,13900889714,13900889715,13900889716,13900889717,13900889718,13900889719,13900889720,13900889721,13900889722,13900889723,13900889724,13900889725,13900889726,13900889727,13900889728,13900889729,13900889730,13900889731,13900889732,13900889733,13900889734,13900889735,13900889736,13900889737,13900889738,13900889739,13900889740,13900889741,13900889742,13900889743,13900889744,13900889745,13900889746,13900889747,13900889748,13900889749,13900889750,13900889751,13900889752,13900889753,13900889754,13900889755,13900889756,13900889757,13900889758,13900889759,13900889760,13900889761,13900889762,13900889763,13900889764,13900889765,13900889766,13900889767,13900889768,13900889769,13900889770,13900889771,13900889772,13900889773,13900889774,13900889775,13900889776,13900889777,13900889778,13900889779,13900889780,13900889781,13900889782,13900889783,13900889784,13900889785,13900889786,13900889787,13900889788,13900889789,13900889790,13900889791,13900889792,13900889793,13900889794,13900889795,13900889796,13900889797,13900889798,13900889799,13900889800,13900889801,13900889802,13900889803,13900889804,13900889805,13900889806,13900889807,13900889808,13900889809,13900889810,13900889811,13900889812,13900889813,13900889814,13900889815,13900889816,13900889817,13900889818,13900889819,13900889820,13900889821,13900889822,13900889823,13900889824,13900889825,13900889826,13900889827,13900889828,13900889829,13900889830,13900889831,13900889832,13900889833,13900889834,13900889835,13900889836,13900889837,13900889838,13900889839,13900889840,13900889841,13900889842,13900889843,13900889844,13900889845,13900889846,13900889847,13900889848,13900889849,13900889850,13900889851,13900889852,13900889853,13900889854,13900889855,13900889856,13900889857,13900889858,13900889859,13900889860,13900889861,13900889862,13900889863,13900889864,13900889865,13900889866,13900889867,13900889868,13900889869,13900889870,13900889871,13900889872,13900889873,13900889874,13900889875,13900889876,13900889877,13900889878,13900889879,13900889880,13900889881,13900889882,13900889883,13900889884,13900889885,13900889886,13900889887,13900889888,13900889889,13900889890,13900889891,13900889892,13900889893,13900889894,13900889895,13900889896,13900889897,13900889898,13900889899,13900889900,13900889901,13900889902,13900889903,13900889904,13900889905,13900889906,13900889907,13900889908,13900889909,13900889910,13900889911,13900889912,13900889913,13900889914,13900889915,13900889916,13900889917,13900889918,13900889919,13900889920,13900889921,13900889922,13900889923,13900889924,13900889925,13900889926,13900889927,13900889928,13900889929,13900889930,13900889931,13900889932,13900889933,13900889934,13900889935,13900889936,13900889937,13900889938,13900889939,13900889940,13900889941,13900889942,13900889943,13900889944,13900889945,13900889946,13900889947,13900889948,13900889949,13900889950,13900889951,13900889952,13900889953,13900889954,13900889955,13900889956,13900889957,13900889958,13900889959,13900889960,13900889961,13900889962,13900889963,13900889964,13900889965,13900889966,13900889967,13900889968,13900889969,13900889970,13900889971,13900889972,13900889973,13900889974,13900889975,13900889976,13900889977,13900889978,13900889979,13900889980,13900889981,13900889982,13900889983,13900889984,13900889985,13900889986,13900889987,13900889988,13900889989,13900889990,13900889991,13900889992,13900889993,13900889994,13900889995,13900889996,13900889997,13900889998,13900889999,13900889000,13900889001,13900889002,13900889003,13900889004,13900889005,13900889006,13900889007,13900889008,13900889009,13900889010,13900889011,13900889012,13900889013,13900889014,13900889015,13900889016,13900889017,13900889018,13900889019,13900889020,13900889021,13900889022,13900889023,13900889024,13900889025,13900889026,13900889027,13900889028,13900889029,13900889030,13900889031,13900889032,13900889033,13900889034,13900889035,13900889036,13900889037,13900889038,13900889039,13900889040,13900889041,13900889042,13900889043,13900889044,13900889045,13900889046,13900889047,13900889048,13900889049,13900889050,13900889051,13900889052,13900889053,13900889054,13900889055,13900889056,13900889057,13900889058,13900889059,13900889060,13900889061,13900889062,13900889063,13900889064,13900889065,13900889066,13900889067,13900889068,13900889069,13900889070,13900889071,13900889072,13900889073,13900889074,13900889075,13900889076,13900889077,13900889078,13900889079,13900889080,13900889081,13900889082,13900889083,13900889084,13900889085,13900889086,13900889087,13900889088,13900889089,13900889090,13900889091,13900889092,13900889093,13900889094,13900889095,13900889096,13900889097,13900889098,13900889099,13900889100,13900889101,13900889102,13900889103,13900889104,13900889105,13900889106,13900889107,13900889108,13900889109,13900889110,13900889111,13900889112,13900889113,13900889114,13900889115,13900889116,13900889117,13900889118,13900889119,13900889120,13900889121,13900889122,13900889123,13900889124,13900889125,13900889126,13900889127,13900889128,13900889129,13900889130,13900889131,13900889132,13900889133,13900889134,13900889135,13900889136,13900889137,13900889138,13900889139,13900889140,13900889141,13900889142,13900889143,13900889144,13900889145,13900889146,13900889147,13900889148,13900889149,13900889150,13900889151,13900889152,13900889153,13900889154,13900889155,13900889156,13900889157,13900889158,13900889159,13900889160,13900889161,13900889162,13900889163,13900889164,13900889165,13900889166,13900889167,13900889168,13900889169,13900889170,13900889171,13900889172,13900889173,13900889174,13900889175,13900889176,13900889177,13900889178,13900889179,13900889180,13900889181,13900889182,13900889183,13900889184,13900889185,13900889186,13900889187,13900889188,13900889189,13900889190,13900889191,13900889192,13900889193,13900889194,13900889195,13900889196,13900889197,13900889198,13900889199,13900889200,13900889201,13900889202,13900889203,13900889204,13900889205,13900889206,13900889207,13900889208,13900889209,13900889210,13900889211,13900889212,13900889213,13900889214,13900889215,13900889216,13900889217,13900889218,13900889219,13900889220,13900889221,13900889222,13900889223,13900889224,13900889225,13900889226,13900889227,13900889228,13900889229,13900889230,13900889231,13900889232,13900889233,13900889234,13900889235,13900889236,13900889237,13900889238,13900889239,13900889240,13900889241,13900889242,13900889243,13900889244,13900889245,13900889246,13900889247,13900889248,13900889249,13900889250,13900889251,13900889252,13900889253,13900889254,13900889255,13900889256,13900889257,13900889258,13900889259,13900889260,13900889261,13900889262,13900889263,13900889264,13900889265,13900889266,13900889267,13900889268,13900889269,13900889270,13900889271,13900889272,13900889273,13900889274,13900889275,13900889276,13900889277,13900889278,13900889279,13900889280,13900889281,13900889282,13900889283,13900889284,13900889285,13900889286,13900889287,13900889288,13900889289,13900889290,13900889291,13900889292,13900889293,13900889294,13900889295,13900889296,13900889297,13900889298,13900889299,13900889300,13900889301,13900889302,13900889303,13900889304,13900889305,13900889306,13900889307,13900889308,13900889309,13900889310,13900889311,13900889312,13900889313,13900889314,13900889315,13900889316,13900889317,13900889318,13900889319,13900889320,13900889321,13900889322,13900889323,13900889324,13900889325,13900889326,13900889327,13900889328,13900889329,13900889330,13900889331,13900889332,13900889333,13900889334,13900889335,13900889336,13900889337,13900889338,13900889339,13900889340,13900889341,13900889342,13900889343,13900889344,13900889345,13900889346,13900889347,13900889348,13900889349,13900889350,13900889351,13900889352,13900889353,13900889354,13900889355,13900889356,13900889357,13900889358,13900889359,13900889360,13900889361,13900889362,13900889363,13900889364,13900889365,13900889366,13900889367,13900889368,13900889369,13900889370,13900889371,13900889372,13900889373,13900889374,13900889375,13900889376,13900889377,13900889378,13900889379,13900889380,13900889381,13900889382,13900889383,13900889384,13900889385,13900889386,13900889387,13900889388,13900889389,13900889390,13900889391,13900889392,13900889393,13900889394,13900889395,13900889396,13900889397,13900889398,13900889399,13900889400,13900889401,13900889402,13900889403,13900889404,13900889405,13900889406,13900889407,13900889408,13900889409,13900889410,13900889411,13900889412,13900889413,13900889414,13900889415,13900889416,13900889417,13900889418,13900889419,13900889420,13900889421,13900889422,13900889423,13900889424,13900889425,13900889426,13900889427,13900889428,13900889429,13900889430,13900889431,13900889432,13900889433,13900889434,13900889435,13900889436,13900889437,13900889438,13900889439,13900889440,13900889441,13900889442,13900889443,13900889444,13900889445,13900889446,13900889447,13900889448,13900889449,13900889450,13900889451,13900889452,13900889453,13900889454,13900889455,13900889456,13900889457,13900889458,13900889459,13900889460,13900889461,13900889462,13900889463,13900889464,13900889465,13900889466,13900889467,13900889468,13900889469,13900889470,13900889471,13900889472,13900889473,13900889474,13900889475,13900889476,13900889477,13900889478,13900889479,13900889480,13900889481,13900889482,13900889483,13900889484,13900889485,13900889486,13900889487,13900889488,13900889489,13900889490,13900889491,13900889492,13900889493,13900889494,13900889495,13900889496,13900889497,13900889498,13900889499,13900882499,13900882498,13900882497,13900882496,13900882495,13900882494,13900882493,13900882492,13900882491,13900882490,13900882489,13900882488,13900882487,13900882486,13900882485,13900882484,13900882483,13900882482,13900882481,13900882480,13900882479,13900882478,13900882477,13900882476,13900882475,13900882474,13900882473,13900882472,13900882471,13900882470,13900882469,13900882468,13900882467,13900882466,13900882465,13900882464,13900882463,13900882462,13900882461,13900882460,13900882459,13900882458,13900882457,13900882456,13900882455,13900882454,13900882453,13900882452,13900882451,13900882450,13900882449,13900882448,13900882447,13900882446,13900882445,13900882444,13900882443,13900882442,13900882441,13900882440,13900882439,13900882438,13900882437,13900882436,13900882435,13900882434,13900882433,13900882432,13900882431,13900882430,13900882429,13900882428,13900882427,13900882426,13900882425,13900882424,13900882423,13900882422,13900882421,13900882420,13900882419,13900882418,13900882417,13900882416,13900882415,13900882414,13900882413,13900882412,13900882411,13900882410,13900882409,13900882408,13900882407,13900882406,13900882405,13900882404,13900882403,13900882402,13900882401,13900882400,13900882399,13900882398,13900882397,13900882396,13900882395,13900882394,13900882393,13900882392,13900882391,13900882390,13900882389,13900882388,13900882387,13900882386,13900882385,13900882384,13900882383,13900882382,13900882381,13900882380,13900882379,13900882378,13900882377,13900882376,13900882375,13900882374,13900882373,13900882372,13900882371,13900882370,13900882369,13900882368,13900882367,13900882366,13900882365,13900882364,13900882363,13900882362,13900882361,13900882360,13900882359,13900882358,13900882357,13900882356,13900882355,13900882354,13900882353,13900882352,13900882351,13900882350,13900882349,13900882348,13900882347,13900882346,13900882345,13900882344,13900882343,13900882342,13900882341,13900882340,13900882339,13900882338,13900882337,13900882336,13900882335,13900882334,13900882333,13900882332,13900882331,13900882330,13900882329,13900882328,13900882327,13900882326,13900882325,13900882324,13900882323,13900882322,13900882321,13900882320,13900882319,13900882318,13900882317,13900882316,13900882315,13900882314,13900882313,13900882312,13900882311,13900882310,13900882309,13900882308,13900882307,13900882306,13900882305,13900882304,13900882303,13900882302,13900882301,13900882300,13900882299,13900882298,13900882297,13900882296,13900882295,13900882294,13900882293,13900882292,13900882291,13900882290,13900882289,13900882288,13900882287,13900882286,13900882285,13900882284,13900882283,13900882282,13900882281,13900882280,13900882279,13900882278,13900882277,13900882276,13900882275,13900882274,13900882273,13900882272,13900882271,13900882270,13900882269,13900882268,13900882267,13900882266,13900882265,13900882264,13900882263,13900882262,13900882261,13900882260,13900882259,13900882258,13900882257,13900882256,13900882255,13900882254,13900882253,13900882252,13900882251,13900882250,13900882249,13900882248,13900882247,13900882246,13900882245,13900882244,13900882243,13900882242,13900882241,13900882240,13900882239,13900882238,13900882237,13900882236,13900882235,13900882234,13900882233,13900882232,13900882231,13900882230,13900882229,13900882228,13900882227,13900882226,13900882225,13900882224,13900882223,13900882222,13900882221,13900882220,13900882219,13900882218,13900882217,13900882216,13900882215,13900882214,13900882213,13900882212,13900882211,13900882210,13900882209,13900882208,13900882207,13900882206,13900882205,13900882204,13900882203,13900882202,13900882201,13900882200,13900882199,13900882198,13900882197,13900882196,13900882195,13900882194,13900882193,13900882192,13900882191,13900882190,13900882189,13900882188,13900882187,13900882186,13900882185,13900882184,13900882183,13900882182,13900882181,13900882180,13900882179,13900882178,13900882177,13900882176,13900882175,13900882174,13900882173,13900882172,13900882171,13900882170,13900882169,13900882168,13900882167,13900882166,13900882165,13900882164,13900882163,13900882162,13900882161,13900882160,13900882159,13900882158,13900882157,13900882156,13900882155,13900882154,13900882153,13900882152,13900882151,13900882150,13900882149,13900882148,13900882147,13900882146,13900882145,13900882144,13900882143,13900882142,13900882141,13900882140,13900882139,13900882138,13900882137,13900882136,13900882135,13900882134,13900882133,13900882132,13900882131,13900882130,13900882129,13900882128,13900882127,13900882126,13900882125,13900882124,13900882123,13900882122,13900882121,13900882120,13900882119,13900882118,13900882117,13900882116,13900882115,13900882114,13900882113,13900882112,13900882111,13900882110,13900882109,13900882108,13900882107,13900882106,13900882105,13900882104,13900882103,13900882102,13900882101,13900882100,13900882099,13900882098,13900882097,13900882096,13900882095,13900882094,13900882093,13900882092,13900882091,13900882090,13900882089,13900882088,13900882087,13900882086,13900882085,13900882084,13900882083,13900882082,13900882081,13900882080,13900882079,13900882078,13900882077,13900882076,13900882075,13900882074,13900882073,13900882072,13900882071,13900882070,13900882069,13900882068,13900882067,13900882066,13900882065,13900882064,13900882063,13900882062,13900882061,13900882060,13900882059,13900882058,13900882057,13900882056,13900882055,13900882054,13900882053,13900882052,13900882051,13900882050,13900882049,13900882048,13900882047,13900882046,13900882045,13900882044,13900882043,13900882042,13900882041,13900882040,13900882039,13900882038,13900882037,13900882036,13900882035,13900882034,13900882033,13900882032,13900882031,13900882030,13900882029,13900882028,13900882027,13900882026,13900882025,13900882024,13900882023,13900882022,13900882021,13900882020,13900882019,13900882018,13900882017,13900882016,13900882015,13900882014,13900882013,13900882012,13900882011,13900882010,13900882009,13900882008,13900882007,13900882006,13900882005,13900882004,13900882003,13900882002,13900882001,13900882000,13900881500,13900881501,13900881502,13900881503,13900881504,13900881505,13900881506,13900881507,13900881508,13900881509,13900881510,13900881511,13900881512,13900881513,13900881514,13900881515,13900881516,13900881517,13900881518,13900881519,13900881520,13900881521,13900881522,13900881523,13900881524,13900881525,13900881526,13900881527,13900881528,13900881529,13900881530,13900881531,13900881532,13900881533,13900881534,13900881535,13900881536,13900881537,13900881538,13900881539,13900881540,13900881541,13900881542,13900881543,13900881544,13900881545,13900881546,13900881547,13900881548,13900881549,13900881550,13900881551,13900881552,13900881553,13900881554,13900881555,13900881556,13900881557,13900881558,13900881559,13900881560,13900881561,13900881562,13900881563,13900881564,13900881565,13900881566,13900881567,13900881568,13900881569,13900881570,13900881571,13900881572,13900881573,13900881574,13900881575,13900881576,13900881577,13900881578,13900881579,13900881580,13900881581,13900881582,13900881583,13900881584,13900881585,13900881586,13900881587,13900881588,13900881589,13900881590,13900881591,13900881592,13900881593,13900881594,13900881595,13900881596,13900881597,13900881598,13900881599,13900881600,13900881601,13900881602,13900881603,13900881604,13900881605,13900881606,13900881607,13900881608,13900881609,13900881610,13900881611,13900881612,13900881613,13900881614,13900881615,13900881616,13900881617,13900881618,13900881619,13900881620,13900881621,13900881622,13900881623,13900881624,13900881625,13900881626,13900881627,13900881628,13900881629,13900881630,13900881631,13900881632,13900881633,13900881634,13900881635,13900881636,13900881637,13900881638,13900881639,13900881640,13900881641,13900881642,13900881643,13900881644,13900881645,13900881646,13900881647,13900881648,13900881649,13900881650,13900881651,13900881652,13900881653,13900881654,13900881655,13900881656,13900881657,13900881658,13900881659,13900881660,13900881661,13900881662,13900881663,13900881664,13900881665,13900881666,13900881667,13900881668,13900881669,13900881670,13900881671,13900881672,13900881673,13900881674,13900881675,13900881676,13900881677,13900881678,13900881679,13900881680,13900881681,13900881682,13900881683,13900881684,13900881685,13900881686,13900881687,13900881688,13900881689,13900881690,13900881691,13900881692,13900881693,13900881694,13900881695,13900881696,13900881697,13900881698,13900881699,13900881700,13900881701,13900881702,13900881703,13900881704,13900881705,13900881706,13900881707,13900881708,13900881709,13900881710,13900881711,13900881712,13900881713,13900881714,13900881715,13900881716,13900881717,13900881718,13900881719,13900881720,13900881721,13900881722,13900881723,13900881724,13900881725,13900881726,13900881727,13900881728,13900881729,13900881730,13900881731,13900881732,13900881733,13900881734,13900881735,13900881736,13900881737,13900881738,13900881739,13900881740,13900881741,13900881742,13900881743,13900881744,13900881745,13900881746,13900881747,13900881748,13900881749,13900881750,13900881751,13900881752,13900881753,13900881754,13900881755,13900881756,13900881757,13900881758,13900881759,13900881760,13900881761,13900881762,13900881763,13900881764,13900881765,13900881766,13900881767,13900881768,13900881769,13900881770,13900881771,13900881772,13900881773,13900881774,13900881775,13900881776,13900881777,13900881778,13900881779,13900881780,13900881781,13900881782,13900881783,13900881784,13900881785,13900881786,13900881787,13900881788,13900881789,13900881790,13900881791,13900881792,13900881793,13900881794,13900881795,13900881796,13900881797,13900881798,13900881799,13900881800,13900881801,13900881802,13900881803,13900881804,13900881805,13900881806,13900881807,13900881808,13900881809,13900881810,13900881811,13900881812,13900881813,13900881814,13900881815,13900881816,13900881817,13900881818,13900881819,13900881820,13900881821,13900881822,13900881823,13900881824,13900881825,13900881826,13900881827,13900881828,13900881829,13900881830,13900881831,13900881832,13900881833,13900881834,13900881835,13900881836,13900881837,13900881838,13900881839,13900881840,13900881841,13900881842,13900881843,13900881844,13900881845,13900881846,13900881847,13900881848,13900881849,13900881850,13900881851,13900881852,13900881853,13900881854,13900881855,13900881856,13900881857,13900881858,13900881859,13900881860,13900881861,13900881862,13900881863,13900881864,13900881865,13900881866,13900881867,13900881868,13900881869,13900881870,13900881871,13900881872,13900881873,13900881874,13900881875,13900881876,13900881877,13900881878,13900881879,13900881880,13900881881,13900881882,13900881883,13900881884,13900881885,13900881886,13900881887,13900881888,13900881889,13900881890,13900881891,13900881892,13900881893,13900881894,13900881895,13900881896,13900881897,13900881898,13900881899,13900881900,13900881901,13900881902,13900881903,13900881904,13900881905,13900881906,13900881907,13900881908,13900881909,13900881910,13900881911,13900881912,13900881913,13900881914,13900881915,13900881916,13900881917,13900881918,13900881919,13900881920,13900881921,13900881922,13900881923,13900881924,13900881925,13900881926,13900881927,13900881928,13900881929,13900881930,13900881931,13900881932";
		
		
		names = names.replaceAll(",{1,100}", ",");
		System.out.println(names);
		mobiles = mobiles.replaceAll(",{1,100}", ",");
		String[] mobs = mobiles.split(",");
		String[] nas = names.split(",");
		Map m = new HashMap();
		
		int j = 0;
		
		for (int i = 4800; i < 5200; i ++) {
			String mob = mobs[i];
			long num = Long.parseLong(mob);
			num = num + System.currentTimeMillis() % 1000000;
			mob = num + "";
			try {
				Thread.sleep(System.currentTimeMillis() % 100);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
//			String na = nas[(j ++)%nas.length];
//			while (m.get(na) != null || na.length() < 2 || na.contains("(") || na.contains("\"") || na.contains("'")) {
////				if (j >= nas.length - 1)
////					return;
//				na = nas[(j ++)%nas.length];
//			}
			
			String na = nas[i % nas.length];
			na = mob;
			String sql =  "insert into cms_user_info (moneyleft,mobile,username,passwd,sex,thirdType,status,lastlogintime) values(0.0,'" + mob + "','" + na + "','" + mob + "',1,'mobile',1,1415609680361);";
			System.out.println(sql);
		}
		
		
		System.out.println(names.split(",").length);
		System.out.println(mobiles.split(",").length);
		
	}

}



