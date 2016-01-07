<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsCommonPhoto.TABLE_ALIAS);
	Map map = new HashMap();
		map.put("ID", "1");
		map.put("OWNNERID", "1");
		map.put("OWNNERTYPE", "1");
		map.put("TARGET_TYPE", "1");
		map.put("TARGET_ID", "1");
		map.put("RESOURCETYPE", "1");
		map.put("CATEGORY", "1");
		map.put("RESOURCE", "1");
		map.put("NAME", "1");
		map.put("COMMENT", "1");
		map.put("QUANZHONG", "1");
		map.put("STATUS", "1");
		map.put("ADDITION", "1");
		map.put("CREATETIMELONG", "1");
		map.put("MODIFYTIMELONG", "1");
		map.put("CREATEUSER", "1");
		map.put("MODIFYUSER", "1");
	request.setAttribute("showmap", map);
 %>
<c:set var="actionBasePath" value="/kailian/CmsCommonPhoto" />
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
        <h3><%=JSTLTagUtils.getCnname("CmsCommonPhoto","table_name")%>列表
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
						<th id="id_000"><span onclick="newsort('<%=CmsCommonPhoto.ALIAS_ID%>');"><%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_ID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="OWNNERID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ownnerid_000"><span onclick="newsort('<%=CmsCommonPhoto.ALIAS_OWNNERID%>');"><%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_OWNNERID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="OWNNERTYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="ownnertype_000"><span onclick="newsort('<%=CmsCommonPhoto.ALIAS_OWNNERTYPE%>');"><%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_OWNNERTYPE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="TARGET_TYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="targetType_000"><span onclick="newsort('<%=CmsCommonPhoto.ALIAS_TARGET_TYPE%>');"><%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_TARGET_TYPE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="TARGET_ID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="targetId_000"><span onclick="newsort('<%=CmsCommonPhoto.ALIAS_TARGET_ID%>');"><%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_TARGET_ID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="RESOURCETYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="resourcetype_000"><span onclick="newsort('<%=CmsCommonPhoto.ALIAS_RESOURCETYPE%>');"><%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_RESOURCETYPE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="CATEGORY"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="category_000"><span onclick="newsort('<%=CmsCommonPhoto.ALIAS_CATEGORY%>');"><%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_CATEGORY)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="RESOURCE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="resource_000"><span onclick="newsort('<%=CmsCommonPhoto.ALIAS_RESOURCE%>');"><%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_RESOURCE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="NAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="name_000"><span onclick="newsort('<%=CmsCommonPhoto.ALIAS_NAME%>');"><%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_NAME)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="COMMENT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="comment_000"><span onclick="newsort('<%=CmsCommonPhoto.ALIAS_COMMENT%>');"><%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_COMMENT)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="QUANZHONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="quanzhong_000"><span onclick="newsort('<%=CmsCommonPhoto.ALIAS_QUANZHONG%>');"><%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_QUANZHONG)%></span></th>
					</c:if>
			
				<!-- 
				
			
                
                	<c:set var="tt" value="STATUS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="status_000"><span onclick="newsort('<%=CmsCommonPhoto.ALIAS_STATUS%>');"><%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_STATUS)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="ADDITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="addition_000"><span onclick="newsort('<%=CmsCommonPhoto.ALIAS_ADDITION%>');"><%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_ADDITION)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="CREATETIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="createtimelong_000"><span onclick="newsort('<%=CmsCommonPhoto.ALIAS_CREATETIMELONG%>');"><%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_CREATETIMELONG)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="MODIFYTIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="modifytimelong_000"><span onclick="newsort('<%=CmsCommonPhoto.ALIAS_MODIFYTIMELONG%>');"><%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_MODIFYTIMELONG)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="CREATEUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="createuser_000"><span onclick="newsort('<%=CmsCommonPhoto.ALIAS_CREATEUSER%>');"><%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_CREATEUSER)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="MODIFYUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="modifyuser_000"><span onclick="newsort('<%=CmsCommonPhoto.ALIAS_MODIFYUSER%>');"><%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_MODIFYUSER)%></span></th>
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
				
                	<c:set var="tt" value="OWNNERID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ownnerid_${v.id}" class="td123 ownneridTd">
