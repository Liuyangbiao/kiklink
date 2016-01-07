package com.yebucuo.sigleton;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import cn.org.rapid_framework.page.Page;

import com.kailian.glo.model.CmsConfig;
import com.kailian.glo.service.ICmsConfigManager;
import com.kailian.glo.service.ICmsConfigManager;
import com.kailian.glo.vo.query.CmsConfigQuery;
import com.kailian.glo.vo.query.CmsConfigQuery;
import com.yebucuo.spring.SpringContext;


public class ConfigSingleton {
	private static Map configMap = null;
	
	public static Map getConfigMap() {
		if (configMap == null) {
			ICmsConfigManager cmsConfigManager  = (ICmsConfigManager) SpringContext.getBean("cmsConfigManager");
			CmsConfigQuery q = new CmsConfigQuery();
			q.setPageSize(999999999);
			Page page = cmsConfigManager.findPage(q);
			List list = page.getResult();
			Map map = new HashMap();
			for (int i = 0; i < list.size(); i ++) {
				CmsConfig right = (CmsConfig) list.get(i);
				map.put(right.getConfigname(), right);
			}
			configMap = map;
		}
		return configMap;
	}
	
	public static int getIntValue(String name) {
		CmsConfig c = (CmsConfig) ConfigSingleton.getConfigMap().get(name);
		if (c == null)
			return -1;
		return Integer.parseInt(c.getConfigvalue());
	}
	
	public static void putConfig(CmsConfig r) {
		ConfigSingleton.getConfigMap().put(r.getConfigname(), r);
	}
}