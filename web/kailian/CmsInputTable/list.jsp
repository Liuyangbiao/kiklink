<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsInputTable.TABLE_ALIAS);
	Map map = new HashMap();
		map.put("ID", "1");
		map.put("CLASS_NAME", "1");
		map.put("INPUT_NAME", "1");
		map.put("CLASS_COMMENT", "1");
		map.put("INPUT_COMMENT", "1");
		map.put("INPUT_TYPE", "1");
		map.put("INPUT_EN_NAME", "1");
		map.put("INPUT_CN_NAME", "1");
		map.put("LINK_CLASS_NAME", "1");
		map.put("LINK_INPUT_NAME", "1");
		map.put("LINK_PARAM", "1");
		map.put("INPUT_ADDITION", "1");
		map.put("STATUS", "1");
		map.put("ADDITION", "1");
		map.put("CREATETIMELONG", "1");
		map.put("MODIFYTIMELONG", "1");
		map.put("CREATEUSER", "1");
		map.put("MODIFYUSER", "1");
		map.put("LUCENE_INDEX_TYPE", "1");
		map.put("MINLENGTH", "1");
		map.put("MAXLENGTH", "1");
		map.put("REQUIRED", "1");
	request.setAttribute("showmap", map);
 %>
<c:set var="actionBasePath" value="/kailian/CmsInputTable" />
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
        <h3><%=JSTLTagUtils.getCnname("CmsInputTable","table_name")%>列表
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
						<th id="id_000"><span onclick="newsort('<%=CmsInputTable.ALIAS_ID%>');"><%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_ID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="CLASS_NAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="className_000"><span onclick="newsort('<%=CmsInputTable.ALIAS_CLASS_NAME%>');"><%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_CLASS_NAME)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="INPUT_NAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="inputName_000"><span onclick="newsort('<%=CmsInputTable.ALIAS_INPUT_NAME%>');"><%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_INPUT_NAME)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="CLASS_COMMENT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="classComment_000"><span onclick="newsort('<%=CmsInputTable.ALIAS_CLASS_COMMENT%>');"><%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_CLASS_COMMENT)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="INPUT_COMMENT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="inputComment_000"><span onclick="newsort('<%=CmsInputTable.ALIAS_INPUT_COMMENT%>');"><%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_INPUT_COMMENT)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="INPUT_TYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="inputType_000"><span onclick="newsort('<%=CmsInputTable.ALIAS_INPUT_TYPE%>');"><%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_INPUT_TYPE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="INPUT_EN_NAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="inputEnName_000"><span onclick="newsort('<%=CmsInputTable.ALIAS_INPUT_EN_NAME%>');"><%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_INPUT_EN_NAME)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="INPUT_CN_NAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="inputCnName_000"><span onclick="newsort('<%=CmsInputTable.ALIAS_INPUT_CN_NAME%>');"><%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_INPUT_CN_NAME)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="LINK_CLASS_NAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="linkClassName_000"><span onclick="newsort('<%=CmsInputTable.ALIAS_LINK_CLASS_NAME%>');"><%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_LINK_CLASS_NAME)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="LINK_INPUT_NAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="linkInputName_000"><span onclick="newsort('<%=CmsInputTable.ALIAS_LINK_INPUT_NAME%>');"><%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_LINK_INPUT_NAME)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="LINK_PARAM"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="linkParam_000"><span onclick="newsort('<%=CmsInputTable.ALIAS_LINK_PARAM%>');"><%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_LINK_PARAM)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="INPUT_ADDITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="inputAddition_000"><span onclick="newsort('<%=CmsInputTable.ALIAS_INPUT_ADDITION%>');"><%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_INPUT_ADDITION)%></span></th>
					</c:if>
			
				<!-- 
				
			
                
                	<c:set var="tt" value="STATUS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="status_000"><span onclick="newsort('<%=CmsInputTable.ALIAS_STATUS%>');"><%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_STATUS)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="ADDITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="addition_000"><span onclick="newsort('<%=CmsInputTable.ALIAS_ADDITION%>');"><%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_ADDITION)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="CREATETIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="createtimelong_000"><span onclick="newsort('<%=CmsInputTable.ALIAS_CREATETIMELONG%>');"><%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_CREATETIMELONG)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="MODIFYTIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="modifytimelong_000"><span onclick="newsort('<%=CmsInputTable.ALIAS_MODIFYTIMELONG%>');"><%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_MODIFYTIMELONG)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="CREATEUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="createuser_000"><span onclick="newsort('<%=CmsInputTable.ALIAS_CREATEUSER%>');"><%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_CREATEUSER)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="MODIFYUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="modifyuser_000"><span onclick="newsort('<%=CmsInputTable.ALIAS_MODIFYUSER%>');"><%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_MODIFYUSER)%></span></th>
					</c:if>
				-->	
			
				
			
                
                	<c:set var="tt" value="LUCENE_INDEX_TYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="luceneIndexType_000"><span onclick="newsort('<%=CmsInputTable.ALIAS_LUCENE_INDEX_TYPE%>');"><%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_LUCENE_INDEX_TYPE)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="MINLENGTH"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="minlength_000"><span onclick="newsort('<%=CmsInputTable.ALIAS_MINLENGTH%>');"><%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_MINLENGTH)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="MAXLENGTH"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="maxlength_000"><span onclick="newsort('<%=CmsInputTable.ALIAS_MAXLENGTH%>');"><%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_MAXLENGTH)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="REQUIRED"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="required_000"><span onclick="newsort('<%=CmsInputTable.ALIAS_REQUIRED%>');"><%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_REQUIRED)%></span></th>
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
				
                	<c:set var="tt" value="CLASS_NAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="className_${v.id}" class="td123 classNameTd">
