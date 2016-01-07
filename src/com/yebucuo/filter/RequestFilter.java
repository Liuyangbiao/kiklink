package com.yebucuo.filter;

import java.io.IOException;   

import com.kailian.glo.model.CmsAdminGroup;
import com.kailian.glo.model.CmsAdminuser;
import com.kailian.glo.model.CmsRightTable;
import com.yebucuo.sigleton.*;
import com.yebucuo.util.DbLogUtil;

import javax.servlet.Filter;   
import javax.servlet.FilterChain;   
import javax.servlet.FilterConfig;   
import javax.servlet.ServletException;   
import javax.servlet.ServletRequest;   
import javax.servlet.ServletResponse;   
import javax.servlet.http.HttpServletRequest;   
import javax.servlet.http.HttpServletResponse;   
import javax.servlet.http.HttpSession;   

import org.apache.cxf.common.util.StringUtils;
import org.apache.log4j.Logger;


public class RequestFilter implements Filter  {

	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse,
			FilterChain filterChain) throws IOException, ServletException {
		Logger log = Logger.getLogger(RequestFilter.class);
		
		String errorPage = "/commons/403.jsp";
		// TODO Auto-generated method stub
		HttpServletRequest request = (HttpServletRequest)servletRequest;//;//如果处理HTTP请求，并且需要访问诸如getHeader或getCookies等在ServletRequest中无法得到的方法，就要把此request对象构造成HttpServletRequest   
		  HttpServletResponse response = (HttpServletResponse)servletResponse;
		  
		  
		  String currentURL = request.getRequestURI();//取得根目录所对应的绝对路径:   
		  String[] ss = currentURL.split("/");
		  String className = ss[ss.length-2] + "Action";
		  String methodName = ss[ss.length-1].substring(0, ss[ss.length-1].indexOf(".do"));
		  log.warn(className + "  aaaaaaaaaaaaaaaaa  " + methodName + "    " + RightSingleton.getRightMap().keySet().size());
		  
		  
		  CmsRightTable right = (CmsRightTable) RightSingleton.getRightMap().get(className + "-" + methodName);
		  if (right != null) {
			  log.warn("right level:" + right.getVisitRightLevel());
		  }
		  
		  
		  if (right == null ) {
			  log.warn("right is null");
			  log.warn("size111:" + RightSingleton.getRightMap().keySet().size());
			  filterChain.doFilter(request, response);//.调用FilterChain对象的doFilter方法。Filter接口的doFilter方法取一个FilterChain对象作为它的一个参数。在调用此对象的doFilter方法时，激活下一个相关的过滤器。如果没有另一个过滤器与servlet或JSP页面关联，则servlet或JSP页面被激活。   
			  
			  DbLogUtil.logRequstToDb(request, currentURL, className, methodName);
		  }
		  else if (  right.getVisitRightLevel() > 0) {
			  log.warn("right:" + right.getId());
			  CmsAdminuser admin = (CmsAdminuser) request.getSession().getAttribute("adminuser");
			  if (admin == null) {
				  request.getRequestDispatcher(errorPage).forward(request, response);
			  }
			  else {
				  log.warn("admin:" + admin.getUsername() + "   " + admin.getUserGroupId());
				  CmsAdminGroup g = (CmsAdminGroup) RightSingleton.getGroupMap().get(new Long(admin.getUserGroupId()));
				  if (g != null	) {
					  log.warn("group addtion:" + g.getAddition());
				  }
				  if (g == null || StringUtils.isEmpty(g.getAddition()) || (g.getAddition().indexOf("," + right.getId() + ",") < 0 && g.getAddition().startsWith(right.getId() + ",") == false)) {
					 log.warn("xxxxyyyyzzzz:" + "," + right.getId() + ",");
					  request.getRequestDispatcher(errorPage).forward(request, response);
					  //return ;
				  }
				  
				  else {
					  filterChain.doFilter(request, response);
					  DbLogUtil.logRequstToDb(request, currentURL, className, methodName);
				  }
			  }
			  //没有权限
			  //request.getRequestDispatcher(errorPage).forward(request, response);
		  }
		  else
		  {
			  //加入filter链继续向下执行   
			  filterChain.doFilter(request, response);//.调用FilterChain对象的doFilter方法。Filter接口的doFilter方法取一个FilterChain对象作为它的一个参数。在调用此对象的doFilter方法时，激活下一个相关的过滤器。如果没有另一个过滤器与servlet或JSP页面关联，则servlet或JSP页面被激活。   
			  
			  DbLogUtil.logRequstToDb(request, currentURL, className, methodName);
		  }
		  Logger.getLogger(this.getClass()).info(request.getRemoteAddr() + " " + currentURL);
	}

	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}
	
	
	
}