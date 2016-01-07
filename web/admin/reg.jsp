<%@ page contentType="text/html;charset=UTF-8" %>
<%@page import="com.yebucuo.common.constant.Constant"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.yebucuo.com" prefix="my" %>

<%//用于实现jsp模板的继承关系,请查看:http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends %>
<%@ taglib uri="http://www.rapid-framework.org.cn/rapid" prefix="rapid" %>
<%
	
	String ctx = request.getRequestURL().toString().replaceAll(request.getRequestURI(), "") + request.getContextPath();
	request.setAttribute("ctx", ctx);
 	request.setAttribute("url", request.getRequestURL().toString());
	request.setAttribute("productIndexTypes", Constant.indexTypes);
 	request.setAttribute("productCrawlTypes", Constant.crawlTypes);
 	request.setAttribute("productDetailTypes", Constant.productDetailTypes);
 	request.setAttribute("detailIndexTypes", Constant.detailIndexTypes);
 	request.setAttribute("websiteTypes", Constant.websiteTypes);
 %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>客户端管理后台</title>
<!--                       CSS                       -->
<!-- Reset Stylesheet -->
<link rel="stylesheet" href="${ctx }/admin/resources/css/reset.css" type="text/css" media="screen" />
<!-- Main Stylesheet -->
<link rel="stylesheet" href="${ctx }/admin/resources/css/style.css" type="text/css" media="screen" />
<!-- Invalid Stylesheet. This makes stuff look pretty. Remove it if you want the CSS completely valid -->
<link rel="stylesheet" href="${ctx }/admin/resources/css/invalid.css" type="text/css" media="screen" />
<!--                       Javascripts                       -->
<!-- jQuery -->
<script type="text/javascript" src="${ctx }/scripts/jquery-1.4.2.min.js"></script>
<!-- jQuery Configuration -->
<script type="text/javascript" src="${ctx }/admin/resources/scripts/simpla.jquery.configuration.js"></script>
<!-- Facebox jQuery Plugin -->
<script type="text/javascript" src="${ctx }/admin/resources/scripts/facebox.js"></script>
<!-- jQuery WYSIWYG Plugin -->
<script type="text/javascript" src="${ctx }/admin/resources/scripts/jquery.wysiwyg.js"></script>
</head>
<body id="login">
<div id="login-wrapper" class="png_bg">
  <div id="login-top">
    <h1>客户端管理后台</h1>
    <!-- Logo (221px width) -->
    <a href=""><img id="logo" src="${ctx }/admin/resources/images/thelogo.png" alt="Simpla Admin logo" /></a> </div>
  <!-- End #logn-top -->
  <div style="width:100%;text-align:center;">
  <div id="login-content" style="text-align:center;">
    <form action="${ctx}/glo/ShUser/save.do"  method="post">
      <div class="notification information png_bg">
        <div> 请输入用户名/密码 </div>
      </div>
      <p>
        <label>用户名</label>
        <input class="text-input" id="loginname" name="loginname" type="text" />
      </p>
      <div class="clear"></div>
      <p>
        <label>密码</label>
        <input class="text-input" id="passwd" name="passwd" type="password" />
      </p>
      <div class="clear"></div>
      <p id="remember-password">

      <div class="clear"></div>
      <p>
      <table>
      	<tr>
      		<td width="100px" align="right">
      			<input class="button" type="button" value="登录" onclick="window.location.href='/shelf/admin/login.jsp';" />
      		</td>
      		
      		<td width="100px" align="right">
      			<input class="button" type="submit" value="注册" />
      		</td>
      	</tr>
      </table>
        
        
        
      </p>
    </form>
  </div>
  </div>
  <!-- End #login-content -->
</div>
<!-- End #login-wrapper -->
</body>
</html>