${my:showcont('CmsInputTable','className',v.className,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="INPUT_NAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="inputName_${v.id}" class="td123 inputNameTd">
${my:showcont('CmsInputTable','inputName',v.inputName,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="CLASS_COMMENT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="classComment_${v.id}" class="td123 classCommentTd">
${my:showcont('CmsInputTable','classComment',v.classComment,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="INPUT_COMMENT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="inputComment_${v.id}" class="td123 inputCommentTd">
${my:showcont('CmsInputTable','inputComment',v.inputComment,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="INPUT_TYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="inputType_${v.id}" class="td123 inputTypeTd">
${my:showcont('CmsInputTable','inputType',v.inputType,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="INPUT_EN_NAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="inputEnName_${v.id}" class="td123 inputEnNameTd">
${my:showcont('CmsInputTable','inputEnName',v.inputEnName,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="INPUT_CN_NAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="inputCnName_${v.id}" class="td123 inputCnNameTd">
${my:showcont('CmsInputTable','inputCnName',v.inputCnName,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="LINK_CLASS_NAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="linkClassName_${v.id}" class="td123 linkClassNameTd">
${my:showcont('CmsInputTable','linkClassName',v.linkClassName,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="LINK_INPUT_NAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="linkInputName_${v.id}" class="td123 linkInputNameTd">
${my:showcont('CmsInputTable','linkInputName',v.linkInputName,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="LINK_PARAM"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="linkParam_${v.id}" class="td123 linkParamTd">
${my:showcont('CmsInputTable','linkParam',v.linkParam,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="INPUT_ADDITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="inputAddition_${v.id}" class="td123 inputAdditionTd">
${my:showcont('CmsInputTable','inputAddition',v.inputAddition,0 )}							</td>
					</c:if>
				
				<!-- 
                	<c:set var="tt" value="STATUS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="status_${v.id}" class="td123 statusTd">
${my:showcont('CmsInputTable','status',v.status,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="ADDITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="addition_${v.id}" class="td123 additionTd">
${my:showcont('CmsInputTable','addition',v.addition,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="CREATETIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createtimelong_${v.id}" class="td123 createtimelongTd">
${my:showcont('CmsInputTable','createtimelong',v.createtimelong,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="MODIFYTIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="modifytimelong_${v.id}" class="td123 modifytimelongTd">
${my:showcont('CmsInputTable','modifytimelong',v.modifytimelong,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="CREATEUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createuser_${v.id}" class="td123 createuserTd">
${my:showcont('CmsInputTable','createuser',v.createuser,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="MODIFYUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="modifyuser_${v.id}" class="td123 modifyuserTd">
${my:showcont('CmsInputTable','modifyuser',v.modifyuser,0 )}							</td>
					</c:if>
				
				--> 
                	<c:set var="tt" value="LUCENE_INDEX_TYPE"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="luceneIndexType_${v.id}" class="td123 luceneIndexTypeTd">
${my:showcont('CmsInputTable','luceneIndexType',v.luceneIndexType,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="MINLENGTH"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="minlength_${v.id}" class="td123 minlengthTd">
${my:showcont('CmsInputTable','minlength',v.minlength,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="MAXLENGTH"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="maxlength_${v.id}" class="td123 maxlengthTd">
${my:showcont('CmsInputTable','maxlength',v.maxlength,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="REQUIRED"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="required_${v.id}" class="td123 requiredTd">
${my:showcont('CmsInputTable','required',v.required,0 )}							</td>
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
${my:input('CmsInputTable','list_iframe',v.id,-1,0 )}${my:input('CmsInputTable','list_blank',v.id,-1,0 )}
           
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
              <label><%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_ID)%></label>
${my:input('CmsInputTable','id',param.id,0,-1 )}						
						
              </p>
			
			 <p id="className_formp">
              <label><%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_CLASS_NAME)%></label>
${my:input('CmsInputTable','className',param.className,0,-1 )}						
						
              </p>
			
			 <p id="inputName_formp">
              <label><%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_INPUT_NAME)%></label>
${my:input('CmsInputTable','inputName',param.inputName,0,-1 )}						
						
              </p>
			
			 <p id="classComment_formp">
              <label><%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_CLASS_COMMENT)%></label>
${my:input('CmsInputTable','classComment',param.classComment,0,-1 )}						
						
              </p>
			
			 <p id="inputComment_formp">
              <label><%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_INPUT_COMMENT)%></label>
${my:input('CmsInputTable','inputComment',param.inputComment,0,-1 )}						
						
              </p>
			
			 <p id="inputType_formp">
              <label><%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_INPUT_TYPE)%></label>
${my:input('CmsInputTable','inputType',param.inputType,0,-1 )}						
						
              </p>
			
			 <p id="inputEnName_formp">
              <label><%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_INPUT_EN_NAME)%></label>
${my:input('CmsInputTable','inputEnName',param.inputEnName,0,-1 )}						
						
              </p>
			
			 <p id="inputCnName_formp">
              <label><%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_INPUT_CN_NAME)%></label>
${my:input('CmsInputTable','inputCnName',param.inputCnName,0,-1 )}						
						
              </p>
			
			 <p id="linkClassName_formp">
              <label><%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_LINK_CLASS_NAME)%></label>
${my:input('CmsInputTable','linkClassName',param.linkClassName,0,-1 )}						
						
              </p>
			
			 <p id="linkInputName_formp">
              <label><%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_LINK_INPUT_NAME)%></label>
${my:input('CmsInputTable','linkInputName',param.linkInputName,0,-1 )}						
						
              </p>
			
			 <p id="linkParam_formp">
              <label><%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_LINK_PARAM)%></label>
${my:input('CmsInputTable','linkParam',param.linkParam,0,-1 )}						
						
              </p>
			
			 <p id="inputAddition_formp">
              <label><%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_INPUT_ADDITION)%></label>
${my:input('CmsInputTable','inputAddition',param.inputAddition,0,-1 )}						
						
              </p>
			
				<!-- 
			 <p id="status_formp">
              <label><%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_STATUS)%></label>
${my:input('CmsInputTable','status',param.status,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="addition_formp">
              <label><%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_ADDITION)%></label>
${my:input('CmsInputTable','addition',param.addition,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="createtimelong_formp">
              <label><%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_CREATETIMELONG)%></label>
${my:input('CmsInputTable','createtimelong',param.createtimelong,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="modifytimelong_formp">
              <label><%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_MODIFYTIMELONG)%></label>
${my:input('CmsInputTable','modifytimelong',param.modifytimelong,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="createuser_formp">
              <label><%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_CREATEUSER)%></label>
${my:input('CmsInputTable','createuser',param.createuser,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="modifyuser_formp">
              <label><%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_MODIFYUSER)%></label>
${my:input('CmsInputTable','modifyuser',param.modifyuser,0,-1 )}						
						
              </p>
				-->
			
			 <p id="luceneIndexType_formp">
              <label><%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_LUCENE_INDEX_TYPE)%></label>
${my:input('CmsInputTable','luceneIndexType',param.luceneIndexType,0,-1 )}						
						
              </p>
			
			 <p id="minlength_formp">
              <label><%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_MINLENGTH)%></label>
${my:input('CmsInputTable','minlength',param.minlength,0,-1 )}						
						
              </p>
			
			 <p id="maxlength_formp">
              <label><%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_MAXLENGTH)%></label>
${my:input('CmsInputTable','maxlength',param.maxlength,0,-1 )}						
						
              </p>
			
			 <p id="required_formp">
              <label><%=JSTLTagUtils.getCnname("CmsInputTable",CmsInputTable.ALIAS_REQUIRED)%></label>
${my:input('CmsInputTable','required',param.required,0,-1 )}						
						
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
