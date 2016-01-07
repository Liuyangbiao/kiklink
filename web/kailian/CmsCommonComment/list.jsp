<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsCommonComment.TABLE_ALIAS);
	Map map = new HashMap();
		//map.put("ID", "1");
		//map.put("USERID", "1");
		map.put("USERNAME", "1");
		//map.put("USERPHOTO", "1");
		map.put("TARGET_TYPE", "1");
		//map.put("TARGET_ID", "1");
		//map.put("COMMENT_TYPE", "1");
		map.put("COMMENT", "1");
		/*
		map.put("POINT_DESCRIPTION_MATCH", "1");
		map.put("POINT_PERFATIONAL", "1");
		map.put("POINT_SERVICE_ATTITUDE", "1");
		map.put("POINT_APPOINTMENT_SUCCESSFUL", "1");
		*/
		//map.put("STATUS", "1");
		//map.put("ADDITION", "1");
		//map.put("CREATETIMELONG", "1");
		//map.put("MODIFYTIMELONG", "1");
		//map.put("CREATEUSER", "1");
		//map.put("MODIFYUSER", "1");
		//map.put("TARGETID2", "1");
	request.setAttribute("showmap", map);
 %>
<c:set var="actionBasePath" value="/kailian/CmsCommonComment" />
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
        <h3><%=JSTLTagUtils.getCnname("CmsCommonComment","table_name")%>列表
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
						<th id="id_000"><span onclick="newsort('<%=CmsCommonComment.ALIAS_ID%>');"><%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_ID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="USERID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="userid_000"><span onclick="newsort('<%=CmsCommonComment.ALIAS_USERID%>');"><%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_USERID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="USERNAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="username_000"><span onclick="newsort('<%=CmsCommonComment.ALIAS_USERNAME%>');"><%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_USERNAME)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="USERPHOTO"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="userphoto_000"><span onclick="newsort('<%=CmsCommonComment.ALIAS_USERPHOTO%>');"><%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_USERPHOTO)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="TARGET_TYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="targetType_000"><span onclick="newsort('<%=CmsCommonComment.ALIAS_TARGET_TYPE%>');"><%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_TARGET_TYPE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="TARGET_ID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="targetId_000"><span onclick="newsort('<%=CmsCommonComment.ALIAS_TARGET_ID%>');"><%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_TARGET_ID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="COMMENT_TYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="commentType_000"><span onclick="newsort('<%=CmsCommonComment.ALIAS_COMMENT_TYPE%>');"><%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_COMMENT_TYPE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="COMMENT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
                	<th id="comment_000">平均分</th>
						<th id="comment_000"><span onclick="newsort('<%=CmsCommonComment.ALIAS_COMMENT%>');"><%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_COMMENT)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="POINT_DESCRIPTION_MATCH"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="pointDescriptionMatch_000"><span onclick="newsort('<%=CmsCommonComment.ALIAS_POINT_DESCRIPTION_MATCH%>');"><%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_POINT_DESCRIPTION_MATCH)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="POINT_PERFATIONAL"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="pointPerfational_000"><span onclick="newsort('<%=CmsCommonComment.ALIAS_POINT_PERFATIONAL%>');"><%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_POINT_PERFATIONAL)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="POINT_SERVICE_ATTITUDE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="pointServiceAttitude_000"><span onclick="newsort('<%=CmsCommonComment.ALIAS_POINT_SERVICE_ATTITUDE%>');"><%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_POINT_SERVICE_ATTITUDE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="POINT_APPOINTMENT_SUCCESSFUL"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="pointAppointmentSuccessful_000"><span onclick="newsort('<%=CmsCommonComment.ALIAS_POINT_APPOINTMENT_SUCCESSFUL%>');"><%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_POINT_APPOINTMENT_SUCCESSFUL)%></span></th>
					</c:if>
			
				<!-- 
				
			
                
                	<c:set var="tt" value="STATUS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="status_000"><span onclick="newsort('<%=CmsCommonComment.ALIAS_STATUS%>');"><%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_STATUS)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="ADDITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="addition_000"><span onclick="newsort('<%=CmsCommonComment.ALIAS_ADDITION%>');"><%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_ADDITION)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="CREATETIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="createtimelong_000"><span onclick="newsort('<%=CmsCommonComment.ALIAS_CREATETIMELONG%>');"><%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_CREATETIMELONG)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="MODIFYTIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="modifytimelong_000"><span onclick="newsort('<%=CmsCommonComment.ALIAS_MODIFYTIMELONG%>');"><%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_MODIFYTIMELONG)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="CREATEUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="createuser_000"><span onclick="newsort('<%=CmsCommonComment.ALIAS_CREATEUSER%>');"><%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_CREATEUSER)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="MODIFYUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="modifyuser_000"><span onclick="newsort('<%=CmsCommonComment.ALIAS_MODIFYUSER%>');"><%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_MODIFYUSER)%></span></th>
					</c:if>
				-->	
			
				
			
                
                	<c:set var="tt" value="TARGETID2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="targetid2_000"><span onclick="newsort('<%=CmsCommonComment.ALIAS_TARGETID2%>');"><%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_TARGETID2)%></span></th>
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
				
                	<c:set var="tt" value="USERID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="userid_${v.id}" class="td123 useridTd">
