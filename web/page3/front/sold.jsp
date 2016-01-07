<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<div class="table">
<a name="solds" />
          <table width="100%" cellpadding="0" cellspacing="0" border="0">
             <tr>
               <th width="160"><div>买家</div></th>
               <th width="160">课程名称</th>
               <th width="105">购买数量</th>
               <th width="105">成交时间</th>
               <th>说明</th>
             </tr>
            <c:forEach var="v" items="${map.page.result}">
             <tr>
               <td><div>${my:maxleng(v.ext1,1)}</div></td>
               <td>${my:maxleng(v.productName, 6)}</td>
               <td>${v.count}</td>
               <td>${my:transDate(v.createtimelong)}</td>
               <td>无</td>
             </tr>
            </c:forEach>
             
          </table>
          </div>
          <div class="pageNum4">
          
          <c:forEach var="v" begin="1" end="${map.page.lastPageNumber}">
          	<a href="#solds" <c:if test="${v eq map.page.thisPageNumber}">class="aNow"</c:if> onclick="soldpage(${v})">${v}</a>
          </c:forEach>
          <!-- 
          <a href="">1</a><a href="">2</a><a href="">3</a><a href="">4</a><span>...</span><a href="">9</a><a href="" class="next">.</a>
           -->
          </div>