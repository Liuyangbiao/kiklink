<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<div class="title">
<a name="commentss" />
               <h2 class="fl">大家点评后的综合得分：</h2>
               <i class="fl">4.8分</i>
               <div class="fl star"><img src="${ctx}/page3/image/star.png"/></div>
               <h5 class="fr">（<span class="blue">${map.comments.totalCount}人</span>）发表大家看</h5>
          </div>
          <div class="list">
            <ul>
            <c:forEach var="c" items="${map.comments.result}">
              <li>
                   <div class="imgDiv"><img src="${ctx}/page3/image/img70_1.png"/></div>
                   <div class="content">${c.comment}</div>
                   <div class="msg"><span>${c.username}</span><div><img src="${ctx}/page3/image/star.png"/><b>${c.point}分</b></div><span>${my:transDate(c.createtimelong)}</span></div>
              </li>
             </c:forEach>
            
            </ul>
          </div>
          <div class="pageNum4">
          <c:forEach var="v" begin="1" end="${map.comments.lastPageNumber}">
          	<a href="#commentss" <c:if test="${v eq map.comments.thisPageNumber}">class="aNow"</c:if> onclick="commentpage(${v})">${v}</a>
          </c:forEach>
          
          </div>