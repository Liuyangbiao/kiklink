package com.yebucuo.util;

import javax.servlet.http.HttpServletRequest;

import com.kailian.glo.model.CmsAdminuser;
import com.kailian.glo.model.CmsInputTable;
import com.kailian.glo.model.CmsRequestlog;
import com.kailian.glo.model.CmsRightTable;
import com.kailian.glo.service.ICmsRequestlogManager;
import com.kailian.glo.service.ICmsRightTableManager;
import com.yebucuo.sigleton.InputSingleton;
import com.yebucuo.sigleton.RightSingleton;
import com.yebucuo.spring.SpringContext;

public class DbLogUtil {
	
	public static void logRequstToDb(HttpServletRequest request, String url, String className, String methodName) {
		CmsAdminuser user = null;
		//if (request.getSession() != null)
		//	user = (CmsAdminuser) request.getSession().getAttribute("adminuser");
		
		
		ICmsRequestlogManager cmsRequestlogManager = (ICmsRequestlogManager) SpringContext.getBean("cmsRequestlogManager");
		CmsRequestlog log = new CmsRequestlog();
		log.setRequesturl(request.getLocalAddr() + ":" + request.getLocalPort() +  url);
		log.setClassName(className);
		log.setMethodName(methodName);
		log.setIpaddr(request.getRemoteAddr());
		log.setCreatetimelong(System.currentTimeMillis());
		if (user != null) {
			log.setUserid(user.getId());
			log.setUsername(user.getUsername());
		}
		
		String rn = "";
		CmsInputTable cit = (CmsInputTable) InputSingleton.getInputMap().get(log.getClassName().replaceAll("Action", "") + "-table_name");
		if (cit != null)
			rn += cit.getInputCnName();
		CmsRightTable crt = (CmsRightTable) RightSingleton.getRightMap().get(log.getClassName() + "-" + log.getMethodName());
		if (crt != null)
			rn += " " + crt.getMethodComment();
		log.setRequestname(rn);
		
		cmsRequestlogManager.save(log);
	}
	
}