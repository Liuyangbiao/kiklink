package com.yebucuo.sigleton;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import cn.org.rapid_framework.page.Page;

import com.kailian.glo.model.CmsInputTable;
import com.kailian.glo.service.ICmsInputTableManager;
import com.kailian.glo.vo.query.CmsInputTableQuery;
import com.yebucuo.spring.SpringContext;


public class InputSingleton {
	private static Map InputMap = null;
	
	public static Map getInputMap() {
		if (InputMap == null) {
			ICmsInputTableManager cmsInputTableManager  = (ICmsInputTableManager) SpringContext.getBean("cmsInputTableManager");
			CmsInputTableQuery q = new CmsInputTableQuery();
			q.setPageSize(999999999);
			Page page = cmsInputTableManager.findPage(q);
			List list = page.getResult();
			Map map = new HashMap();
			for (int i = 0; i < list.size(); i ++) {
				CmsInputTable Input = (CmsInputTable) list.get(i);
				map.put(Input.getClassName() + "-" + Input.getInputName(), Input);
			}
			InputMap = map;
		}
		return InputMap;
	}
	
	
	public static void putInput(CmsInputTable input) {
		InputSingleton.getInputMap().put(input.getClassName() + "-" + input.getInputName(), input);
	}
}