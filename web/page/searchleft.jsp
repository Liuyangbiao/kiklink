<%@ page contentType="text/html;charset=UTF-8" %>
<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.sigleton.*" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.yebucuo.com" prefix="my" %>
<%
	request.setAttribute("remen",ConfigSingleton.getConfigMap().get("热门标签") );
%>
<c:set value="${fn:split(remen.configvalue, ',')}" var="ss" />
<div class="pageBox helpSide_01">
           <h1>热门标签……</h1>
           <div class="list">
                <ul>
				<c:forEach var="v" items="${ss}" varStatus="st">
					<li class="li_0${st.index%7+1}"><a href="${ctx}/kailian/KlSellerProduct/search.do?name=${v}"><b>${v}</b></a></li>
				</c:forEach>

                </ul>
                <span class="clear_f"></span>
           </div>
           <div class="h10"></div>
     </div>
     <div class="h10"></div>
     <!---->
     <!--
     <div class="pageBox helpSide_02">
           <h1>推荐阅读 ......   </h1>
           <div class="list">
                <ul>
                  <li>
                     <div class="num">1</div>
                     <div class="imgDiv"><a href=""><img src="${ctx}/image/nimg46.jpg"/></a></div>
                     <div class="name"><a href="">文章标题文字信息</a></div>
                     <div class="time">2014-12-12</div>
                  </li>
                  <li>
                     <div class="num">2</div>
                     <div class="imgDiv"><a href=""><img src="${ctx}/image/nimg46.jpg"/></a></div>
                     <div class="name"><a href="">文章标题文字信息</a></div>
                     <div class="time">2014-12-12</div>
                  </li>
                  <li>
                     <div class="num">3</div>
                     <div class="imgDiv"><a href=""><img src="${ctx}/image/nimg46.jpg"/></a></div>
                     <div class="name"><a href="">文章标题文字信息</a></div>
                     <div class="time">2014-12-12</div>
                  </li>
                </ul>
           </div>
     </div>
    --> 
     