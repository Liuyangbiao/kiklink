package com.yebucuo.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.lang.StringUtils;

import sun.misc.BASE64Decoder;

//import sun.misc.BASE64Decoder;
//import sun.misc.BASE64Encoder;

public class Base64 {

	private static MessageDigest digest = null;
    private final static String CODE_STR = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";  
    private final static int ORGINAL_LEN = 8;  
     private final static int NEW_LEN = 6;  

	/** MD5加密* */
	public synchronized static final byte[] toMd5(String data) {
		if (digest == null) {
			try {
				digest = MessageDigest.getInstance("MD5");
			} catch (NoSuchAlgorithmException nsae) {
				System.err.println("Failed to load the MD5 MessageDigest. ");
				nsae.printStackTrace();
			}
		}
		if (StringUtils.isBlank(data)) {
			return null;
		}
		digest.update(data.getBytes());
		return digest.digest();

	}

	public synchronized static final String toHex(byte hash[]) {
		StringBuffer buf = new StringBuffer(hash.length * 2);
		int i;
		for (i = 0; i < hash.length; i++) {
			if (((int) hash[i] & 0xff) < 0x10) {
				buf.append("0");
			}
			buf.append(Long.toString((int) hash[i] & 0xff, 16));
		}
		return buf.toString();

	}

	/** base64编码* */
	public static String encodeBase64(byte[] data) {
//		if (data == null) {
//			return null;
//		}
//		BASE64Encoder base64Encoder = new BASE64Encoder();
//		return base64Encoder.encode(data);
		return null;
	}

	/**
	 * <p>
	 * 按正则表达式得到所需要的内容
	 * </p>
	 * 
	 * @param content
	 * @param group
	 * @param pattern
	 * @return
	 */
	public static String isPatternContent(String content, int group,
			String pattern) {

		Pattern p = Pattern.compile(pattern);
		Matcher m = p.matcher(content);
		String str = "";
		if (m.find()) {
			str = m.group(group);
		}
		return str;
	}

	public static boolean isPattern(String content, int group, String pattern) {

		Pattern p = Pattern.compile(pattern);
		Matcher m = p.matcher(content);
		String str = "";
		if (m.find()) {
			return true;
		}
		return false;
	}

	public static void main(String[] args) {
		// System.out.println(StringUtil.isPattern("11;", 1, "(\\;*\\d*\\;+)"));
		// System.out.println("===="+encodeBase64("65755f227d778e2487e42dc8924c5b04")+"=="+encodeBase64("65755f227d778e2487e42dc8924c5b04"));
		String a = "aHR0cCUzQS8vMTI3LjAuMC4xJTNBODA4MC9jbXMvZG9jLmpzcA==";
		System.out.println(getFromBASE64(a));
	}
	
	  // 用SUN自带的进行BASE 64编码  
    public static String getBASE64(String s) {  
//     if (s == null)  
//         return null;  
//       return (new sun.misc.BASE64Encoder()).encode(s.getBytes());  
    	return null;
   }  

   // 将 BASE64 编码的字符串 s 进行解码  
    public static String getFromBASE64(String s) {  
    	
       if (s == null)  
          return null;  
       BASE64Decoder decoder = new BASE64Decoder();  
       try {  
         byte[] b = decoder.decodeBuffer(s);  
          String re = new String(b);  
          return re.replaceAll("%3A", ":");
      } catch (Exception e) {  
         return null;  
       }  
    }  
    
    
    public static String encodeBase64(String str){  
        String binStr = getBinStr(str);  
         
        int oldByteLen = binStr.length() / ORGINAL_LEN;     //原始字节数，数字字母占1个，中文占2个  
       int newByteLen = oldByteLen * 4 / 3;    //新的字节数  
          
       String appendStr = "";                  //最后面该不该加“=”  
          
        switch(oldByteLen % 3){  
        case 0 : break;  
        case 1 : newByteLen = newByteLen + 1; appendStr = "=="; break;  
        case 2 : newByteLen = newByteLen + 1; appendStr = "="; break;  
        }  
         
        StringBuilder base64Str = new StringBuilder("");  
        for(int k = 0; k < newByteLen; k++){  
            String bin = "";  
            // 二进制字符串按照6个一组分隔  
           if((k+1) * NEW_LEN > binStr.length()){  
               bin = binStr.substring(k * NEW_LEN, binStr.length());  
            }else{  
                bin = binStr.substring(k * NEW_LEN, (k+1) * NEW_LEN);     
            }  
              
           int intval = Integer.parseInt(bin, 2);  //二进制转成十进制  
            if(bin.length() < NEW_LEN){  
               /** 
                 * 不足6位时右侧补0 
                * 0101  -- > 010100 (补2个0) 
                 * 10    -- > 100000 (补4个0) 
                 */  
               intval <<= NEW_LEN - bin.length();  
           }  
            //从码表里面查找当前字符，返回字符在码表中的位置  
            base64Str = base64Str.append(CODE_STR.charAt(intval));  
        }  
        base64Str = base64Str.append(appendStr);  
        return base64Str.toString();  
    } 
    
    public static String getBinStr(String str){  
        // 采用默认语言环境的 character set。  
         byte[] b = str.getBytes();  
         StringBuilder sb = new StringBuilder("");  
         for(byte c : b){  
             String tmpStr = Integer.toBinaryString(c);  
//             System.out.println(tmpStr);  
            if(tmpStr.length() > ORGINAL_LEN){  
                 //截取， 如： "1111111111111111111111111010101" to "11010101"  
                sb.append(tmpStr.substring(tmpStr.length() - ORGINAL_LEN, tmpStr.length()));  
             }else if(tmpStr.length() < ORGINAL_LEN){  
                 //前补0， 如： "110011" to "00110011"  
                int i = 0;  
                while(tmpStr.length() + i < ORGINAL_LEN){  
                    i ++;  
                   sb.append("0");  
               }  
               sb.append(tmpStr);  
           }else{  
                sb.append(tmpStr);  
            }  
         }  
         return sb.toString();  
     }  
      
}
