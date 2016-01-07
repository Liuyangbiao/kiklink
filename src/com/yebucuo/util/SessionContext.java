package com.yebucuo.util;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;

import com.kailian.glo.model.CmsUserInfo;
import com.kailian.glo.service.ICmsUserInfoManager;
import com.kailian.glo.vo.query.CmsUserInfoQuery;
import com.yebucuo.spring.SpringContext;

public class SessionContext {

    private static SessionContext instance;
    private Map<String, HttpSession> sessionMap;
    
    private SessionContext(){
        sessionMap = new HashMap<String, HttpSession>();
    }
    
    public static SessionContext getInstance(){
        if(instance == null){
            instance = new SessionContext();
        }
        return instance;
    }
    
    public synchronized void addSession(HttpSession session){
        if(session != null){
            sessionMap.put(session.getId(), session);
        }
    }
    
    public synchronized void delSession(HttpSession session){
        if(session != null){
            sessionMap.remove(session.getId());
        }
    }
    
    public synchronized HttpSession getSession(String sessionId){
        if(sessionId == null)
            return null;
        return sessionMap.get(sessionId);
    }
    
    
    public synchronized HttpSession getSessionByRequest(HttpServletRequest request){
    	String sessionId = request.getParameter("sessionId");
    	String logintoken = request.getParameter("logintoken");
    	//Logger log = Logger.getLogger(getClass());
    	
    	if (sessionId == null) {
    		sessionMap.put(request.getSession().getId(), request.getSession());
    		sessionId = request.getSession().getId();
    	}
    	
    	if (sessionMap.get(sessionId) == null) {
    		sessionMap.put(request.getSession().getId(), request.getSession());
    		sessionId = request.getSession().getId();
    	}
    	
    	
    	HttpSession session = sessionMap.get(sessionId);
    	CmsUserInfo user = (CmsUserInfo) session.getAttribute("user");
    	if (StringUtils.isNotEmpty(logintoken) && user == null) {
    		
    			ICmsUserInfoManager cmsUserInfoManager  = (ICmsUserInfoManager) SpringContext.getBean("cmsUserInfoManager");
    			CmsUserInfoQuery q = new CmsUserInfoQuery();
    			q.setAddition(logintoken);
    			List list = cmsUserInfoManager.queryTop(q);
    			if (list.isEmpty() == false) {
    				user = (CmsUserInfo) list.get(0);
    				session.setAttribute("user", user);
    			}
    	}
    	
    	return session;
//    	Map m = new HashMap();
//    	m.put("session", sessionMap.get(sessionId).getAttribute("user"));
//    	log.info("xxxxxxxxsssxxxxxxxxxxxxxxxxxxxxxxxxxx session:" + Utils.toJson(m));
    	
    	//return sessionMap.get(sessionId);
    }
    
    

    
}