${my:showcont('CmsCommonPhoto','ownnerid',v.ownnerid,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="OWNNERTYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="ownnertype_${v.id}" class="td123 ownnertypeTd">
${my:showcont('CmsCommonPhoto','ownnertype',v.ownnertype,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="TARGET_TYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="targetType_${v.id}" class="td123 targetTypeTd">
${my:showcont('CmsCommonPhoto','targetType',v.targetType,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="TARGET_ID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="targetId_${v.id}" class="td123 targetIdTd">
${my:showcont('CmsCommonPhoto','targetId',v.targetId,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="RESOURCETYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="resourcetype_${v.id}" class="td123 resourcetypeTd">
${my:showcont('CmsCommonPhoto','resourcetype',v.resourcetype,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="CATEGORY"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="category_${v.id}" class="td123 categoryTd">
${my:showcont('CmsCommonPhoto','category',v.category,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="RESOURCE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="resource_${v.id}" class="td123 resourceTd">
${my:showcont('CmsCommonPhoto','resource',v.resource,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="NAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="name_${v.id}" class="td123 nameTd">
${my:showcont('CmsCommonPhoto','name',v.name,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="COMMENT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="comment_${v.id}" class="td123 commentTd">
${my:showcont('CmsCommonPhoto','comment',v.comment,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="QUANZHONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="quanzhong_${v.id}" class="td123 quanzhongTd">
${my:showcont('CmsCommonPhoto','quanzhong',v.quanzhong,0 )}							</td>
					</c:if>
				
				<!-- 
                	<c:set var="tt" value="STATUS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="status_${v.id}" class="td123 statusTd">
${my:showcont('CmsCommonPhoto','status',v.status,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="ADDITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="addition_${v.id}" class="td123 additionTd">
${my:showcont('CmsCommonPhoto','addition',v.addition,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="CREATETIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createtimelong_${v.id}" class="td123 createtimelongTd">
${my:showcont('CmsCommonPhoto','createtimelong',v.createtimelong,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="MODIFYTIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="modifytimelong_${v.id}" class="td123 modifytimelongTd">
${my:showcont('CmsCommonPhoto','modifytimelong',v.modifytimelong,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="CREATEUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createuser_${v.id}" class="td123 createuserTd">
${my:showcont('CmsCommonPhoto','createuser',v.createuser,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="MODIFYUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="modifyuser_${v.id}" class="td123 modifyuserTd">
${my:showcont('CmsCommonPhoto','modifyuser',v.modifyuser,0 )}							</td>
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
${my:input('CmsCommonPhoto','list_iframe',v.id,-1,0 )}${my:input('CmsCommonPhoto','list_blank',v.id,-1,0 )}
           
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
              <label><%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_ID)%></label>
${my:input('CmsCommonPhoto','id',param.id,0,-1 )}						
						
              </p>
			
			 <p id="ownnerid_formp">
              <label><%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_OWNNERID)%></label>
${my:input('CmsCommonPhoto','ownnerid',param.ownnerid,0,-1 )}						
						
              </p>
			
			 <p id="ownnertype_formp">
              <label><%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_OWNNERTYPE)%></label>
${my:input('CmsCommonPhoto','ownnertype',param.ownnertype,0,-1 )}						
						
              </p>
			
			 <p id="targetType_formp">
              <label><%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_TARGET_TYPE)%></label>
${my:input('CmsCommonPhoto','targetType',param.targetType,0,-1 )}						
						
              </p>
			
			 <p id="targetId_formp">
              <label><%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_TARGET_ID)%></label>
${my:input('CmsCommonPhoto','targetId',param.targetId,0,-1 )}						
						
              </p>
			
			 <p id="resourcetype_formp">
              <label><%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_RESOURCETYPE)%></label>
${my:input('CmsCommonPhoto','resourcetype',param.resourcetype,0,-1 )}						
						
              </p>
			
			 <p id="category_formp">
              <label><%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_CATEGORY)%></label>
${my:input('CmsCommonPhoto','category',param.category,0,-1 )}						
						
              </p>
			
			 <p id="resource_formp">
              <label><%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_RESOURCE)%></label>
${my:input('CmsCommonPhoto','resource',param.resource,0,-1 )}						
						
              </p>
			
			 <p id="name_formp">
              <label><%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_NAME)%></label>
${my:input('CmsCommonPhoto','name',param.name,0,-1 )}						
						
              </p>
			
			 <p id="comment_formp">
              <label><%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_COMMENT)%></label>
${my:input('CmsCommonPhoto','comment',param.comment,0,-1 )}						
						
              </p>
			
			 <p id="quanzhong_formp">
              <label><%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_QUANZHONG)%></label>
${my:input('CmsCommonPhoto','quanzhong',param.quanzhong,0,-1 )}						
						
              </p>
			
				<!-- 
			 <p id="status_formp">
              <label><%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_STATUS)%></label>
${my:input('CmsCommonPhoto','status',param.status,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="addition_formp">
              <label><%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_ADDITION)%></label>
${my:input('CmsCommonPhoto','addition',param.addition,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="createtimelong_formp">
              <label><%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_CREATETIMELONG)%></label>
${my:input('CmsCommonPhoto','createtimelong',param.createtimelong,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="modifytimelong_formp">
              <label><%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_MODIFYTIMELONG)%></label>
${my:input('CmsCommonPhoto','modifytimelong',param.modifytimelong,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="createuser_formp">
              <label><%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_CREATEUSER)%></label>
${my:input('CmsCommonPhoto','createuser',param.createuser,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="modifyuser_formp">
              <label><%=JSTLTagUtils.getCnname("CmsCommonPhoto",CmsCommonPhoto.ALIAS_MODIFYUSER)%></label>
${my:input('CmsCommonPhoto','modifyuser',param.modifyuser,0,-1 )}						
						
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