${my:showcont('CmsCommonComment','userid',v.userid,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="USERNAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="username_${v.id}" class="td123 usernameTd">
${my:showcont('CmsCommonComment','username',v.username,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="USERPHOTO"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="userphoto_${v.id}" class="td123 userphotoTd">
${my:showcont('CmsCommonComment','userphoto',v.userphoto,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="TARGET_TYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="targetType_${v.id}" class="td123 targetTypeTd">
${my:showcont('CmsCommonComment','targetType',v.targetType,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="TARGET_ID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="targetId_${v.id}" class="td123 targetIdTd">
${my:showcont('CmsCommonComment','targetId',v.targetId,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="COMMENT_TYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="commentType_${v.id}" class="td123 commentTypeTd">
${my:showcont('CmsCommonComment','commentType',v.commentType,0 )}							</td>
					</c:if>
				
				<td id="point_${v.id}" class="td123 pointTd">
${my:showcont('CmsCommonComment','point',v.point, 0 )}							</td>
				
                	<c:set var="tt" value="COMMENT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="comment_${v.id}" class="td123 commentTd">
${my:showcont('CmsCommonComment','comment',v.comment,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="POINT_DESCRIPTION_MATCH"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="pointDescriptionMatch_${v.id}" class="td123 pointDescriptionMatchTd">
${my:showcont('CmsCommonComment','pointDescriptionMatch',v.pointDescriptionMatch,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="POINT_PERFATIONAL"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="pointPerfational_${v.id}" class="td123 pointPerfationalTd">
${my:showcont('CmsCommonComment','pointPerfational',v.pointPerfational,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="POINT_SERVICE_ATTITUDE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="pointServiceAttitude_${v.id}" class="td123 pointServiceAttitudeTd">
${my:showcont('CmsCommonComment','pointServiceAttitude',v.pointServiceAttitude,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="POINT_APPOINTMENT_SUCCESSFUL"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="pointAppointmentSuccessful_${v.id}" class="td123 pointAppointmentSuccessfulTd">
${my:showcont('CmsCommonComment','pointAppointmentSuccessful',v.pointAppointmentSuccessful,0 )}							</td>
					</c:if>
				
				<!-- 
                	<c:set var="tt" value="STATUS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="status_${v.id}" class="td123 statusTd">
${my:showcont('CmsCommonComment','status',v.status,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="ADDITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="addition_${v.id}" class="td123 additionTd">
${my:showcont('CmsCommonComment','addition',v.addition,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="CREATETIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createtimelong_${v.id}" class="td123 createtimelongTd">
${my:showcont('CmsCommonComment','createtimelong',v.createtimelong,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="MODIFYTIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="modifytimelong_${v.id}" class="td123 modifytimelongTd">
${my:showcont('CmsCommonComment','modifytimelong',v.modifytimelong,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="CREATEUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createuser_${v.id}" class="td123 createuserTd">
${my:showcont('CmsCommonComment','createuser',v.createuser,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="MODIFYUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="modifyuser_${v.id}" class="td123 modifyuserTd">
${my:showcont('CmsCommonComment','modifyuser',v.modifyuser,0 )}							</td>
					</c:if>
				
				--> 
                	<c:set var="tt" value="TARGETID2"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="targetid2_${v.id}" class="td123 targetid2Td">
${my:showcont('CmsCommonComment','targetid2',v.targetid2,0 )}							</td>
					</c:if>
				
                
                <td id="operate_${v.id}" class="operate111">
                  <!-- Icons-->
             	<c:choose>
        	<c:when test="${param.fromiframe eq null or param.fromiframe eq ''}">
        		<!--
            	<a class="xinzeng111" href="${ctx}/${actionBasePath}/create.do" title="新增"><img src="${ctx}/admin/resources/images/icons/pencil.png" alt="新增" /></a>
                 -->
                  <a href="#" onclick="if(confirm('您确定要删除这条数据吗？')) window.location.href='${ctx}/${actionBasePath}/delete.do?items=${v.id}';" title="删除"><img src="${ctx}/admin/resources/images/icons/cross.png" alt="删除" /></a>
                  <a class="iframe" href="${ctx}/${actionBasePath}/edit.do?id=${v.id}" title="修改"><img src="${ctx}/admin/resources/images/icons/hammer_screwdriver.png" alt="修改" /></a> 
${my:input('CmsCommonComment','list_iframe',v.id,-1,0 )}${my:input('CmsCommonComment','list_blank',v.id,-1,0 )}
           
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
              <label><%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_ID)%></label>
${my:input('CmsCommonComment','id',param.id,0,-1 )}						
						
              </p>
			
			 <p id="userid_formp">
              <label><%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_USERID)%></label>
${my:input('CmsCommonComment','userid',param.userid,0,-1 )}						
						
              </p>
			
			 <p id="username_formp">
              <label><%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_USERNAME)%></label>
${my:input('CmsCommonComment','username',param.username,0,-1 )}						
						
              </p>
			
			 <p id="userphoto_formp">
              <label><%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_USERPHOTO)%></label>
${my:input('CmsCommonComment','userphoto',param.userphoto,0,-1 )}						
						
              </p>
			
			 <p id="targetType_formp">
              <label><%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_TARGET_TYPE)%></label>
${my:input('CmsCommonComment','targetType',param.targetType,0,-1 )}						
						
              </p>
			
			 <p id="targetId_formp">
              <label><%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_TARGET_ID)%></label>
${my:input('CmsCommonComment','targetId',param.targetId,0,-1 )}						
						
              </p>
			
			 <p id="commentType_formp">
              <label><%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_COMMENT_TYPE)%></label>
${my:input('CmsCommonComment','commentType',param.commentType,0,-1 )}						
						
              </p>
			
			 <p id="comment_formp">
              <label><%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_COMMENT)%></label>
${my:input('CmsCommonComment','comment',param.comment,0,-1 )}						
						
              </p>
			
			 <p id="pointDescriptionMatch_formp">
              <label><%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_POINT_DESCRIPTION_MATCH)%></label>
${my:input('CmsCommonComment','pointDescriptionMatch',param.pointDescriptionMatch,0,-1 )}						
						
              </p>
			
			 <p id="pointPerfational_formp">
              <label><%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_POINT_PERFATIONAL)%></label>
${my:input('CmsCommonComment','pointPerfational',param.pointPerfational,0,-1 )}						
						
              </p>
			
			 <p id="pointServiceAttitude_formp">
              <label><%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_POINT_SERVICE_ATTITUDE)%></label>
${my:input('CmsCommonComment','pointServiceAttitude',param.pointServiceAttitude,0,-1 )}						
						
              </p>
			
			 <p id="pointAppointmentSuccessful_formp">
              <label><%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_POINT_APPOINTMENT_SUCCESSFUL)%></label>
${my:input('CmsCommonComment','pointAppointmentSuccessful',param.pointAppointmentSuccessful,0,-1 )}						
						
              </p>
			
				<!-- 
			 <p id="status_formp">
              <label><%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_STATUS)%></label>
${my:input('CmsCommonComment','status',param.status,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="addition_formp">
              <label><%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_ADDITION)%></label>
${my:input('CmsCommonComment','addition',param.addition,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="createtimelong_formp">
              <label><%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_CREATETIMELONG)%></label>
${my:input('CmsCommonComment','createtimelong',param.createtimelong,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="modifytimelong_formp">
              <label><%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_MODIFYTIMELONG)%></label>
${my:input('CmsCommonComment','modifytimelong',param.modifytimelong,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="createuser_formp">
              <label><%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_CREATEUSER)%></label>
${my:input('CmsCommonComment','createuser',param.createuser,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="modifyuser_formp">
              <label><%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_MODIFYUSER)%></label>
${my:input('CmsCommonComment','modifyuser',param.modifyuser,0,-1 )}						
						
              </p>
				-->
			
			 <p id="targetid2_formp">
              <label><%=JSTLTagUtils.getCnname("CmsCommonComment",CmsCommonComment.ALIAS_TARGETID2)%></label>
${my:input('CmsCommonComment','targetid2',param.targetid2,0,-1 )}						
						
              </p>
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
