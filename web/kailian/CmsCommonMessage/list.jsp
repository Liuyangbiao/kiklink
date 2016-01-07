<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsCommonMessage.TABLE_ALIAS);
	Map map = new HashMap();
		//map.put("ID", "1");
		//map.put("FROMUSERID", "1");
		map.put("FROMUSERNAME", "1");
		//map.put("FROMUSERPHOTO", "1");
		//map.put("TOUSERID", "1");
		map.put("TOUSERNAME", "1");
		//map.put("TOUSERPHOTO", "1");
		//map.put("MESSAGETYPE", "1");
		//map.put("CONTENTTYPE", "1");
		map.put("CONTENT", "1");
		//map.put("STATUS", "1");
		//map.put("ADDITION", "1");
		map.put("CREATETIMELONG", "1");
		map.put("MODIFYTIMELONG", "1");
		map.put("CREATEUSER", "1");
		map.put("MODIFYUSER", "1");
	request.setAttribute("showmap", map);
 %>
<c:set var="actionBasePath" value="/kailian/CmsCommonMessage" />
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
        <h3><%=JSTLTagUtils.getCnname("CmsCommonMessage","table_name")%>列表
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
						<th id="id_000"><span onclick="newsort('<%=CmsCommonMessage.ALIAS_ID%>');"><%=JSTLTagUtils.getCnname("CmsCommonMessage",CmsCommonMessage.ALIAS_ID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="FROMUSERID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="fromuserid_000"><span onclick="newsort('<%=CmsCommonMessage.ALIAS_FROMUSERID%>');"><%=JSTLTagUtils.getCnname("CmsCommonMessage",CmsCommonMessage.ALIAS_FROMUSERID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="FROMUSERNAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="fromusername_000"><span onclick="newsort('<%=CmsCommonMessage.ALIAS_FROMUSERNAME%>');"><%=JSTLTagUtils.getCnname("CmsCommonMessage",CmsCommonMessage.ALIAS_FROMUSERNAME)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="FROMUSERPHOTO"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="fromuserphoto_000"><span onclick="newsort('<%=CmsCommonMessage.ALIAS_FROMUSERPHOTO%>');"><%=JSTLTagUtils.getCnname("CmsCommonMessage",CmsCommonMessage.ALIAS_FROMUSERPHOTO)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="TOUSERID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="touserid_000"><span onclick="newsort('<%=CmsCommonMessage.ALIAS_TOUSERID%>');"><%=JSTLTagUtils.getCnname("CmsCommonMessage",CmsCommonMessage.ALIAS_TOUSERID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="TOUSERNAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="tousername_000"><span onclick="newsort('<%=CmsCommonMessage.ALIAS_TOUSERNAME%>');"><%=JSTLTagUtils.getCnname("CmsCommonMessage",CmsCommonMessage.ALIAS_TOUSERNAME)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="TOUSERPHOTO"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="touserphoto_000"><span onclick="newsort('<%=CmsCommonMessage.ALIAS_TOUSERPHOTO%>');"><%=JSTLTagUtils.getCnname("CmsCommonMessage",CmsCommonMessage.ALIAS_TOUSERPHOTO)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="MESSAGETYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="messagetype_000"><span onclick="newsort('<%=CmsCommonMessage.ALIAS_MESSAGETYPE%>');"><%=JSTLTagUtils.getCnname("CmsCommonMessage",CmsCommonMessage.ALIAS_MESSAGETYPE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="CONTENTTYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="contenttype_000"><span onclick="newsort('<%=CmsCommonMessage.ALIAS_CONTENTTYPE%>');"><%=JSTLTagUtils.getCnname("CmsCommonMessage",CmsCommonMessage.ALIAS_CONTENTTYPE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="CONTENT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="content_000"><span onclick="newsort('<%=CmsCommonMessage.ALIAS_CONTENT%>');"><%=JSTLTagUtils.getCnname("CmsCommonMessage",CmsCommonMessage.ALIAS_CONTENT)%></span></th>
					</c:if>
			
				<!-- 
				
			
                
                	<c:set var="tt" value="STATUS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="status_000"><span onclick="newsort('<%=CmsCommonMessage.ALIAS_STATUS%>');"><%=JSTLTagUtils.getCnname("CmsCommonMessage",CmsCommonMessage.ALIAS_STATUS)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="ADDITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="addition_000"><span onclick="newsort('<%=CmsCommonMessage.ALIAS_ADDITION%>');"><%=JSTLTagUtils.getCnname("CmsCommonMessage",CmsCommonMessage.ALIAS_ADDITION)%></span></th>
					</c:if>
				-->	
			
				
				
			
                
                	<c:set var="tt" value="CREATETIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="createtimelong_000"><span onclick="newsort('<%=CmsCommonMessage.ALIAS_CREATETIMELONG%>');">创建时间</span></th>
					</c:if>
				
			
				<!-- 
				
			
                
                	<c:set var="tt" value="MODIFYTIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="modifytimelong_000"><span onclick="newsort('<%=CmsCommonMessage.ALIAS_MODIFYTIMELONG%>');"><%=JSTLTagUtils.getCnname("CmsCommonMessage",CmsCommonMessage.ALIAS_MODIFYTIMELONG)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="CREATEUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="createuser_000"><span onclick="newsort('<%=CmsCommonMessage.ALIAS_CREATEUSER%>');"><%=JSTLTagUtils.getCnname("CmsCommonMessage",CmsCommonMessage.ALIAS_CREATEUSER)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="MODIFYUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="modifyuser_000"><span onclick="newsort('<%=CmsCommonMessage.ALIAS_MODIFYUSER%>');"><%=JSTLTagUtils.getCnname("CmsCommonMessage",CmsCommonMessage.ALIAS_MODIFYUSER)%></span></th>
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
				
                	<c:set var="tt" value="FROMUSERID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="fromuserid_${v.id}" class="td123 fromuseridTd">
${my:showcont('CmsCommonMessage','fromuserid',v.fromuserid,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="FROMUSERNAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="fromusername_${v.id}" class="td123 fromusernameTd">
${my:showcont('CmsCommonMessage','fromusername',v.fromusername,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="FROMUSERPHOTO"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="fromuserphoto_${v.id}" class="td123 fromuserphotoTd">
${my:showcont('CmsCommonMessage','fromuserphoto',v.fromuserphoto,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="TOUSERID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="touserid_${v.id}" class="td123 touseridTd">
${my:showcont('CmsCommonMessage','touserid',v.touserid,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="TOUSERNAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="tousername_${v.id}" class="td123 tousernameTd">
${my:showcont('CmsCommonMessage','tousername',v.tousername,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="TOUSERPHOTO"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="touserphoto_${v.id}" class="td123 touserphotoTd">
${my:showcont('CmsCommonMessage','touserphoto',v.touserphoto,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="MESSAGETYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="messagetype_${v.id}" class="td123 messagetypeTd">
${my:showcont('CmsCommonMessage','messagetype',v.messagetype,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="CONTENTTYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="contenttype_${v.id}" class="td123 contenttypeTd">
${my:showcont('CmsCommonMessage','contenttype',v.contenttype,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="CONTENT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="content_${v.id}" class="td123 contentTd">
${my:showcont('CmsCommonMessage','content',v.content,0 )}							</td>
					</c:if>
				
				<!-- 
                	<c:set var="tt" value="STATUS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="status_${v.id}" class="td123 statusTd">
${my:showcont('CmsCommonMessage','status',v.status,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="ADDITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="addition_${v.id}" class="td123 additionTd">
${my:showcont('CmsCommonMessage','addition',v.addition,0 )}							</td>
					</c:if>
				
				--> 
                	<c:set var="tt" value="CREATETIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createtimelong_${v.id}" class="td123 createtimelongTd">
		${my:transTime(v.createtimelong)}				</td>
					</c:if>
				
				<!-- 
                	<c:set var="tt" value="MODIFYTIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="modifytimelong_${v.id}" class="td123 modifytimelongTd">
${my:showcont('CmsCommonMessage','modifytimelong',v.modifytimelong,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="CREATEUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createuser_${v.id}" class="td123 createuserTd">
${my:showcont('CmsCommonMessage','createuser',v.createuser,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="MODIFYUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="modifyuser_${v.id}" class="td123 modifyuserTd">
${my:showcont('CmsCommonMessage','modifyuser',v.modifyuser,0 )}							</td>
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
${my:input('CmsCommonMessage','list_iframe',v.id,-1,0 )}${my:input('CmsCommonMessage','list_blank',v.id,-1,0 )}
           
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
              <label><%=JSTLTagUtils.getCnname("CmsCommonMessage",CmsCommonMessage.ALIAS_ID)%></label>
${my:input('CmsCommonMessage','id',param.id,0,-1 )}						
						
              </p>
			
			 <p id="fromuserid_formp">
              <label><%=JSTLTagUtils.getCnname("CmsCommonMessage",CmsCommonMessage.ALIAS_FROMUSERID)%></label>
${my:input('CmsCommonMessage','fromuserid',param.fromuserid,0,-1 )}						
						
              </p>
			
			 <p id="fromusername_formp">
              <label><%=JSTLTagUtils.getCnname("CmsCommonMessage",CmsCommonMessage.ALIAS_FROMUSERNAME)%></label>
${my:input('CmsCommonMessage','fromusername',param.fromusername,0,-1 )}						
						
              </p>
			
			 <p id="fromuserphoto_formp">
              <label><%=JSTLTagUtils.getCnname("CmsCommonMessage",CmsCommonMessage.ALIAS_FROMUSERPHOTO)%></label>
${my:input('CmsCommonMessage','fromuserphoto',param.fromuserphoto,0,-1 )}						
						
              </p>
			
			 <p id="touserid_formp">
              <label><%=JSTLTagUtils.getCnname("CmsCommonMessage",CmsCommonMessage.ALIAS_TOUSERID)%></label>
${my:input('CmsCommonMessage','touserid',param.touserid,0,-1 )}						
						
              </p>
			
			 <p id="tousername_formp">
              <label><%=JSTLTagUtils.getCnname("CmsCommonMessage",CmsCommonMessage.ALIAS_TOUSERNAME)%></label>
${my:input('CmsCommonMessage','tousername',param.tousername,0,-1 )}						
						
              </p>
			
			 <p id="touserphoto_formp">
              <label><%=JSTLTagUtils.getCnname("CmsCommonMessage",CmsCommonMessage.ALIAS_TOUSERPHOTO)%></label>
${my:input('CmsCommonMessage','touserphoto',param.touserphoto,0,-1 )}						
						
              </p>
			
			 <p id="messagetype_formp">
              <label><%=JSTLTagUtils.getCnname("CmsCommonMessage",CmsCommonMessage.ALIAS_MESSAGETYPE)%></label>
${my:input('CmsCommonMessage','messagetype',param.messagetype,0,-1 )}						
						
              </p>
			
			 <p id="contenttype_formp">
              <label><%=JSTLTagUtils.getCnname("CmsCommonMessage",CmsCommonMessage.ALIAS_CONTENTTYPE)%></label>
${my:input('CmsCommonMessage','contenttype',param.contenttype,0,-1 )}						
						
              </p>
			
			 <p id="content_formp">
              <label><%=JSTLTagUtils.getCnname("CmsCommonMessage",CmsCommonMessage.ALIAS_CONTENT)%></label>
${my:input('CmsCommonMessage','content',param.content,0,-1 )}						
						
              </p>
			
				<!-- 
			 <p id="status_formp">
              <label><%=JSTLTagUtils.getCnname("CmsCommonMessage",CmsCommonMessage.ALIAS_STATUS)%></label>
${my:input('CmsCommonMessage','status',param.status,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="addition_formp">
              <label><%=JSTLTagUtils.getCnname("CmsCommonMessage",CmsCommonMessage.ALIAS_ADDITION)%></label>
${my:input('CmsCommonMessage','addition',param.addition,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="createtimelong_formp">
              <label><%=JSTLTagUtils.getCnname("CmsCommonMessage",CmsCommonMessage.ALIAS_CREATETIMELONG)%></label>
${my:input('CmsCommonMessage','createtimelong',param.createtimelong,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="modifytimelong_formp">
              <label><%=JSTLTagUtils.getCnname("CmsCommonMessage",CmsCommonMessage.ALIAS_MODIFYTIMELONG)%></label>
${my:input('CmsCommonMessage','modifytimelong',param.modifytimelong,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="createuser_formp">
              <label><%=JSTLTagUtils.getCnname("CmsCommonMessage",CmsCommonMessage.ALIAS_CREATEUSER)%></label>
${my:input('CmsCommonMessage','createuser',param.createuser,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="modifyuser_formp">
              <label><%=JSTLTagUtils.getCnname("CmsCommonMessage",CmsCommonMessage.ALIAS_MODIFYUSER)%></label>
${my:input('CmsCommonMessage','modifyuser',param.modifyuser,0,-1 )}						
						
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
