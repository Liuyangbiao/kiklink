package com.yebucuo.sigleton;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import cn.org.rapid_framework.page.Page;

import com.kailian.glo.model.CmsAdminGroup;
import com.kailian.glo.model.CmsRightTable;
import com.kailian.glo.service.ICmsAdminGroupManager;
import com.kailian.glo.service.ICmsRightTableManager;
import com.kailian.glo.vo.query.CmsAdminGroupQuery;
import com.kailian.glo.vo.query.CmsRightTableQuery;
import com.yebucuo.spring.SpringContext;


public class RightSingleton {
	private static Map rightMap = null;
	private static Map groupMap = null;
	public static List rightList = null;
	public static List classNames = null;
	
	public static Map getRightMap() {
		if (rightMap == null) {
			ICmsRightTableManager cmsRightTableManager  = (ICmsRightTableManager) SpringContext.getBean("cmsRightTableManager");
			CmsRightTableQuery q = new CmsRightTableQuery();
			q.setPageSize(999999999);
			Page page = cmsRightTableManager.findPage(q);
			List list = page.getResult();
			Map map = new HashMap();
			for (int i = 0; i < list.size(); i ++) {
				CmsRightTable right = (CmsRightTable) list.get(i);
				map.put(right.getClassName() + "-" + right.getMethodName(), right);
				map.put(right.getId(), right);
			}
			rightMap = map;
		}
		return rightMap;
	}
	
	
	public static Map getGroupMap() {
		if (groupMap == null) {
			ICmsAdminGroupManager cmsAdminGroupManager  = (ICmsAdminGroupManager) SpringContext.getBean("cmsAdminGroupManager");
			CmsAdminGroupQuery q = new CmsAdminGroupQuery();
			q.setPageSize(999999999);
			Page page = cmsAdminGroupManager.findPage(q);
			List list = page.getResult();
			Map map = new HashMap();
			for (int i = 0; i < list.size(); i ++) {
				CmsAdminGroup right = (CmsAdminGroup) list.get(i);
				map.put(right.getId(), right);
				map.put(right.getId(), right);
			}
			groupMap = map;
		}
		return groupMap;
	}
	
	public static void putGroup(CmsAdminGroup g) {
		RightSingleton.getGroupMap().put(g.getId(), g);
	}
	
	public static void putRight(CmsRightTable r) {
		RightSingleton.getRightMap().put(r.getClassName() + "-" + r.getMethodName(), r);
		RightSingleton.getRightMap().put(r.getId() , r);
	}
}