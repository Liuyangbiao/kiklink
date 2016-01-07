package com.yebucuo.servlet;

import java.io.*;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.*;
import javax.servlet.http.*;

import org.apache.commons.lang.StringUtils;

import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.service.ICmsStaticsFlowManager;
import com.yebucuo.spring.SpringContext;
import com.yebucuo.util.Base64;
import com.yebucuo.util.Utils;

public class StaticsServlet extends HttpServlet {
	public StaticsServlet() {
	}

	public void doGet(HttpServletRequest Req, HttpServletResponse Res)
			throws ServletException, IOException {
		
		ICmsStaticsFlowManager cmsStaticsFlowManager  = (ICmsStaticsFlowManager) SpringContext.getBean("cmsStaticsFlowManager");
		CmsStaticsFlow flow = new CmsStaticsFlow();
		
		flow.setLongSession(Utils.getParam(Req, "longSession"));
		flow.setVisitSession(Utils.getParam(Req, "visitSession"));
		
		flow.setOs(Utils.getParam(Req, "os"));
		flow.setBrowser(Utils.getParam(Req, "browser"));
		flow.setFlashVersion(Utils.getParam(Req, "flashVersion"));
		flow.setCookieSupport(Utils.getIntParam(Req, "cookieSupport"));
		
		flow.setIpAddress(Req.getRemoteAddr());
		flow.setIpArea("暂未获取");
		
		flow.setVisitType(Utils.getIntParam(Req, "visitType"));
		flow.setVisitTimeLong(System.currentTimeMillis());
		flow.setVisitTime(new Date().toGMTString());
		
		
		String re = Utils.getParam(Req, "url");
		if (re != null) {
			re = Base64.getFromBASE64(re);
		}
		flow.setUrl(re);
		
		String referer = Utils.getParam(Req, "referer");
		if (referer != null)
			referer = Base64.getFromBASE64(referer);
		flow.setReferer(referer);
		
		
		flow.setScreenWidth(Utils.getIntParam(Req, "screenWidth"));
		flow.setScreenHeight(Utils.getIntParam(Req, "screenHeight"));
		flow.setScreenColor(Utils.getParam(Req, "screenColor"));
		
		Calendar c = Calendar.getInstance();
		flow.setVisitYear(c.get(Calendar.YEAR));
		flow.setVisitMonth(c.get(Calendar.MONTH));
		flow.setVisitDate(c.get(Calendar.DATE));
		flow.setVisitHour(c.get(Calendar.HOUR_OF_DAY));
		flow.setVisitMinute(c.get(Calendar.MINUTE));
		flow.setVisitDay(c.get(Calendar.DAY_OF_WEEK));
		flow.setCreatetimelong(System.currentTimeMillis());
		
		flow.setVisitMonth(flow.getVisitYear() * 100 + flow.getVisitMonth()+1);
		flow.setVisitDate(flow.getVisitMonth() * 100 + flow.getVisitDate());
		
		flow.setAddition(Utils.getParam(Req, "addition"));
		
		
		cmsStaticsFlowManager.save(flow);
		
		
		//List<CmsStaticsFlow> list = cmsStaticsFlowManager.queryTop(10000, "id");
		
		Res.setContentType("text/html");
		PrintWriter out = Res.getWriter();
		out.println("ok");
//		for (CmsStaticsFlow f:list) {
//			out.print(f.getId() + "  " + f.getIpAddress());
//		}
		out.close();
	}
}