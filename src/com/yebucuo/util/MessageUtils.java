package com.yebucuo.util;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.kailian.glo.model.CmsCommonMessage;
import com.kailian.glo.model.CmsCommonPoints;
import com.kailian.glo.model.CmsUserInfo;
import com.kailian.glo.service.ICmsCommonMessageManager;
import com.kailian.glo.service.ICmsCommonPointsManager;
import com.kailian.glo.service.ICmsStaticsFlowManager;
import com.kailian.glo.service.ICmsUserInfoManager;
import com.yebucuo.spring.SpringContext;


public class MessageUtils {
	
	public static final String REASON_LOGIN = "LOGIN";
	public static final String REASON_BUYPRODUCT = "BUYPRODUCT";
	
	public static final Map reasons = new HashMap();
	
	public static void initMap() {
		reasons.put(REASON_LOGIN, "登录成功");
		reasons.put(REASON_LOGIN + "_", new Long(10));
		reasons.put(REASON_BUYPRODUCT, "购买课程");
		reasons.put(REASON_BUYPRODUCT + "_", new Long(20));
	}
	
	public static void sendSystemMessage(long userid, String content) {

		ICmsCommonMessageManager cmsCommonMessageManager  = (ICmsCommonMessageManager) SpringContext.getBean("cmsCommonMessageManager");
		ICmsUserInfoManager cmsUserInfoManager  = (ICmsUserInfoManager) SpringContext.getBean("cmsUserInfoManager");

		CmsUserInfo user = cmsUserInfoManager.getById(userid);
		if (user == null)
			return;
		
		
		CmsCommonMessage m = new CmsCommonMessage();
		m.setFromuserid(new Long(0));
		m.setFromusername("系统管理员");
		m.setTouserid(userid);
		m.setTousername(user.getUsername());
		m.setTouserphoto(user.getPhoto());
		m.setContent(content);
		m.setMessagetype(Utils.TYPE_FROM_SYSTEM);
		m.setStatus(1);
		m.setCreatetimelong(System.currentTimeMillis());
		
		cmsCommonMessageManager.save(m);
	}
}








