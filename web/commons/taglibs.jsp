<%@ page contentType="text/html;charset=UTF-8" %>
<%@page import="com.yebucuo.common.constant.Constant"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.yebucuo.com" prefix="my" %>

<%//用于实现jsp模板的继承关系,请查看:http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends %>
<%@ taglib uri="http://www.rapid-framework.org.cn/rapid" prefix="rapid" %>
<%

	String path = request.getContextPath();
	String basePath = "";
	if ("80".equals(request.getServerPort())) {
		basePath = request.getScheme() + "://"
				+ request.getServerName() + path;
	} else {
		basePath = request.getScheme() + "://"
				+ request.getServerName() + ":" + request.getServerPort()
				+ path;
	}


	//String ctx = request.getRequestURL().toString().replaceAll(request.getRequestURI(), "") + request.getContextPath();
	
	request.setAttribute("ctx", basePath);
	System.out.println("ctx is:" +basePath);
 	request.setAttribute("url", request.getRequestURL().toString());
	request.setAttribute("productIndexTypes", Constant.indexTypes);
 	request.setAttribute("productCrawlTypes", Constant.crawlTypes);
 	request.setAttribute("productDetailTypes", Constant.productDetailTypes);
 	request.setAttribute("detailIndexTypes", Constant.detailIndexTypes);
 	request.setAttribute("websiteTypes", Constant.websiteTypes);
 	
 	String ua = request.getHeader("USER-AGENT").toUpperCase();
 	boolean issafari = false;
 	boolean isfirefox = false;
 	if (ua.indexOf("SAFARI") >= 0) issafari = true;
 	if (ua.indexOf("FIREFOX") >= 0) isfirefox = true;
 	request.setAttribute("issafari", issafari);
 	request.setAttribute("isfirefox", isfirefox);
 %>

