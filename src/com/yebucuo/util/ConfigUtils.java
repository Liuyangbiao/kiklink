package com.yebucuo.util;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;

import com.kailian.glo.model.CmsConfig;
import com.kailian.glo.model.CmsInputTable;
import com.yebucuo.common.util.Json;
import com.yebucuo.sigleton.ConfigSingleton;
import com.yebucuo.sigleton.InputSingleton;
import com.yebucuo.sigleton.RightSingleton;

/**
 * 用于页面jstl时间格式化
 * 
 * @author jiangnan
 * 
 */
public class ConfigUtils extends TagSupport {
	
	public static String getConfig(String name, String def) {
		CmsConfig c = (CmsConfig) ConfigSingleton.getConfigMap().get(name);
		if (c != null)
			return c.getConfigvalue();
		return def;
	}
	
	public static int getIntConfig(String name, int def) {
		String value = ConfigUtils.getConfig(name, def+"");
		return Integer.parseInt(value);
	}
}

