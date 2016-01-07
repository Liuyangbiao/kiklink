package com.yebucuo.util;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class TagUtils extends TagSupport {
	private String msg;

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public TagUtils() {
		System.out.println("MyTag构造方法：一个myTag类的对象被构建了....");
	}
	
	
	public String combine(String a, String b) {
		return a + b;
	}
	
	

	public int doStartTag() {
		JspWriter out = this.pageContext.getOut();

		try {
			out.print(msg);
		} catch (IOException e) {
			e.printStackTrace();
		}

		System.out.println("对象正在处理开始标记.....");
		return EVAL_BODY_INCLUDE;
	}

	public int doAfterBody() throws JspException {
		System.out.println("处理标签体（after body）....");
		return SKIP_BODY;
	}

	public int doEndTag() throws JspException {
		System.out.println("对象正在处理结束标记.....");
		return EVAL_PAGE;
	}

	public static String[] regexGroup(String from, String regex, int count) {
		Pattern pattern = Pattern.compile(regex);
		Matcher matcher = pattern.matcher(from);
		String[] ss = new String[count];
		if (matcher.find()) {
			for (int i = 1; i <= count; i++)
				ss[i - 1] = matcher.group(i);
		}

		return ss;

	}

	public static String[] regexFind(String from, String regex) {
		Pattern pattern = Pattern.compile(regex);
		Matcher matcher = pattern.matcher(from);
		List ar = new ArrayList();
		while (matcher.find()) {
			// System.out.println(matcher.group());
			ar.add(matcher.group());
		}

		String[] ss = new String[ar.size()];
		for (int i = 0; i < ar.size(); i++) {
			ss[i] = (String) ar.get(i);
		}
		return ss;
		// return null;
		// return (String[]) ar.toArray();
	}






}
