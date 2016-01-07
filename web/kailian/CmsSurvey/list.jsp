<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsSurvey.TABLE_ALIAS);
	Map map = new HashMap();
		map.put("ID", "1");
		map.put("CNNAME", "1");
		map.put("ENNAME", "1");
		//map.put("SURVEY_TYPE", "1");
		//map.put("LISTCOUNT", "1");
		//map.put("SURVEYCOUNT", "1");
		//map.put("TAGS", "1");
		map.put("DECLEARATION", "1");
		//map.put("COVERIMG", "1");
		map.put("STATUS", "1");
		map.put("ADDITION", "1");
		map.put("CREATETIMELONG", "1");
		map.put("MODIFYTIMELONG", "1");
		map.put("CREATEUSER", "1");
		map.put("MODIFYUSER", "1");
		//map.put("SURVEY_ID", "1");
	request.setAttribute("showmap", map);
 %>
<c:set var="actionBasePath" value="/kailian/CmsSurvey" />
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
        <h3><%=JSTLTagUtils.getCnname("CmsSurvey","table_name")%>列表
		&nbsp;&nbsp;
		
		<c:choose>
        	<c:when test="${param.fromiframe eq null or param.fromiframe eq ''}">
            <a class="button iframe" href="${ctx}/${actionBasePath}/create.do" title="新增">新增</a>
		 &nbsp;&nbsp;
		 <a class="button" onClick="if(confirm('确定要删除所选数据吗？')) deleteidsrt();" title="删除所选">删除所选</a>
            </c:when>
            <c:otherwise>
            
            </c:otherwise>
        </c:choose>
		
		
		 
		 &nbsp;&nbsp;
		 ${pg.totalCount}条记录
		 &nbsp;&nbsp;
		 <a class="button" onClick="$('#queryForm').submit();">刷新</a>
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
						<th id="id_000"><span onClick="newsort('<%=CmsSurvey.ALIAS_ID%>');"><%=JSTLTagUtils.getCnname("CmsSurvey",CmsSurvey.ALIAS_ID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="CNNAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="cnname_000"><span onClick="newsort('<%=CmsSurvey.ALIAS_CNNAME%>');"><%=JSTLTagUtils.getCnname("CmsSurvey",CmsSurvey.ALIAS_CNNAME)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="ENNAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="enname_000"><span onClick="newsort('<%=CmsSurvey.ALIAS_ENNAME%>');"><%=JSTLTagUtils.getCnname("CmsSurvey",CmsSurvey.ALIAS_ENNAME)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="SURVEY_TYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="surveyType_000"><span onClick="newsort('<%=CmsSurvey.ALIAS_SURVEY_TYPE%>');"><%=JSTLTagUtils.getCnname("CmsSurvey",CmsSurvey.ALIAS_SURVEY_TYPE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="LISTCOUNT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="listcount_000"><span onClick="newsort('<%=CmsSurvey.ALIAS_LISTCOUNT%>');"><%=JSTLTagUtils.getCnname("CmsSurvey",CmsSurvey.ALIAS_LISTCOUNT)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="SURVEYCOUNT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="surveycount_000"><span onClick="newsort('<%=CmsSurvey.ALIAS_SURVEYCOUNT%>');"><%=JSTLTagUtils.getCnname("CmsSurvey",CmsSurvey.ALIAS_SURVEYCOUNT)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="TAGS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="tags_000"><span onClick="newsort('<%=CmsSurvey.ALIAS_TAGS%>');"><%=JSTLTagUtils.getCnname("CmsSurvey",CmsSurvey.ALIAS_TAGS)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="DECLEARATION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="declearation_000"><span onClick="newsort('<%=CmsSurvey.ALIAS_DECLEARATION%>');"><%=JSTLTagUtils.getCnname("CmsSurvey",CmsSurvey.ALIAS_DECLEARATION)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="COVERIMG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="coverimg_000"><span onClick="newsort('<%=CmsSurvey.ALIAS_COVERIMG%>');"><%=JSTLTagUtils.getCnname("CmsSurvey",CmsSurvey.ALIAS_COVERIMG)%></span></th>
					</c:if>
			
				<!-- 
				
			
                
                	<c:set var="tt" value="STATUS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="status_000"><span onclick="newsort('<%=CmsSurvey.ALIAS_STATUS%>');"><%=JSTLTagUtils.getCnname("CmsSurvey",CmsSurvey.ALIAS_STATUS)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="ADDITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="addition_000"><span onclick="newsort('<%=CmsSurvey.ALIAS_ADDITION%>');"><%=JSTLTagUtils.getCnname("CmsSurvey",CmsSurvey.ALIAS_ADDITION)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="CREATETIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="createtimelong_000"><span onclick="newsort('<%=CmsSurvey.ALIAS_CREATETIMELONG%>');"><%=JSTLTagUtils.getCnname("CmsSurvey",CmsSurvey.ALIAS_CREATETIMELONG)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="MODIFYTIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="modifytimelong_000"><span onclick="newsort('<%=CmsSurvey.ALIAS_MODIFYTIMELONG%>');"><%=JSTLTagUtils.getCnname("CmsSurvey",CmsSurvey.ALIAS_MODIFYTIMELONG)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="CREATEUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="createuser_000"><span onclick="newsort('<%=CmsSurvey.ALIAS_CREATEUSER%>');"><%=JSTLTagUtils.getCnname("CmsSurvey",CmsSurvey.ALIAS_CREATEUSER)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="MODIFYUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="modifyuser_000"><span onclick="newsort('<%=CmsSurvey.ALIAS_MODIFYUSER%>');"><%=JSTLTagUtils.getCnname("CmsSurvey",CmsSurvey.ALIAS_MODIFYUSER)%></span></th>
					</c:if>
				-->	
			
				
			
                
                	<c:set var="tt" value="SURVEY_ID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="surveyId_000"><span onClick="newsort('<%=CmsSurvey.ALIAS_SURVEY_ID%>');"><%=JSTLTagUtils.getCnname("CmsSurvey",CmsSurvey.ALIAS_SURVEY_ID)%></span></th>
					</c:if>
			
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
				
                	<c:set var="tt" value="CNNAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="cnname_${v.id}" class="td123 cnnameTd">
${my:showcont('CmsSurvey','cnname',v.cnname,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="ENNAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="enname_${v.id}" class="td123 ennameTd">
${my:showcont('CmsSurvey','enname',v.enname,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="SURVEY_TYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="surveyType_${v.id}" class="td123 surveyTypeTd">
${my:showcont('CmsSurvey','surveyType',v.surveyType,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="LISTCOUNT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="listcount_${v.id}" class="td123 listcountTd">
${my:showcont('CmsSurvey','listcount',v.listcount,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="SURVEYCOUNT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="surveycount_${v.id}" class="td123 surveycountTd">
${my:showcont('CmsSurvey','surveycount',v.surveycount,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="TAGS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="tags_${v.id}" class="td123 tagsTd">
${my:showcont('CmsSurvey','tags',v.tags,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="DECLEARATION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="declearation_${v.id}" class="td123 declearationTd">
${my:showcont('CmsSurvey','declearation',v.declearation,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="COVERIMG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="coverimg_${v.id}" class="td123 coverimgTd">
${my:showcont('CmsSurvey','coverimg',v.coverimg,0 )}							</td>
					</c:if>
				
				<!-- 
                	<c:set var="tt" value="STATUS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="status_${v.id}" class="td123 statusTd">
${my:showcont('CmsSurvey','status',v.status,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="ADDITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="addition_${v.id}" class="td123 additionTd">
${my:showcont('CmsSurvey','addition',v.addition,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="CREATETIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createtimelong_${v.id}" class="td123 createtimelongTd">
${my:showcont('CmsSurvey','createtimelong',v.createtimelong,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="MODIFYTIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="modifytimelong_${v.id}" class="td123 modifytimelongTd">
${my:showcont('CmsSurvey','modifytimelong',v.modifytimelong,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="CREATEUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createuser_${v.id}" class="td123 createuserTd">
${my:showcont('CmsSurvey','createuser',v.createuser,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="MODIFYUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="modifyuser_${v.id}" class="td123 modifyuserTd">
${my:showcont('CmsSurvey','modifyuser',v.modifyuser,0 )}							</td>
					</c:if>
				
				--> 
                	<c:set var="tt" value="SURVEY_ID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="surveyId_${v.id}" class="td123 surveyIdTd">
${my:showcont('CmsSurvey','surveyId',v.surveyId,0 )}							</td>
					</c:if>
				
                
                <td id="operate_${v.id}" class="operate111">
                  <!-- Icons-->
             	<c:choose>
        	<c:when test="${param.fromiframe eq null or param.fromiframe eq ''}">
        		<!--
            	<a class="xinzeng111" href="${ctx}/${actionBasePath}/create.do" title="新增"><img src="${ctx}/admin/resources/images/icons/pencil.png" alt="新增" /></a>
                 -->
                  <a href="#" onClick="if(confirm('您确定要删除这条数据吗？')) window.location.href='${ctx}/${actionBasePath}/delete.do?items=${v.id}';" title="删除"><img src="${ctx}/admin/resources/images/icons/cross.png" alt="删除" /></a>
                  <a class="iframe" href="${ctx}/${actionBasePath}/edit.do?id=${v.id}" title="修改"><img src="${ctx}/admin/resources/images/icons/hammer_screwdriver.png" alt="修改" /></a> 
${my:input('CmsSurvey','list_iframe',v.id,-1,0 )}${my:input('CmsSurvey','list_blank',v.id,-1,0 )}
           
            </c:when>
            <c:otherwise>
            	<a class="button" href="#" onClick="parent.didiframe(obj[${vs.index}],'${param.params}');">选取</a>
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
			<a href="#" class="button" onClick="$('#queryForm').submit();">查询</a>
				&nbsp;&nbsp;
				<a href="#" class="button" onClick="$('#queryForm').reset();">重置</a>
				<br/>
			
			<input type="hidden" id="pageNumber" name="pageNumber" value="${param.pageNumber}"/>
			<input type="hidden" id="pageSize" name="pageSize" value="10" />
			<input type="hidden" id="sort" name="sort" value="${param.sort}" />
			<input type="hidden" id="fromiframe" name="fromiframe" value="${param.fromiframe}" />
			<input type="hidden" id="params" name="params" value="${param.params}" />
			<fieldset>
			
			 <p id="id_formp">
              <label><%=JSTLTagUtils.getCnname("CmsSurvey",CmsSurvey.ALIAS_ID)%></label>
${my:input('CmsSurvey','id',param.id,0,-1 )}						
						
              </p>
			
			 <p id="cnname_formp">
              <label><%=JSTLTagUtils.getCnname("CmsSurvey",CmsSurvey.ALIAS_CNNAME)%></label>
${my:input('CmsSurvey','cnname',param.cnname,0,-1 )}						
						
              </p>
			
			 <p id="enname_formp">
              <label><%=JSTLTagUtils.getCnname("CmsSurvey",CmsSurvey.ALIAS_ENNAME)%></label>
${my:input('CmsSurvey','enname',param.enname,0,-1 )}						
						
              </p>
			
			 <p id="surveyType_formp">
              <label><%=JSTLTagUtils.getCnname("CmsSurvey",CmsSurvey.ALIAS_SURVEY_TYPE)%></label>
${my:input('CmsSurvey','surveyType',param.surveyType,0,-1 )}						
						
              </p>
			
			 <p id="listcount_formp">
              <label><%=JSTLTagUtils.getCnname("CmsSurvey",CmsSurvey.ALIAS_LISTCOUNT)%></label>
${my:input('CmsSurvey','listcount',param.listcount,0,-1 )}						
						
              </p>
			
			 <p id="surveycount_formp">
              <label><%=JSTLTagUtils.getCnname("CmsSurvey",CmsSurvey.ALIAS_SURVEYCOUNT)%></label>
${my:input('CmsSurvey','surveycount',param.surveycount,0,-1 )}						
						
              </p>
			
			 <p id="tags_formp">
              <label><%=JSTLTagUtils.getCnname("CmsSurvey",CmsSurvey.ALIAS_TAGS)%></label>
${my:input('CmsSurvey','tags',param.tags,0,-1 )}						
						
              </p>
			
			 <p id="declearation_formp">
              <label><%=JSTLTagUtils.getCnname("CmsSurvey",CmsSurvey.ALIAS_DECLEARATION)%></label>
${my:input('CmsSurvey','declearation',param.declearation,0,-1 )}						
						
              </p>
			
			 <p id="coverimg_formp">
              <label><%=JSTLTagUtils.getCnname("CmsSurvey",CmsSurvey.ALIAS_COVERIMG)%></label>
${my:input('CmsSurvey','coverimg',param.coverimg,0,-1 )}						
						
              </p>
			
				<!-- 
			 <p id="status_formp">
              <label><%=JSTLTagUtils.getCnname("CmsSurvey",CmsSurvey.ALIAS_STATUS)%></label>
${my:input('CmsSurvey','status',param.status,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="addition_formp">
              <label><%=JSTLTagUtils.getCnname("CmsSurvey",CmsSurvey.ALIAS_ADDITION)%></label>
${my:input('CmsSurvey','addition',param.addition,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="createtimelong_formp">
              <label><%=JSTLTagUtils.getCnname("CmsSurvey",CmsSurvey.ALIAS_CREATETIMELONG)%></label>
${my:input('CmsSurvey','createtimelong',param.createtimelong,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="modifytimelong_formp">
              <label><%=JSTLTagUtils.getCnname("CmsSurvey",CmsSurvey.ALIAS_MODIFYTIMELONG)%></label>
${my:input('CmsSurvey','modifytimelong',param.modifytimelong,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="createuser_formp">
              <label><%=JSTLTagUtils.getCnname("CmsSurvey",CmsSurvey.ALIAS_CREATEUSER)%></label>
${my:input('CmsSurvey','createuser',param.createuser,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="modifyuser_formp">
              <label><%=JSTLTagUtils.getCnname("CmsSurvey",CmsSurvey.ALIAS_MODIFYUSER)%></label>
${my:input('CmsSurvey','modifyuser',param.modifyuser,0,-1 )}						
						
              </p>
				-->
			
			 <p id="surveyId_formp">
              <label><%=JSTLTagUtils.getCnname("CmsSurvey",CmsSurvey.ALIAS_SURVEY_ID)%></label>
${my:input('CmsSurvey','surveyId',param.surveyId,0,-1 )}						
						
              </p>
				</fieldset>
				<br/>
				<a href="#" class="button" onClick="$('#queryForm').submit();">查询</a>
				&nbsp;&nbsp;
				<a href="#" class="button" onClick="$('#queryForm').reset();">重置</a>
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
