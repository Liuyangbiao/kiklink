package com.yebucuo.server;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import com.yebucuo.util.SessionContext;

public class SessionListener implements HttpSessionListener{

    private SessionContext context = SessionContext.getInstance();
   
    public void sessionCreated(HttpSessionEvent sessionEvent) {
        context.addSession(sessionEvent.getSession());
    }

   
    public void sessionDestroyed(HttpSessionEvent sessionEvent) {
        HttpSession session = sessionEvent.getSession();
        context.delSession(session);
    }

}