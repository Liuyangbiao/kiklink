<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsAdminGroup.TABLE_ALIAS);
	Map map = new HashMap();
		map.put("ID", "1");
		map.put("GROUP_NAME", "1");
		map.put("RIGHT_LEVEL_ID", "1");
		map.put("RIGHT_CHANNEL_ID", "1");
		map.put("USER_COUNT", "1");
		map.put("STATUS", "1");
		map.put("ADDITION", "1");
		map.put("CREATETIMELONG", "1");
		map.put("MODIFYTIMELONG", "1");
		map.put("CREATEUSER", "1");
		map.put("MODIFYUSER", "1");
	request.setAttribute("showmap", map);
 %>
<c:set var="actionBasePath" value="/kailian/CmsAdminGroup" />
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
        <h3><%=JSTLTagUtils.getCnname("CmsAdminGroup","table_name")%>列表
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
						<th id="id_000"><span onclick="newsort('<%=CmsAdminGroup.ALIAS_ID%>');"><%=JSTLTagUtils.getCnname("CmsAdminGroup",CmsAdminGroup.ALIAS_ID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="GROUP_NAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="groupName_000"><span onclick="newsort('<%=CmsAdminGroup.ALIAS_GROUP_NAME%>');"><%=JSTLTagUtils.getCnname("CmsAdminGroup",CmsAdminGroup.ALIAS_GROUP_NAME)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="RIGHT_LEVEL_ID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="rightLevelId_000"><span onclick="newsort('<%=CmsAdminGroup.ALIAS_RIGHT_LEVEL_ID%>');"><%=JSTLTagUtils.getCnname("CmsAdminGroup",CmsAdminGroup.ALIAS_RIGHT_LEVEL_ID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="RIGHT_CHANNEL_ID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="rightChannelId_000"><span onclick="newsort('<%=CmsAdminGroup.ALIAS_RIGHT_CHANNEL_ID%>');"><%=JSTLTagUtils.getCnname("CmsAdminGroup",CmsAdminGroup.ALIAS_RIGHT_CHANNEL_ID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="USER_COUNT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="userCount_000"><span onclick="newsort('<%=CmsAdminGroup.ALIAS_USER_COUNT%>');"><%=JSTLTagUtils.getCnname("CmsAdminGroup",CmsAdminGroup.ALIAS_USER_COUNT)%></span></th>
					</c:if>
			
				<!-- 
				
			
                
                	<c:set var="tt" value="STATUS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="status_000"><span onclick="newsort('<%=CmsAdminGroup.ALIAS_STATUS%>');"><%=JSTLTagUtils.getCnname("CmsAdminGroup",CmsAdminGroup.ALIAS_STATUS)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="ADDITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="addition_000"><span onclick="newsort('<%=CmsAdminGroup.ALIAS_ADDITION%>');"><%=JSTLTagUtils.getCnname("CmsAdminGroup",CmsAdminGroup.ALIAS_ADDITION)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="CREATETIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="createtimelong_000"><span onclick="newsort('<%=CmsAdminGroup.ALIAS_CREATETIMELONG%>');"><%=JSTLTagUtils.getCnname("CmsAdminGroup",CmsAdminGroup.ALIAS_CREATETIMELONG)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="MODIFYTIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="modifytimelong_000"><span onclick="newsort('<%=CmsAdminGroup.ALIAS_MODIFYTIMELONG%>');"><%=JSTLTagUtils.getCnname("CmsAdminGroup",CmsAdminGroup.ALIAS_MODIFYTIMELONG)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="CREATEUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="createuser_000"><span onclick="newsort('<%=CmsAdminGroup.ALIAS_CREATEUSER%>');"><%=JSTLTagUtils.getCnname("CmsAdminGroup",CmsAdminGroup.ALIAS_CREATEUSER)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="MODIFYUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="modifyuser_000"><span onclick="newsort('<%=CmsAdminGroup.ALIAS_MODIFYUSER%>');"><%=JSTLTagUtils.getCnname("CmsAdminGroup",CmsAdminGroup.ALIAS_MODIFYUSER)%></span></th>
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
				
                	<c:set var="tt" value="GROUP_NAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="groupName_${v.id}" class="td123 groupNameTd">
${my:showcont('CmsAdminGroup','groupName',v.groupName,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="RIGHT_LEVEL_ID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="rightLevelId_${v.id}" class="td123 rightLevelIdTd">
${my:showcont('CmsAdminGroup','rightLevelId',v.rightLevelId,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="RIGHT_CHANNEL_ID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="rightChannelId_${v.id}" class="td123 rightChannelIdTd">
${my:showcont('CmsAdminGroup','rightChannelId',v.rightChannelId,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="USER_COUNT"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="userCount_${v.id}" class="td123 userCountTd">
${my:showcont('CmsAdminGroup','userCount',v.userCount,0 )}							</td>
					</c:if>
				
				<!-- 
                	<c:set var="tt" value="STATUS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="status_${v.id}" class="td123 statusTd">
${my:showcont('CmsAdminGroup','status',v.status,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="ADDITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="addition_${v.id}" class="td123 additionTd">
${my:showcont('CmsAdminGroup','addition',v.addition,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="CREATETIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createtimelong_${v.id}" class="td123 createtimelongTd">
${my:showcont('CmsAdminGroup','createtimelong',v.createtimelong,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="MODIFYTIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="modifytimelong_${v.id}" class="td123 modifytimelongTd">
${my:showcont('CmsAdminGroup','modifytimelong',v.modifytimelong,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="CREATEUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createuser_${v.id}" class="td123 createuserTd">
${my:showcont('CmsAdminGroup','createuser',v.createuser,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="MODIFYUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="modifyuser_${v.id}" class="td123 modifyuserTd">
${my:showcont('CmsAdminGroup','modifyuser',v.modifyuser,0 )}							</td>
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
${my:input('CmsAdminGroup','list_iframe',v.id,-1,0 )}${my:input('CmsAdminGroup','list_blank',v.id,-1,0 )}
&nbsp;
<!--
<a class="button iframe" href="${ctx}/kailian/CmsRightTable/allrights.jsp?addition=${v.addition}">权限列表</a>
-->           
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
              <label><%=JSTLTagUtils.getCnname("CmsAdminGroup",CmsAdminGroup.ALIAS_ID)%></label>
${my:input('CmsAdminGroup','id',param.id,0,-1 )}						
						
              </p>
			
			 <p id="groupName_formp">
              <label><%=JSTLTagUtils.getCnname("CmsAdminGroup",CmsAdminGroup.ALIAS_GROUP_NAME)%></label>
${my:input('CmsAdminGroup','groupName',param.groupName,0,-1 )}						
						
              </p>
			
			 <p id="rightLevelId_formp">
              <label><%=JSTLTagUtils.getCnname("CmsAdminGroup",CmsAdminGroup.ALIAS_RIGHT_LEVEL_ID)%></label>
${my:input('CmsAdminGroup','rightLevelId',param.rightLevelId,0,-1 )}						
						
              </p>
			
			 <p id="rightChannelId_formp">
              <label><%=JSTLTagUtils.getCnname("CmsAdminGroup",CmsAdminGroup.ALIAS_RIGHT_CHANNEL_ID)%></label>
${my:input('CmsAdminGroup','rightChannelId',param.rightChannelId,0,-1 )}						
						
              </p>
			
			 <p id="userCount_formp">
              <label><%=JSTLTagUtils.getCnname("CmsAdminGroup",CmsAdminGroup.ALIAS_USER_COUNT)%></label>
${my:input('CmsAdminGroup','userCount',param.userCount,0,-1 )}						
						
              </p>
			
				<!-- 
			 <p id="status_formp">
              <label><%=JSTLTagUtils.getCnname("CmsAdminGroup",CmsAdminGroup.ALIAS_STATUS)%></label>
${my:input('CmsAdminGroup','status',param.status,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="addition_formp">
              <label><%=JSTLTagUtils.getCnname("CmsAdminGroup",CmsAdminGroup.ALIAS_ADDITION)%></label>
${my:input('CmsAdminGroup','addition',param.addition,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="createtimelong_formp">
              <label><%=JSTLTagUtils.getCnname("CmsAdminGroup",CmsAdminGroup.ALIAS_CREATETIMELONG)%></label>
${my:input('CmsAdminGroup','createtimelong',param.createtimelong,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="modifytimelong_formp">
              <label><%=JSTLTagUtils.getCnname("CmsAdminGroup",CmsAdminGroup.ALIAS_MODIFYTIMELONG)%></label>
${my:input('CmsAdminGroup','modifytimelong',param.modifytimelong,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="createuser_formp">
              <label><%=JSTLTagUtils.getCnname("CmsAdminGroup",CmsAdminGroup.ALIAS_CREATEUSER)%></label>
${my:input('CmsAdminGroup','createuser',param.createuser,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="modifyuser_formp">
              <label><%=JSTLTagUtils.getCnname("CmsAdminGroup",CmsAdminGroup.ALIAS_MODIFYUSER)%></label>
${my:input('CmsAdminGroup','modifyuser',param.modifyuser,0,-1 )}						
						
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
