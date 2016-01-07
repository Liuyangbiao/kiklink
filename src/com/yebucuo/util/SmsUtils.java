package com.yebucuo.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;

import org.apache.axis.utils.StringUtils;
import org.apache.log4j.Logger;

import com.yebucuo.common.util.EmailUtils;
import com.yebucuo.common.util.WwwUtils;
import com.yebucuo.util.mail.MailUtil;

public class SmsUtils {
	public static final String username = "kiklink";
	public static final String pwd = "1q2w3e4r";

	public static String sendSms(String mobs, String content)
			 {
		
		 if (StringUtils.isEmpty(content))
			 return null;
		
		Logger log = Logger.getLogger(SmsUtils.class);
		log.info("lllllllxxxxxlll22:" + content.length() + "   :" + mobs + "   " + content);
		
		Integer x_ac = 10;// 发送信息
		HttpURLConnection httpconn = null;
		String result = "-20";
		String memo = content.length() < 70 ? content.trim() : content.trim()
				.substring(0, 70);
		StringBuilder sb = new StringBuilder();
		sb.append("http://service.winic.org/sys_port/gateway/?");
		sb.append("id=").append(username);
		sb.append("&pwd=").append(pwd);
		sb.append("&to=").append(mobs);
		try {
			sb.append("&content=").append(URLEncoder.encode(content, "gb2312"));
			log.info(sb.toString());
			System.out.println(sb.toString());
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
			return "-1";
		} // 注意乱码的话换成gb2312编码
		
		try {
			URL url = new URL(sb.toString());
			httpconn = (HttpURLConnection) url.openConnection();
			BufferedReader rd = new BufferedReader(new InputStreamReader(
					httpconn.getInputStream()));
			result = rd.readLine();
			rd.close();
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if (httpconn != null) {
				httpconn.disconnect();
				httpconn = null;
			}

		}
		return result;
	}
	
	
	public static void sendValidate(HttpServletRequest request, String mobs) {
		long tm = System.currentTimeMillis() % 1000000;
		String s = tm + "";
		while (s.length() < 6)
			s = "0" + s;
		
		String s1 = "验证码为" + s + "，请妥善保管";
		s1 = "您的证码为" + s + "，请尽快完成验证。开练网不会以任何形式索要验证码。（30分钟内有效）";
		
		if (mobs.indexOf("@") < 0) {
		
			request.getSession().setAttribute("validnum" + mobs, s);
			SmsUtils.sendSms(mobs, s1);
		}
		else {
			//发邮件
			try {
				MailUtil.sendEmail(mobs, "开练网验证码", s1);
				request.getSession().setAttribute("emailvalidnum" + mobs, s);
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	public static void main(String args[]) {
//		String cont1 = "尊敬的客户您好,您之前预约的开练网男神女神体验课预约码";
//		//SmsUtils.sendSms("13810278199", cont1);
//		String url = "http://106.ihuyi.cn/webservice/sms.php?method=Submit&account=cf_ysyd&password=LGJDHH&mobile=13810278199&content=您的验证码是：250250。请不要把验证码泄露给其他人。";
//		String re = WwwUtils.disposeURL(url);
//		System.out.println();
		
		String re = SmsUtils.sendSms("13810278199", "热活派测试短信!");
		System.out.println(re);
	}

}