<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsStaticsGather.TABLE_ALIAS);
	Map map = new HashMap();
		map.put("ID", "1");
		map.put("GATHER_TYPE", "1");
		map.put("TIME_TYPE", "1");
		map.put("DATA", "1");
		map.put("COUNT", "1");
		map.put("VISIT_YEAR", "1");
		map.put("VISIT_MONTH", "1");
		map.put("VISIT_DATE", "1");
		map.put("VISIT_DAY", "1");
		map.put("VISIT_HOUR", "1");
		map.put("VISIT_MINUTE", "1");
		map.put("SITEID", "1");
		map.put("SITE_DOMAIN", "1");
		map.put("ADDITION", "1");
		map.put("CREATETIMELONG", "1");
		map.put("MODIFYTIMELONG", "1");
		map.put("CREATEUSER", "1");
		map.put("MODIFYUSER", "1");
		map.put("STATUS", "1");
	request.setAttribute("showmap", map);
 %>
<c:set var="actionBasePath" value="/kailian/CmsStaticsGather" />
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
        <h3><%=JSTLTagUtils.getCnname("CmsStaticsGather","table_name")%>列表
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
						<th id="id_000"><span onclick="newsort('<%=CmsStaticsGather.ALIAS_ID%>');"><%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_ID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="GATHER_TYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="gatherType_000"><span onclick="newsort('<%=CmsStaticsGather.ALIAS_GATHER_TYPE%>');"><%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_GATHER_TYPE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="TIME_TYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="timeType_000"><span onclick="newsort('<%=CmsStaticsGather.ALIAS_TIME_TYPE%>');"><%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_TIME_TYPE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="DATA"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="data_000"><span onclick="newsort('<%=CmsStaticsGather.ALIAS_DATA%>');"><%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_DATA)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="COUNT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="count_000"><span onclick="newsort('<%=CmsStaticsGather.ALIAS_COUNT%>');"><%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_COUNT)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="VISIT_YEAR"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="visitYear_000"><span onclick="newsort('<%=CmsStaticsGather.ALIAS_VISIT_YEAR%>');"><%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_VISIT_YEAR)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="VISIT_MONTH"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="visitMonth_000"><span onclick="newsort('<%=CmsStaticsGather.ALIAS_VISIT_MONTH%>');"><%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_VISIT_MONTH)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="VISIT_DATE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="visitDate_000"><span onclick="newsort('<%=CmsStaticsGather.ALIAS_VISIT_DATE%>');"><%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_VISIT_DATE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="VISIT_DAY"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="visitDay_000"><span onclick="newsort('<%=CmsStaticsGather.ALIAS_VISIT_DAY%>');"><%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_VISIT_DAY)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="VISIT_HOUR"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="visitHour_000"><span onclick="newsort('<%=CmsStaticsGather.ALIAS_VISIT_HOUR%>');"><%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_VISIT_HOUR)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="VISIT_MINUTE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="visitMinute_000"><span onclick="newsort('<%=CmsStaticsGather.ALIAS_VISIT_MINUTE%>');"><%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_VISIT_MINUTE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="SITEID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="siteid_000"><span onclick="newsort('<%=CmsStaticsGather.ALIAS_SITEID%>');"><%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_SITEID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="SITE_DOMAIN"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="siteDomain_000"><span onclick="newsort('<%=CmsStaticsGather.ALIAS_SITE_DOMAIN%>');"><%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_SITE_DOMAIN)%></span></th>
					</c:if>
			
				<!-- 
				
			
                
                	<c:set var="tt" value="ADDITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="addition_000"><span onclick="newsort('<%=CmsStaticsGather.ALIAS_ADDITION%>');"><%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_ADDITION)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="CREATETIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="createtimelong_000"><span onclick="newsort('<%=CmsStaticsGather.ALIAS_CREATETIMELONG%>');"><%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_CREATETIMELONG)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="MODIFYTIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="modifytimelong_000"><span onclick="newsort('<%=CmsStaticsGather.ALIAS_MODIFYTIMELONG%>');"><%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_MODIFYTIMELONG)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="CREATEUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="createuser_000"><span onclick="newsort('<%=CmsStaticsGather.ALIAS_CREATEUSER%>');"><%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_CREATEUSER)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="MODIFYUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="modifyuser_000"><span onclick="newsort('<%=CmsStaticsGather.ALIAS_MODIFYUSER%>');"><%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_MODIFYUSER)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="STATUS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="status_000"><span onclick="newsort('<%=CmsStaticsGather.ALIAS_STATUS%>');"><%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_STATUS)%></span></th>
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
				
                	<c:set var="tt" value="GATHER_TYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="gatherType_${v.id}" class="td123 gatherTypeTd">
