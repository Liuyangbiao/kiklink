<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", KlShoppingCoupon.TABLE_ALIAS);
	Map map = new HashMap();
		map.put("ID", "1");
		map.put("USERID", "1");
		map.put("COUPONCODE", "1");
		map.put("TYPE", "1");
		map.put("PRICE", "1");
		map.put("VALID_DATE", "1");
		map.put("VALID_DATE_LONG", "1");
		map.put("INVALID_DATE", "1");
		map.put("INVALID_DATE_LONG", "1");
		map.put("SOURCE", "1");
		map.put("STATUS", "1");
		map.put("ADDITION", "1");
		map.put("CREATETIMELONG", "1");
		map.put("MODIFYTIMELONG", "1");
		map.put("CREATEUSER", "1");
		map.put("MODIFYUSER", "1");
	request.setAttribute("showmap", map);
 %>
<c:set var="actionBasePath" value="/kailian/KlShoppingCoupon" />
<c:set var="ttid" value="ID"></c:set>
<c:set var="ttcreator" value="CREATOR"></c:set>
<c:set var="ttdeleted" value="DELETED"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="/admin/admincommon/head.jsp" %>
</head>
<body>
<div id="body-wrapper">
  <!-- LOGO与左侧菜单 -->
  <!-- End #sidebar -->
  <div id="main-content">
    <!-- 如果没有js -->
    <%@ include file="/admin/admincommon/nojs.jsp" %>
    <!-- 标题与大图标 -->
     <%@ include file="/admin/admincommon/headicons.jsp" %>
    <!-- End .clear -->
    <div class="content-box">
      <!-- Start Content Box -->
      <div class="content-box-header">
        <h3><%=JSTLTagUtils.getCnname("KlShoppingCoupon","table_name")%>列表
		&nbsp;&nbsp;
		
		<c:choose>
        	<c:when test="${param.fromiframe eq null or param.fromiframe eq ''}">
            <a class="button iframe" href="${ctx}/${actionBasePath}/create.do" title="新增">新增</a>
		 &nbsp;&nbsp;
		 <a class="button" onclick="if(confirm('确定要删除所选数据吗？')) deleteidsrt();" title="删除所选">删除所选</a>
            </c:when>
            <c:otherwise>
            
            </c:otherwise>
        </c:choose>
		
		
		 
		 &nbsp;&nbsp;
		 ${pg.totalCount}条记录
		 &nbsp;&nbsp;
		 <a class="button" onclick="$('#queryForm').submit();">刷新</a>
		 </h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content" style="">
        <div class="tab-content default-tab" id="tab1">
          <!-- This is the target div. id must match the href of this div's tab -->
          <%@ include file="/admin/admincommon/tipup.jsp" %>
          <table>
            <thead>
              <tr>
                <th>
                  <input class="check-all" type="checkbox" />
                </th>
				
			
                
                	<c:set var="tt" value="ID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="id_000"><span onclick="newsort('<%=KlShoppingCoupon.ALIAS_ID%>');"><%=JSTLTagUtils.getCnname("KlShoppingCoupon",KlShoppingCoupon.ALIAS_ID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="USERID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="userid_000"><span onclick="newsort('<%=KlShoppingCoupon.ALIAS_USERID%>');"><%=JSTLTagUtils.getCnname("KlShoppingCoupon",KlShoppingCoupon.ALIAS_USERID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="COUPONCODE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="couponcode_000"><span onclick="newsort('<%=KlShoppingCoupon.ALIAS_COUPONCODE%>');"><%=JSTLTagUtils.getCnname("KlShoppingCoupon",KlShoppingCoupon.ALIAS_COUPONCODE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="TYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="type_000"><span onclick="newsort('<%=KlShoppingCoupon.ALIAS_TYPE%>');"><%=JSTLTagUtils.getCnname("KlShoppingCoupon",KlShoppingCoupon.ALIAS_TYPE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="PRICE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="price_000"><span onclick="newsort('<%=KlShoppingCoupon.ALIAS_PRICE%>');"><%=JSTLTagUtils.getCnname("KlShoppingCoupon",KlShoppingCoupon.ALIAS_PRICE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="VALID_DATE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="validDate_000"><span onclick="newsort('<%=KlShoppingCoupon.ALIAS_VALID_DATE%>');"><%=JSTLTagUtils.getCnname("KlShoppingCoupon",KlShoppingCoupon.ALIAS_VALID_DATE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="VALID_DATE_LONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="validDateLong_000"><span onclick="newsort('<%=KlShoppingCoupon.ALIAS_VALID_DATE_LONG%>');"><%=JSTLTagUtils.getCnname("KlShoppingCoupon",KlShoppingCoupon.ALIAS_VALID_DATE_LONG)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="INVALID_DATE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="invalidDate_000"><span onclick="newsort('<%=KlShoppingCoupon.ALIAS_INVALID_DATE%>');"><%=JSTLTagUtils.getCnname("KlShoppingCoupon",KlShoppingCoupon.ALIAS_INVALID_DATE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="INVALID_DATE_LONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="invalidDateLong_000"><span onclick="newsort('<%=KlShoppingCoupon.ALIAS_INVALID_DATE_LONG%>');"><%=JSTLTagUtils.getCnname("KlShoppingCoupon",KlShoppingCoupon.ALIAS_INVALID_DATE_LONG)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="SOURCE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="source_000"><span onclick="newsort('<%=KlShoppingCoupon.ALIAS_SOURCE%>');"><%=JSTLTagUtils.getCnname("KlShoppingCoupon",KlShoppingCoupon.ALIAS_SOURCE)%></span></th>
					</c:if>
			
				<!-- 
				
			
                
                	<c:set var="tt" value="STATUS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="status_000"><span onclick="newsort('<%=KlShoppingCoupon.ALIAS_STATUS%>');"><%=JSTLTagUtils.getCnname("KlShoppingCoupon",KlShoppingCoupon.ALIAS_STATUS)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="ADDITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="addition_000"><span onclick="newsort('<%=KlShoppingCoupon.ALIAS_ADDITION%>');"><%=JSTLTagUtils.getCnname("KlShoppingCoupon",KlShoppingCoupon.ALIAS_ADDITION)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="CREATETIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="createtimelong_000"><span onclick="newsort('<%=KlShoppingCoupon.ALIAS_CREATETIMELONG%>');"><%=JSTLTagUtils.getCnname("KlShoppingCoupon",KlShoppingCoupon.ALIAS_CREATETIMELONG)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="MODIFYTIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="modifytimelong_000"><span onclick="newsort('<%=KlShoppingCoupon.ALIAS_MODIFYTIMELONG%>');"><%=JSTLTagUtils.getCnname("KlShoppingCoupon",KlShoppingCoupon.ALIAS_MODIFYTIMELONG)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="CREATEUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="createuser_000"><span onclick="newsort('<%=KlShoppingCoupon.ALIAS_CREATEUSER%>');"><%=JSTLTagUtils.getCnname("KlShoppingCoupon",KlShoppingCoupon.ALIAS_CREATEUSER)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="MODIFYUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="modifyuser_000"><span onclick="newsort('<%=KlShoppingCoupon.ALIAS_MODIFYUSER%>');"><%=JSTLTagUtils.getCnname("KlShoppingCoupon",KlShoppingCoupon.ALIAS_MODIFYUSER)%></span></th>
					</c:if>
				-->	
			
				<th>操作</th>
              </tr>
            </thead>

            <tbody>
            <c:forEach var="v" varStatus="vs" items="${pg.result}">
              <tr>
                <td>
                  <input type="checkbox" id="checkbox_${v.id}" />
                </td>
                
                	<c:set var="tt" value="ID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<td>${v.id}</td>
					</c:if>
				
                	<c:set var="tt" value="USERID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="userid_${v.id}" class="td123 useridTd">
${my:showcont('KlShoppingCoupon','userid',v.userid,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="COUPONCODE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="couponcode_${v.id}" class="td123 couponcodeTd">
${my:showcont('KlShoppingCoupon','couponcode',v.couponcode,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="TYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="type_${v.id}" class="td123 typeTd">
${my:showcont('KlShoppingCoupon','type',v.type,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="PRICE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="price_${v.id}" class="td123 priceTd">
${my:showcont('KlShoppingCoupon','price',v.price,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="VALID_DATE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="validDate_${v.id}" class="td123 validDateTd">
${my:showcont('KlShoppingCoupon','validDate',v.validDate,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="VALID_DATE_LONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="validDateLong_${v.id}" class="td123 validDateLongTd">
${my:showcont('KlShoppingCoupon','validDateLong',v.validDateLong,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="INVALID_DATE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="invalidDate_${v.id}" class="td123 invalidDateTd">
${my:showcont('KlShoppingCoupon','invalidDate',v.invalidDate,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="INVALID_DATE_LONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="invalidDateLong_${v.id}" class="td123 invalidDateLongTd">
${my:showcont('KlShoppingCoupon','invalidDateLong',v.invalidDateLong,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="SOURCE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="source_${v.id}" class="td123 sourceTd">
${my:showcont('KlShoppingCoupon','source',v.source,0 )}							</td>
					</c:if>
				
				<!-- 
                	<c:set var="tt" value="STATUS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="status_${v.id}" class="td123 statusTd">
${my:showcont('KlShoppingCoupon','status',v.status,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="ADDITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="addition_${v.id}" class="td123 additionTd">
${my:showcont('KlShoppingCoupon','addition',v.addition,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="CREATETIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createtimelong_${v.id}" class="td123 createtimelongTd">
${my:showcont('KlShoppingCoupon','createtimelong',v.createtimelong,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="MODIFYTIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="modifytimelong_${v.id}" class="td123 modifytimelongTd">
${my:showcont('KlShoppingCoupon','modifytimelong',v.modifytimelong,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="CREATEUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createuser_${v.id}" class="td123 createuserTd">
${my:showcont('KlShoppingCoupon','createuser',v.createuser,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="MODIFYUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="modifyuser_${v.id}" class="td123 modifyuserTd">
${my:showcont('KlShoppingCoupon','modifyuser',v.modifyuser,0 )}							</td>
					</c:if>
				
				--> 
                
                <td id="operate_${v.id}" class="operate111">
                  <!-- Icons-->
             	<c:choose>
        	<c:when test="${param.fromiframe eq null or param.fromiframe eq ''}">
        		<!--
            	<a class="xinzeng111" href="${ctx}/${actionBasePath}/create.do" title="新增"><img src="${ctx}/admin/resources/images/icons/pencil.png" alt="新增" /></a>
                 -->
                  <a href="#" onclick="if(confirm('您确定要删除这条数据吗？')) window.location.href='${ctx}/${actionBasePath}/delete.do?items=${v.id}';" title="删除"><img src="${ctx}/admin/resources/images/icons/cross.png" alt="删除" /></a>
                  <a class="iframe" href="${ctx}/${actionBasePath}/edit.do?id=${v.id}" title="修改"><img src="${ctx}/admin/resources/images/icons/hammer_screwdriver.png" alt="修改" /></a> 
${my:input('KlShoppingCoupon','list_iframe',v.id,-1,0 )}${my:input('KlShoppingCoupon','list_blank',v.id,-1,0 )}
           
            </c:when>
            <c:otherwise>
            	<a class="button" href="#" onclick="parent.didiframe(obj[${vs.index}],'${param.params}');">选取</a>
            </c:otherwise>
        </c:choose>	
             		
             		

                 </td>
              </tr>
           	</c:forEach>
            </tbody>
          </table>
          <br/><br/>
                  <div class="clear"></div>
                  <div class="align-left"> 
                  		
                  		<c:if test="${pg.thisPageNumber gt 1}">
                  			<a class="button" href="javascript:submitSearch(1);" title="首页">&laquo; 首页</a>
                  			<a class="button" href="javascript:submitSearch(${pg.previousPageNumber});" title="上页">&laquo; 上页</a>
                  		</c:if>
                  
                  		<c:forEach var="p" items="${pg.linkPageNumbers}">
                  			<c:choose>
                  				<c:when test="${p eq pg.thisPageNumber}">
                  					&nbsp;&nbsp;${p}&nbsp;&nbsp;
                  				</c:when>
                  				<c:otherwise>
                  					<a class="button" href="javascript:submitSearch(${p});" class="number" title="${p}">${p}</a>
                  				</c:otherwise>
                  			</c:choose>
                  			
                  		</c:forEach>
                  		
                  		<c:if test="${pg.thisPageNumber lt pg.lastPageNumber}">
                  			<a class="button" href="javascript:submitSearch(${pg.nextPageNumber});" title="下页">&raquo; 下页</a>
                  			<a class="button" href="javascript:submitSearch(${pg.lastPageNumber});" title="尾页">&raquo; 尾页</a>
                  		</c:if>
                  </div>
                  <!-- End .pagination -->
                  <div class="clear"></div>
        </div>
        <!-- End #tab1 -->

      </div>
      <!-- End .content-box-content -->
    </div>
    <!-- End .content-box -->
    
    <!-- 搜索 -->
        <div class="content-box column-right" style="width:100%">
      <div class="content-box-header">
        <!-- Add the class "closed" to the Content box header to have it closed by default -->
        <h3>搜索</h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">
          <form id="queryForm" name="queryForm" action="${ctx}/${actionBasePath}/list.do" method="post" style="display: inline;">
			<a href="#" class="button" onclick="$('#queryForm').submit();">查询</a>
				&nbsp;&nbsp;
				<a href="#" class="button" onclick="$('#queryForm').reset();">重置</a>
				<br/>
			
			<input type="hidden" id="pageNumber" name="pageNumber" value="${param.pageNumber}"/>
			<input type="hidden" id="pageSize" name="pageSize" value="10" />
			<input type="hidden" id="sort" name="sort" value="${param.sort}" />
			<input type="hidden" id="fromiframe" name="fromiframe" value="${param.fromiframe}" />
			<input type="hidden" id="params" name="params" value="${param.params}" />
			<fieldset>
			
			 <p id="id_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCoupon",KlShoppingCoupon.ALIAS_ID)%></label>
${my:input('KlShoppingCoupon','id',param.id,0,-1 )}						
						
              </p>
			
			 <p id="userid_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCoupon",KlShoppingCoupon.ALIAS_USERID)%></label>
${my:input('KlShoppingCoupon','userid',param.userid,0,-1 )}						
						
              </p>
			
			 <p id="couponcode_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCoupon",KlShoppingCoupon.ALIAS_COUPONCODE)%></label>
${my:input('KlShoppingCoupon','couponcode',param.couponcode,0,-1 )}						
						
              </p>
			
			 <p id="type_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCoupon",KlShoppingCoupon.ALIAS_TYPE)%></label>
${my:input('KlShoppingCoupon','type',param.type,0,-1 )}						
						
              </p>
			
			 <p id="price_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCoupon",KlShoppingCoupon.ALIAS_PRICE)%></label>
${my:input('KlShoppingCoupon','price',param.price,0,-1 )}						
						
              </p>
			
			 <p id="validDate_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCoupon",KlShoppingCoupon.ALIAS_VALID_DATE)%></label>
${my:input('KlShoppingCoupon','validDate',param.validDate,0,-1 )}						
						
              </p>
			
			 <p id="validDateLong_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCoupon",KlShoppingCoupon.ALIAS_VALID_DATE_LONG)%></label>
${my:input('KlShoppingCoupon','validDateLong',param.validDateLong,0,-1 )}						
						
              </p>
			
			 <p id="invalidDate_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCoupon",KlShoppingCoupon.ALIAS_INVALID_DATE)%></label>
${my:input('KlShoppingCoupon','invalidDate',param.invalidDate,0,-1 )}						
						
              </p>
			
			 <p id="invalidDateLong_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCoupon",KlShoppingCoupon.ALIAS_INVALID_DATE_LONG)%></label>
${my:input('KlShoppingCoupon','invalidDateLong',param.invalidDateLong,0,-1 )}						
						
              </p>
			
			 <p id="source_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCoupon",KlShoppingCoupon.ALIAS_SOURCE)%></label>
${my:input('KlShoppingCoupon','source',param.source,0,-1 )}						
						
              </p>
			
				<!-- 
			 <p id="status_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCoupon",KlShoppingCoupon.ALIAS_STATUS)%></label>
${my:input('KlShoppingCoupon','status',param.status,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="addition_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCoupon",KlShoppingCoupon.ALIAS_ADDITION)%></label>
${my:input('KlShoppingCoupon','addition',param.addition,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="createtimelong_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCoupon",KlShoppingCoupon.ALIAS_CREATETIMELONG)%></label>
${my:input('KlShoppingCoupon','createtimelong',param.createtimelong,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="modifytimelong_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCoupon",KlShoppingCoupon.ALIAS_MODIFYTIMELONG)%></label>
${my:input('KlShoppingCoupon','modifytimelong',param.modifytimelong,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="createuser_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCoupon",KlShoppingCoupon.ALIAS_CREATEUSER)%></label>
${my:input('KlShoppingCoupon','createuser',param.createuser,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="modifyuser_formp">
              <label><%=JSTLTagUtils.getCnname("KlShoppingCoupon",KlShoppingCoupon.ALIAS_MODIFYUSER)%></label>
${my:input('KlShoppingCoupon','modifyuser',param.modifyuser,0,-1 )}						
						
              </p>
				-->
				</fieldset>
				<br/>
				<a href="#" class="button" onclick="$('#queryForm').submit();">查询</a>
				&nbsp;&nbsp;
				<a href="#" class="button" onclick="$('#queryForm').reset();">重置</a>
			</form>
        </div>
        <!-- End #tab3 -->
      </div>
      <!-- End .content-box-content -->
    </div>
    <!-- End .content-box -->
    <div class="clear"></div>
    <%@ include file="/admin/admincommon/tipdown.jsp" %>

    <!-- End Notifications -->
  </div>
  <!-- End #main-content -->
</div>
</body>
<script type="text/javascript">
var host1 = "${ctx}";
$(document).ready(function(){
	$('.iframe').fancybox({'width':widthPercent,'height':heightPercent,  'onClosed' :function() { $('#queryForm').submit();}});
	dorightlist();
});

function newsort(sortname) {
	var sort = $('#sort').val();
	if (sort == "")
		$('#sort').val(sortname);
	else {
		sort = sort.split(" ")[0];
		if (sort != sortname || $('#sort').val().split(" ").length > 1) {
			$('#sort').val(sortname);
		}
		else
			$('#sort').val(sortname + " desc");
	}
	$('#queryForm').submit();
}


function deleteids() {
		var items = "";
		for (var i = 1; i <= 10; i ++) {
			if($("#checkbox_" + i).attr("checked")=="checked") {
				if (items == "")
					items += "" + i;
				else 
					items += "," + i;
				
			}
		}
		
		window.location.href = "${ctx}/${actionBasePath}/delete.do?items=" + items;
	}
	
	
	function submitSearch(pageno) {
		document.getElementById('pageNumber').value = pageno;
		$('#queryForm').submit();
	}
	
	var str1 = '${my:resultlist(pg.result)}';
	var obj = eval('(' + str1 + ')');   
	
</script>
<!-- Download From www.exet.tk-->
</html>
