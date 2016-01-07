package com.yebucuo.servlet;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.service.ICmsIpdataManager;
import com.yebucuo.common.util.WwwUtils;
import com.yebucuo.spring.SpringContext;
import com.yebucuo.util.SessionContext;
import com.yebucuo.util.Utils;

public class IpServlet extends HttpServlet {
	public IpServlet() {
	}

	public void doGet(HttpServletRequest Req, HttpServletResponse Res)
			throws ServletException, IOException {
		
//		ICmsIpdataManager cmsIpdataManager  = (ICmsIpdataManager) SpringContext.getBean("cmsIpdataManager");
//
//		String re = WwwUtils.disposeURL("http://localhost:8080/cms/ipaddr.txt");
//		//String[] ss = re.split("\r\n");
//		
//		
//		Res.setContentType("text/html");
//		PrintWriter out = Res.getWriter();
//		out.println("ok " + "");
//		out.close();
		
		
		SessionContext sc = SessionContext.getInstance();
		HttpSession s = sc.getSessionByRequest(Req);
		int i = 0;
		String re = "";
		while (true) {
			String k = (String) s.getAttribute(i + "");
			if (k == null) {
				s.setAttribute(i + "", i * 2 + "");
				break;
			}
			else {
				re = re + i + "=" + k + ";";
				
			}
			
			i ++;
		}
		
		Res.setContentType("text/html");
		PrintWriter out = Res.getWriter();
		out.println("sessionid:" + s.getId() + ";" + re);
		out.close();
	}
	
	
	
}