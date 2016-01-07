package com.yebucuo.util;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.kailian.glo.model.CmsCommonPoints;
import com.kailian.glo.model.CmsUserInfo;
import com.kailian.glo.service.ICmsCommonPointsManager;
import com.kailian.glo.service.ICmsStaticsFlowManager;
import com.yebucuo.spring.SpringContext;


public class PointUtils {
	
	public static final String REASON_LOGIN = "LOGIN";
	public static final String REASON_BUYPRODUCT = "BUYPRODUCT";
	
	public static final String REASON_REGIST = "REGIST";
	public static final String REASON_VERIFYMOBILEEMAIL = "VERIFYMOBILEEMAIL";
	
	public static final String REASON_SAVESHOP = "SAVESHOP";
	public static final String REASON_SAVEPRODUCT = "SAVEPRODUCT";
	public static final String REASON_SENDMESSAGE = "SENDMESSAGE";
	
	public static final Map reasons = new HashMap();
	
	public static void initMap() {
		reasons.put(REASON_LOGIN, "登录成功");
		reasons.put(REASON_LOGIN + "_", new Long(10));
		reasons.put(REASON_BUYPRODUCT, "购买课程");
		reasons.put(REASON_BUYPRODUCT + "_", new Long(20));
		
		reasons.put(REASON_REGIST, "注册成功");
		reasons.put(REASON_REGIST + "_", new Long(100));
		
		reasons.put(REASON_VERIFYMOBILEEMAIL, "验证邮箱以及电话");
		reasons.put(REASON_VERIFYMOBILEEMAIL + "_", new Long(30));
		
		reasons.put(REASON_SAVESHOP, "店铺收藏");
		reasons.put(REASON_SAVESHOP + "_", new Long(5));
		
		reasons.put(REASON_SAVEPRODUCT, "课程收藏");
		reasons.put(REASON_SAVEPRODUCT + "_", new Long(10));
		
		reasons.put(REASON_SENDMESSAGE, "发送消息");
		reasons.put(REASON_SENDMESSAGE + "_", new Long(1));
		

	}
	
	public static void setpoint(HttpServletRequest request,  String reason) {
		if (PointUtils.reasons.isEmpty())
		{
			PointUtils.initMap();
		}
		
		CmsUserInfo user = (CmsUserInfo) request.getSession().getAttribute("user");
		if (user == null)
			return ;
		
		ICmsCommonPointsManager cmsCommonPointsManager  = (ICmsCommonPointsManager) SpringContext.getBean("cmsCommonPointsManager");
		CmsCommonPoints p = new CmsCommonPoints();
		p.setUserid(user.getId());
		p.setUsername(user.getUsername());
		p.setUserphoto(user.getPhoto());
		
		p.setPoint((Long)PointUtils.reasons.get(reason + "_"));
		p.setReason((String)PointUtils.reasons.get(reason));
	
		p.setCreatetimelong(System.currentTimeMillis());
		
		cmsCommonPointsManager.save(p);
	}
}