${my:showcont('CmsStaticsGather','gatherType',v.gatherType,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="TIME_TYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="timeType_${v.id}" class="td123 timeTypeTd">
${my:showcont('CmsStaticsGather','timeType',v.timeType,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="DATA"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="data_${v.id}" class="td123 dataTd">
${my:showcont('CmsStaticsGather','data',v.data,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="COUNT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="count_${v.id}" class="td123 countTd">
${my:showcont('CmsStaticsGather','count',v.count,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="VISIT_YEAR"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="visitYear_${v.id}" class="td123 visitYearTd">
${my:showcont('CmsStaticsGather','visitYear',v.visitYear,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="VISIT_MONTH"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="visitMonth_${v.id}" class="td123 visitMonthTd">
${my:showcont('CmsStaticsGather','visitMonth',v.visitMonth,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="VISIT_DATE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="visitDate_${v.id}" class="td123 visitDateTd">
${my:showcont('CmsStaticsGather','visitDate',v.visitDate,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="VISIT_DAY"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="visitDay_${v.id}" class="td123 visitDayTd">
${my:showcont('CmsStaticsGather','visitDay',v.visitDay,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="VISIT_HOUR"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="visitHour_${v.id}" class="td123 visitHourTd">
${my:showcont('CmsStaticsGather','visitHour',v.visitHour,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="VISIT_MINUTE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="visitMinute_${v.id}" class="td123 visitMinuteTd">
${my:showcont('CmsStaticsGather','visitMinute',v.visitMinute,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="SITEID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="siteid_${v.id}" class="td123 siteidTd">
${my:showcont('CmsStaticsGather','siteid',v.siteid,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="SITE_DOMAIN"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="siteDomain_${v.id}" class="td123 siteDomainTd">
${my:showcont('CmsStaticsGather','siteDomain',v.siteDomain,0 )}							</td>
					</c:if>
				
				<!-- 
                	<c:set var="tt" value="ADDITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="addition_${v.id}" class="td123 additionTd">
${my:showcont('CmsStaticsGather','addition',v.addition,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="CREATETIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createtimelong_${v.id}" class="td123 createtimelongTd">
${my:showcont('CmsStaticsGather','createtimelong',v.createtimelong,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="MODIFYTIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="modifytimelong_${v.id}" class="td123 modifytimelongTd">
${my:showcont('CmsStaticsGather','modifytimelong',v.modifytimelong,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="CREATEUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createuser_${v.id}" class="td123 createuserTd">
${my:showcont('CmsStaticsGather','createuser',v.createuser,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="MODIFYUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="modifyuser_${v.id}" class="td123 modifyuserTd">
${my:showcont('CmsStaticsGather','modifyuser',v.modifyuser,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="STATUS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="status_${v.id}" class="td123 statusTd">
${my:showcont('CmsStaticsGather','status',v.status,0 )}							</td>
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
${my:input('CmsStaticsGather','list_iframe',v.id,-1,0 )}${my:input('CmsStaticsGather','list_blank',v.id,-1,0 )}
           
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
              <label><%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_ID)%></label>
${my:input('CmsStaticsGather','id',param.id,0,-1 )}						
						
              </p>
			
			 <p id="gatherType_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_GATHER_TYPE)%></label>
${my:input('CmsStaticsGather','gatherType',param.gatherType,0,-1 )}						
						
              </p>
			
			 <p id="timeType_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_TIME_TYPE)%></label>
${my:input('CmsStaticsGather','timeType',param.timeType,0,-1 )}						
						
              </p>
			
			 <p id="data_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_DATA)%></label>
${my:input('CmsStaticsGather','data',param.data,0,-1 )}						
						
              </p>
			
			 <p id="count_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_COUNT)%></label>
${my:input('CmsStaticsGather','count',param.count,0,-1 )}						
						
              </p>
			
			 <p id="visitYear_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_VISIT_YEAR)%></label>
${my:input('CmsStaticsGather','visitYear',param.visitYear,0,-1 )}						
						
              </p>
			
			 <p id="visitMonth_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_VISIT_MONTH)%></label>
${my:input('CmsStaticsGather','visitMonth',param.visitMonth,0,-1 )}						
						
              </p>
			
			 <p id="visitDate_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_VISIT_DATE)%></label>
${my:input('CmsStaticsGather','visitDate',param.visitDate,0,-1 )}						
						
              </p>
			
			 <p id="visitDay_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_VISIT_DAY)%></label>
${my:input('CmsStaticsGather','visitDay',param.visitDay,0,-1 )}						
						
              </p>
			
			 <p id="visitHour_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_VISIT_HOUR)%></label>
${my:input('CmsStaticsGather','visitHour',param.visitHour,0,-1 )}						
						
              </p>
			
			 <p id="visitMinute_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_VISIT_MINUTE)%></label>
${my:input('CmsStaticsGather','visitMinute',param.visitMinute,0,-1 )}						
						
              </p>
			
			 <p id="siteid_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_SITEID)%></label>
${my:input('CmsStaticsGather','siteid',param.siteid,0,-1 )}						
						
              </p>
			
			 <p id="siteDomain_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_SITE_DOMAIN)%></label>
${my:input('CmsStaticsGather','siteDomain',param.siteDomain,0,-1 )}						
						
              </p>
			
				<!-- 
			 <p id="addition_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_ADDITION)%></label>
${my:input('CmsStaticsGather','addition',param.addition,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="createtimelong_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_CREATETIMELONG)%></label>
${my:input('CmsStaticsGather','createtimelong',param.createtimelong,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="modifytimelong_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_MODIFYTIMELONG)%></label>
${my:input('CmsStaticsGather','modifytimelong',param.modifytimelong,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="createuser_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_CREATEUSER)%></label>
${my:input('CmsStaticsGather','createuser',param.createuser,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="modifyuser_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_MODIFYUSER)%></label>
${my:input('CmsStaticsGather','modifyuser',param.modifyuser,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="status_formp">
              <label><%=JSTLTagUtils.getCnname("CmsStaticsGather",CmsStaticsGather.ALIAS_STATUS)%></label>
${my:input('CmsStaticsGather','status',param.status,0,-1 )}						
						
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
