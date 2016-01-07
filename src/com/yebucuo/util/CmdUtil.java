package com.yebucuo.util;

 

import java.io.InputStreamReader;

import java.io.LineNumberReader;

 

/**
07
 * java在linux环境下执行linux命令，然后返回命令返回值。
08
 * @author lee
09
 */
public class CmdUtil {
    public static Object exec(String cmd) {
        try {
            String[] cmdA = { "/bin/sh", "-c", cmd };
            Process process = Runtime.getRuntime().exec(cmdA);
            LineNumberReader br = new LineNumberReader(new InputStreamReader(
                    process.getInputStream()));
            StringBuffer sb = new StringBuffer();
            String line;
            while ((line = br.readLine()) != null) {
                System.out.println(line);
                sb.append(line).append("\n");
            }
            return sb.toString();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    
    public static Object sysd(String cmd) {
        try {
            String[] cmdA = {  "java", "-version" };
            Process process = Runtime.getRuntime().exec(cmdA);
            LineNumberReader br = new LineNumberReader(new InputStreamReader(
                    process.getInputStream()));
            StringBuffer sb = new StringBuffer();
            String line;
            while ((line = br.readLine()) != null) {
                System.out.println(line);
                sb.append(line).append("\n");
            }
            return sb.toString();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
 
    public static void main(String[] args) {
        // TODO Auto-generated method stub
        String pwdString = exec("df").toString();
        //String netsString = exec("netstat -nat|grep -i \"80\"|wc -l").toString();
         
        System.out.println("==========获得值=============");
        System.out.println(pwdString);
        //System.out.println(netsString);
    }
 
}
