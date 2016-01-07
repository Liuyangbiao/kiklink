<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsGroupUser.TABLE_ALIAS);
	Map map = new HashMap();
		map.put("ID", "1");
		//map.put("GROUPID", "1");
		map.put("GROUPNAME", "1");
		//map.put("GROUPPHOTO", "1");
		//map.put("USERID", "1");
		map.put("USERNAME", "1");
		/*
		map.put("PHOTO", "1");
		map.put("USERLEVEL", "1");
		map.put("STATUS", "1");
		map.put("ADDITION", "1");
		map.put("CREATETIMELONG", "1");
		map.put("MODIFYTIMELONG", "1");
		map.put("CREATEUSER", "1");
		map.put("MODIFYUSER", "1");
		*/
	request.setAttribute("showmap", map);
 %>
<c:set var="actionBasePath" value="/kailian/CmsGroupUser" />
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
        <h3><%=JSTLTagUtils.getCnname("CmsGroupUser","table_name")%>列表
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
						<th id="id_000"><span onClick="newsort('<%=CmsGroupUser.ALIAS_ID%>');"><%=JSTLTagUtils.getCnname("CmsGroupUser",CmsGroupUser.ALIAS_ID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="GROUPID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="groupid_000"><span onClick="newsort('<%=CmsGroupUser.ALIAS_GROUPID%>');"><%=JSTLTagUtils.getCnname("CmsGroupUser",CmsGroupUser.ALIAS_GROUPID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="GROUPNAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="groupname_000"><span onClick="newsort('<%=CmsGroupUser.ALIAS_GROUPNAME%>');"><%=JSTLTagUtils.getCnname("CmsGroupUser",CmsGroupUser.ALIAS_GROUPNAME)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="GROUPPHOTO"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="groupphoto_000"><span onClick="newsort('<%=CmsGroupUser.ALIAS_GROUPPHOTO%>');"><%=JSTLTagUtils.getCnname("CmsGroupUser",CmsGroupUser.ALIAS_GROUPPHOTO)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="USERID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="userid_000"><span onClick="newsort('<%=CmsGroupUser.ALIAS_USERID%>');"><%=JSTLTagUtils.getCnname("CmsGroupUser",CmsGroupUser.ALIAS_USERID)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="USERNAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="username_000"><span onClick="newsort('<%=CmsGroupUser.ALIAS_USERNAME%>');"><%=JSTLTagUtils.getCnname("CmsGroupUser",CmsGroupUser.ALIAS_USERNAME)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="PHOTO"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="photo_000"><span onClick="newsort('<%=CmsGroupUser.ALIAS_PHOTO%>');"><%=JSTLTagUtils.getCnname("CmsGroupUser",CmsGroupUser.ALIAS_PHOTO)%></span></th>
					</c:if>
			
				
			
                
                	<c:set var="tt" value="USERLEVEL"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="userlevel_000"><span onClick="newsort('<%=CmsGroupUser.ALIAS_USERLEVEL%>');"><%=JSTLTagUtils.getCnname("CmsGroupUser",CmsGroupUser.ALIAS_USERLEVEL)%></span></th>
					</c:if>
			
				<!-- 
				
			
                
                	<c:set var="tt" value="STATUS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="status_000"><span onclick="newsort('<%=CmsGroupUser.ALIAS_STATUS%>');"><%=JSTLTagUtils.getCnname("CmsGroupUser",CmsGroupUser.ALIAS_STATUS)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="ADDITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="addition_000"><span onclick="newsort('<%=CmsGroupUser.ALIAS_ADDITION%>');"><%=JSTLTagUtils.getCnname("CmsGroupUser",CmsGroupUser.ALIAS_ADDITION)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="CREATETIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="createtimelong_000"><span onclick="newsort('<%=CmsGroupUser.ALIAS_CREATETIMELONG%>');"><%=JSTLTagUtils.getCnname("CmsGroupUser",CmsGroupUser.ALIAS_CREATETIMELONG)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="MODIFYTIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="modifytimelong_000"><span onclick="newsort('<%=CmsGroupUser.ALIAS_MODIFYTIMELONG%>');"><%=JSTLTagUtils.getCnname("CmsGroupUser",CmsGroupUser.ALIAS_MODIFYTIMELONG)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="CREATEUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="createuser_000"><span onclick="newsort('<%=CmsGroupUser.ALIAS_CREATEUSER%>');"><%=JSTLTagUtils.getCnname("CmsGroupUser",CmsGroupUser.ALIAS_CREATEUSER)%></span></th>
					</c:if>
				-->	
			
				<!-- 
				
			
                
                	<c:set var="tt" value="MODIFYUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
						<th id="modifyuser_000"><span onclick="newsort('<%=CmsGroupUser.ALIAS_MODIFYUSER%>');"><%=JSTLTagUtils.getCnname("CmsGroupUser",CmsGroupUser.ALIAS_MODIFYUSER)%></span></th>
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
				
                	<c:set var="tt" value="GROUPID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="groupid_${v.id}" class="td123 groupidTd">
${my:showcont('CmsGroupUser','groupid',v.groupid,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="GROUPNAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="groupname_${v.id}" class="td123 groupnameTd">
${my:showcont('CmsGroupUser','groupname',v.groupname,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="GROUPPHOTO"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="groupphoto_${v.id}" class="td123 groupphotoTd">
${my:showcont('CmsGroupUser','groupphoto',v.groupphoto,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="USERID"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="userid_${v.id}" class="td123 useridTd">
${my:showcont('CmsGroupUser','userid',v.userid,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="USERNAME"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="username_${v.id}" class="td123 usernameTd">
${my:showcont('CmsGroupUser','username',v.username,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="PHOTO"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="photo_${v.id}" class="td123 photoTd">
${my:showcont('CmsGroupUser','photo',v.photo,0 )}							</td>
					</c:if>
				
                	<c:set var="tt" value="USERLEVEL"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="userlevel_${v.id}" class="td123 userlevelTd">
${my:showcont('CmsGroupUser','userlevel',v.userlevel,0 )}							</td>
					</c:if>
				
				<!-- 
                	<c:set var="tt" value="STATUS"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="status_${v.id}" class="td123 statusTd">
${my:showcont('CmsGroupUser','status',v.status,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="ADDITION"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="addition_${v.id}" class="td123 additionTd">
${my:showcont('CmsGroupUser','addition',v.addition,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="CREATETIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createtimelong_${v.id}" class="td123 createtimelongTd">
${my:showcont('CmsGroupUser','createtimelong',v.createtimelong,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="MODIFYTIMELONG"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="modifytimelong_${v.id}" class="td123 modifytimelongTd">
${my:showcont('CmsGroupUser','modifytimelong',v.modifytimelong,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="CREATEUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="createuser_${v.id}" class="td123 createuserTd">
${my:showcont('CmsGroupUser','createuser',v.createuser,0 )}							</td>
					</c:if>
				
				--> 
				<!-- 
                	<c:set var="tt" value="MODIFYUSER"></c:set>
                	<c:if test="${tt ne ttid and tt ne ttcreator and tt ne ttdeleted and showmap[tt] ne null}">
							<td id="modifyuser_${v.id}" class="td123 modifyuserTd">
${my:showcont('CmsGroupUser','modifyuser',v.modifyuser,0 )}							</td>
					</c:if>
				
				--> 
                
                <td id="operate_${v.id}" class="operate111">
                  <!-- Icons-->
             	<c:choose>
        	<c:when test="${param.fromiframe eq null or param.fromiframe eq ''}">
        		<!--
            	<a class="xinzeng111" href="${ctx}/${actionBasePath}/create.do" title="新增"><img src="${ctx}/admin/resources/images/icons/pencil.png" alt="新增" /></a>
                 -->
                  <a href="#" onClick="if(confirm('您确定要删除这条数据吗？')) window.location.href='${ctx}/${actionBasePath}/delete.do?items=${v.id}';" title="删除"><img src="${ctx}/admin/resources/images/icons/cross.png" alt="删除" /></a>
                  <a class="iframe" href="${ctx}/${actionBasePath}/edit.do?id=${v.id}" title="修改"><img src="${ctx}/admin/resources/images/icons/hammer_screwdriver.png" alt="修改" /></a> 
${my:input('CmsGroupUser','list_iframe',v.id,-1,0 )}${my:input('CmsGroupUser','list_blank',v.id,-1,0 )}
           
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
              <label><%=JSTLTagUtils.getCnname("CmsGroupUser",CmsGroupUser.ALIAS_ID)%></label>
${my:input('CmsGroupUser','id',param.id,0,-1 )}						
						
              </p>
			
			 <p id="groupid_formp">
              <label><%=JSTLTagUtils.getCnname("CmsGroupUser",CmsGroupUser.ALIAS_GROUPID)%></label>
${my:input('CmsGroupUser','groupid',param.groupid,0,-1 )}						
						
              </p>
			
			 <p id="groupname_formp">
              <label><%=JSTLTagUtils.getCnname("CmsGroupUser",CmsGroupUser.ALIAS_GROUPNAME)%></label>
${my:input('CmsGroupUser','groupname',param.groupname,0,-1 )}						
						
              </p>
			
			 <p id="groupphoto_formp">
              <label><%=JSTLTagUtils.getCnname("CmsGroupUser",CmsGroupUser.ALIAS_GROUPPHOTO)%></label>
${my:input('CmsGroupUser','groupphoto',param.groupphoto,0,-1 )}						
						
              </p>
			
			 <p id="userid_formp">
              <label><%=JSTLTagUtils.getCnname("CmsGroupUser",CmsGroupUser.ALIAS_USERID)%></label>
${my:input('CmsGroupUser','userid',param.userid,0,-1 )}						
						
              </p>
			
			 <p id="username_formp">
              <label><%=JSTLTagUtils.getCnname("CmsGroupUser",CmsGroupUser.ALIAS_USERNAME)%></label>
${my:input('CmsGroupUser','username',param.username,0,-1 )}						
						
              </p>
			
			 <p id="photo_formp">
              <label><%=JSTLTagUtils.getCnname("CmsGroupUser",CmsGroupUser.ALIAS_PHOTO)%></label>
${my:input('CmsGroupUser','photo',param.photo,0,-1 )}						
						
              </p>
			
			 <p id="userlevel_formp">
              <label><%=JSTLTagUtils.getCnname("CmsGroupUser",CmsGroupUser.ALIAS_USERLEVEL)%></label>
${my:input('CmsGroupUser','userlevel',param.userlevel,0,-1 )}						
						
              </p>
			
				<!-- 
			 <p id="status_formp">
              <label><%=JSTLTagUtils.getCnname("CmsGroupUser",CmsGroupUser.ALIAS_STATUS)%></label>
${my:input('CmsGroupUser','status',param.status,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="addition_formp">
              <label><%=JSTLTagUtils.getCnname("CmsGroupUser",CmsGroupUser.ALIAS_ADDITION)%></label>
${my:input('CmsGroupUser','addition',param.addition,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="createtimelong_formp">
              <label><%=JSTLTagUtils.getCnname("CmsGroupUser",CmsGroupUser.ALIAS_CREATETIMELONG)%></label>
${my:input('CmsGroupUser','createtimelong',param.createtimelong,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="modifytimelong_formp">
              <label><%=JSTLTagUtils.getCnname("CmsGroupUser",CmsGroupUser.ALIAS_MODIFYTIMELONG)%></label>
${my:input('CmsGroupUser','modifytimelong',param.modifytimelong,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="createuser_formp">
              <label><%=JSTLTagUtils.getCnname("CmsGroupUser",CmsGroupUser.ALIAS_CREATEUSER)%></label>
${my:input('CmsGroupUser','createuser',param.createuser,0,-1 )}						
						
              </p>
				-->
			
				<!-- 
			 <p id="modifyuser_formp">
              <label><%=JSTLTagUtils.getCnname("CmsGroupUser",CmsGroupUser.ALIAS_MODIFYUSER)%></label>
${my:input('CmsGroupUser','modifyuser',param.modifyuser,0,-1 )}						
						
              </p>
				-->
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
