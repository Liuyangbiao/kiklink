<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>


<div class="row">
								<div class="col-6 hot-lesson">
								
							<c:choose>
							<c:when test="${map.tops ne null}">
								<c:forEach var="p" items="${map.tops}" varStatus="vs">
								<c:if test="${vs.index lt 10 and vs.index % 2 eq 0}">
								<div class="hot-lesson-wrap">
										<a href="${ctx}/shop_${p.shopId}.html" target="_blank">
											<img src="${ctx}/${p.photo}" style="width:490px;height:368px;" />
										</a>
										<p>
										<div class="info">
											<h2>${my:maxleng(p.name,30)}</h2>
											<p>${my:maxleng(p.subname,30)}</p>
										</div>
										
										<!--
										<font class="shouyebiaoti" style="padding-top:10px;color:#000000;font-size:14px;line-height:30px;">${my:maxleng(p.name,20)}</font><br/>
										${my:maxleng(p.subname,20)}</p>
										-->
									</div>
								</c:if>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<c:set var="tops" value="${my:getBiaodans('首页推荐位')}" />
								<c:forEach var="p" items="${tops}" varStatus="vs">
								<c:if test="${vs.index lt 10 and vs.index % 2 eq 0}">
								<div class="hot-lesson-wrap">
										<a href="${my:jvalue(p.content,'url')}" target="_blank">
											<img src="${ctx}/${my:jvalue(p.content,'img')}" style="width:490px;height:368px;" />
										</a>
										<!--
										<p><font class="shouyebiaoti" style="padding-top:10px;color:#000000;font-size:14px;line-height:30px;">${my:maxleng(p.title,20)}</font><br/>
										${my:maxleng(my:jvalue(p.content,'shuoming'),30)}</p>
										-->
										<div class="info">
											<h2>${my:maxleng(p.title,30)}。</h2>
											<p>${my:maxleng(my:jvalue(p.content,'shuoming'),30)}</p>
										</div>
										
										
									</div>
								</c:if>
								</c:forEach>
							</c:otherwise>
							</c:choose>
									
									
								</div>
								<div class="col-6 hot-lesson">
							<c:choose>
							<c:when test="${map.tops ne null}">
								<c:forEach var="p" items="${map.tops}" varStatus="vs">
								<c:if test="${vs.index lt 10 and vs.index % 2 eq 1}">
								<div class="hot-lesson-wrap">
										<a href="${ctx}/shop_${p.shopId}.html" target="_blank">
											<img src="${ctx}/${p.photo}" style="width:490px;height:368px;" />
										</a>
										
										<div class="info">
											<h2>${my:maxleng(p.name,30)}</h2>
											<p>${my:maxleng(p.subname,30)}</p>
										</div>
									</div>
								</c:if>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<c:set var="tops" value="${my:getBiaodans('首页推荐位')}" />
								<c:forEach var="p" items="${tops}" varStatus="vs">
								<c:if test="${vs.index lt 10 and vs.index % 2 eq 1}">
								<div class="hot-lesson-wrap">
										<a href="${my:jvalue(p.content,'url')}" target="_blank">
											<img src="${ctx}/${my:jvalue(p.content,'img')}" style="width:490px;height:368px;" />
										</a>
										
										<div class="info">
											<h2>${my:maxleng(p.title,30)}</h2>
											<p>${my:maxleng(my:jvalue(p.content,'shuoming'),30)}</p>
										</div>
									</div>
								</c:if>
								</c:forEach>
							</c:otherwise>
							</c:choose>
								</div>
							</div>